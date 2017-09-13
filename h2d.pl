#!/usr/bin/perl

use warnings;
use strict;

# $Id: h2d.pl,v 1.1 2005/04/14 21:50:35 afb Exp $
# Convert C header file (.h) to D import module (.d)
#
# Copyright (c) 2004 Anders F Bjoerklund <afb@algonet.se>
# All Rights Reserved.
#
# This software is provided 'as-is', without any express
# or implied warranty.  In no event will the authors be
# held liable for any damages arising from the use of
# this software.
#
# Permission is granted to anyone to use this software
# for any purpose, including commercial applications,
# and to alter it and redistribute it freely, subject to
# the following restrictions:
#
# 1. The origin of this software must not be
#    misrepresented; you must not claim that you
#    wrote the original software. If you use this
#    software in a product, an acknowledgment in
#    the product documentation would be appreciated
#    but is not required.
#
# 2. Altered source versions must be plainly marked
#    as such, and must not be misrepresented as
#    being the original software.
#
# 3. This notice may not be removed or altered from
#    any source distribution.

my @stack;

my %versions;
my %constants;
my %macros;

my $comment = 0;   # are we in a comment run?

my $line1 = "";    # temporary line storage
my $line2 = "";    # for 1 line look-ahead

while (<>)
{
  $comment = 1 if m@\/\*@;
  $comment = 0 if m@\*\/@;

  # do not mess up huge blocks of comments
  if ($comment)
  {
    print $line2;
	$line2=$line1;
    $line1=$_;
	next;
  }

  s/\(void\)/()/;
  s/\bconst\s+//g;

  # constants
  if(/#define\s+(\w+)(\s+)(0?x?[0-9a-fA-F]+)l?L?(.*)/)
  {
    my $type = "uint";

    if ($versions{$1})
    {
      $_ = "version = $1;\n";
    }
    else
    {
      $constants{$1} = 1;
      $_ = "const $type $1$2= $3;$4\n";
    }
  }

  if(/#define\s+(\w+)(\s+)?(\w+)?/)
  {
    if ($3 && $constants{$3})
    {
        $_ = "alias $3$2$1;\n";
    }
    elsif (!$3)
    {
        $_ = "version = $1;\n";
    }
    else
    {
      $macros{$1} = $3;
      my $match = $&; chomp($match);
      $_ = "/*$match*/\n";
    }
  }

  if(/^\s*#undef\s+(\w+)$/)
  {
    undef $macros{$1};
    next;
  }

  if ($line1 =~ /extern "C" \{/)
  {
    print "extern (C) :\n";

    $line1 = $line2 = "";
    next;
  }

  if ($line2 =~ /^\s*#ifdef __cplusplus/)
  {
    if ($line1 =~ /\}/ && $_ =~ /#endif/)
    {
      $line2 = "";
      next;
    }
    else
    {
      $line2 = "";
    }
  }
 
  s/typedef/alias/;
  s/\-\>/./g;

  # integer types
  s/\blong long\b/long/g;
  s/\blong( int)?\b/int/g;
  s/\bshort( int)?\b/short/g;
  s/\bunsigned char\b/ubyte/g;
  s/\bsigned char\b/byte/g;
  s/unsigned /u/g;
  s/signed //g;

  # Windows cruft
  s/WINGDIAPI //;
  s/APIENTRY //;

  if(/^\s*#include\s+[\"\<](.+?)(\.h)?[\"\>]\s*$/)
  {
    my $inc = $1;
    $inc =~ s/\//\./g;
    $_ = "/* import $inc; */\n";
  }

  if (/#ifdef __cplusplus/)
  {
    push(@stack,'cplusplus');
  }
  elsif (/#ifn?def (\w+)/)
  {
    push(@stack,'version');

    my $ver = $1;
    $ver =~ s/_WIN32/Win32/;
    $versions{$ver} = 1;

    s/#ifdef (\w+)/version ($ver) {/ ;
    s/#ifndef (\w+)/version ($ver) { } else {/;
  }
  elsif (/#if/)
  {
    if (/#if\s+0\b/)
    {
      $_ = "version (none) {\n";
      push(@stack,'version');
    }
    elsif (/#if\s+1\b/)
    {
      $_ = "version (all) {\n";
      push(@stack,'version');
    }
    else
    {
      $_ = "";
      push(@stack,'conditional');
    }
  }

  if (/#else/)
  {
    s/#else/} else {/;
  }
  elsif (/#endif/)
  {
    my $end = pop(@stack);

    s/#endif/}/ if ($end && $end eq 'version');
    s/#endif// unless ($end && $end eq 'version');
  }

  print $line2;
  $line2=$line1;
  $line1=$_;
}

# flush lookahead
print $line1;
print $line2;
