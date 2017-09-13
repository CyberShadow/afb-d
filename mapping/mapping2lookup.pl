#!/usr/bin/perl

use warnings;
use strict;

# Converts a Unicode mapping .TXT,
# into a D lookup source code file
#
# Written by Anders <afb@algonet.se>
# (C) 2004 afb. All Rights Reserved.

my (%mapping,%comment);

for (my $c = 0x00; $c <= 0xFF; $c++)
{
  $mapping{$c} = $c;
}

die "Usage: $0 name < IN.TXT > out.d" if ($#ARGV < 0);
my $module = shift(@ARGV);

my $heading = "";
my $X = "[0-9a-fA-F]";

while (<>)
{
  if ( /^0x($X$X)\s+0?x?($X$X$X$X)?\s+\#\s*(.*)$/ )
  {
    my ($in,$out,$com) = (hex($1), $2 ? hex($2) : 0xFFFF, $3);

    $mapping{$in} = $out;
    $comment{$in} = $com;
  }
  else
  {
    s|#|//|;
    $heading .= $_;
  }
}

print <<__EOF__;
module $module;
__EOF__
print $heading;
print <<__EOF__;
wchar[256] mapping =
[
__EOF__

for (my $c = 0x00; $c <= 0xFF; $c++)
{
  my $m = $mapping{$c};

  print sprintf("/* 0x%02X: */ ",$c);
  print sprintf(" 0x%04X, ",$m) if ($m == 0xFFFF);
  print sprintf("'\\u%04X',",$m) unless ($m == 0xFFFF);

  print " // ". $comment{$c} if $comment{$c};
  print "\n";
}

print <<__EOF__;
];
__EOF__
