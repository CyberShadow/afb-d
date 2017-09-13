/* $Id: gears.d,v 1.2 2005/04/24 10:29:31 afb Exp $ */

/*
 * 3-D gear wheels.  This program is in the public domain.
 *
 * Command line options:
 *    -info      print GL implementation information
 *
 *
 * Brian Paul
 */

/* Conversion to GLUT by Mark J. Kilgard */

/*
 * $Log: gears.d,v $
 * Revision 1.2  2005/04/24 10:29:31  afb
 * glutInit for D
 *
 * Revision 1.1.1.2  2000/11/18 10:41:43  sven
 * still working for the initial check in
 *
 * Revision 1.1.1.1  2000/11/18 06:54:01  sven
 * Initial import into CVS.
 * Version 2.5.0.0 beta 1
 *
 * Revision 1.2  1999/10/21 16:39:06  brianp
 * added -info command line option
 *
 * Revision 1.1.1.1  1999/08/19 00:55:40  jtg
 * Imported sources
 *
 * Revision 3.2  1999/06/03 17:07:36  brianp
 * an extra quad was being drawn in front and back faces
 *
 * Revision 3.1  1998/11/03 02:49:10  brianp
 * added fps output
 *
 * Revision 3.0  1998/02/14 18:42:29  brianp
 * initial rev
 *
 */


import std.math;
import std.file;
import std.string;

import opengl.gl;
import opengl.glut;

static GLint T0 = 0, T1 = 0;
static GLint Frames = 0;


/**

  Draw a gear wheel.  You'll probably want to call this function when
  building a display list since we do a lot of trig here.
 
  Input:  inner_radius - radius of hole at center
          outer_radius - radius at center of teeth
          width - width of gear
          teeth - number of teeth
          tooth_depth - depth of tooth

 **/

static void
gear(GLfloat inner_radius, GLfloat outer_radius, GLfloat width,
  GLint teeth, GLfloat tooth_depth)
{
  GLint i;
  GLfloat r0, r1, r2;
  GLfloat angle, da;
  GLfloat u, v, len;

  r0 = inner_radius;
  r1 = outer_radius - tooth_depth / 2.0;
  r2 = outer_radius + tooth_depth / 2.0;

  da = 2.0 * PI / teeth / 4.0;

  glShadeModel(GL_FLAT);

  glNormal3f(0.0, 0.0, 1.0);

  /* draw front face */
  glBegin(GL_QUAD_STRIP);
  for (i = 0; i <= teeth; i++) {
    angle = i * 2.0 * PI / teeth;
    glVertex3f(r0 * cos(angle), r0 * sin(angle), width * 0.5);
    glVertex3f(r1 * cos(angle), r1 * sin(angle), width * 0.5);
    if (i < teeth) {
      glVertex3f(r0 * cos(angle), r0 * sin(angle), width * 0.5);
      glVertex3f(r1 * cos(angle + 3 * da), r1 * sin(angle + 3 * da), width * 0.5);
    }
  }
  glEnd();

  /* draw front sides of teeth */
  glBegin(GL_QUADS);
  da = 2.0 * PI / teeth / 4.0;
  for (i = 0; i < teeth; i++) {
    angle = i * 2.0 * PI / teeth;

    glVertex3f(r1 * cos(angle), r1 * sin(angle), width * 0.5);
    glVertex3f(r2 * cos(angle + da), r2 * sin(angle + da), width * 0.5);
    glVertex3f(r2 * cos(angle + 2 * da), r2 * sin(angle + 2 * da), width * 0.5);
    glVertex3f(r1 * cos(angle + 3 * da), r1 * sin(angle + 3 * da), width * 0.5);
  }
  glEnd();

  glNormal3f(0.0, 0.0, -1.0);

  /* draw back face */
  glBegin(GL_QUAD_STRIP);
  for (i = 0; i <= teeth; i++) {
    angle = i * 2.0 * PI / teeth;
    glVertex3f(r1 * cos(angle), r1 * sin(angle), -width * 0.5);
    glVertex3f(r0 * cos(angle), r0 * sin(angle), -width * 0.5);
    if (i < teeth) {
      glVertex3f(r1 * cos(angle + 3 * da), r1 * sin(angle + 3 * da), -width * 0.5);
      glVertex3f(r0 * cos(angle), r0 * sin(angle), -width * 0.5);
    }
  }
  glEnd();

  /* draw back sides of teeth */
  glBegin(GL_QUADS);
  da = 2.0 * PI / teeth / 4.0;
  for (i = 0; i < teeth; i++) {
    angle = i * 2.0 * PI / teeth;

    glVertex3f(r1 * cos(angle + 3 * da), r1 * sin(angle + 3 * da), -width * 0.5);
    glVertex3f(r2 * cos(angle + 2 * da), r2 * sin(angle + 2 * da), -width * 0.5);
    glVertex3f(r2 * cos(angle + da), r2 * sin(angle + da), -width * 0.5);
    glVertex3f(r1 * cos(angle), r1 * sin(angle), -width * 0.5);
  }
  glEnd();

  /* draw outward faces of teeth */
  glBegin(GL_QUAD_STRIP);
  for (i = 0; i < teeth; i++) {
    angle = i * 2.0 * PI / teeth;

    glVertex3f(r1 * cos(angle), r1 * sin(angle), width * 0.5);
    glVertex3f(r1 * cos(angle), r1 * sin(angle), -width * 0.5);
    u = r2 * cos(angle + da) - r1 * cos(angle);
    v = r2 * sin(angle + da) - r1 * sin(angle);
    len = sqrt(u * u + v * v);
    u /= len;
    v /= len;
    glNormal3f(v, -u, 0.0);
    glVertex3f(r2 * cos(angle + da), r2 * sin(angle + da), width * 0.5);
    glVertex3f(r2 * cos(angle + da), r2 * sin(angle + da), -width * 0.5);
    glNormal3f(cos(angle), sin(angle), 0.0);
    glVertex3f(r2 * cos(angle + 2 * da), r2 * sin(angle + 2 * da), width * 0.5);
    glVertex3f(r2 * cos(angle + 2 * da), r2 * sin(angle + 2 * da), -width * 0.5);
    u = r1 * cos(angle + 3 * da) - r2 * cos(angle + 2 * da);
    v = r1 * sin(angle + 3 * da) - r2 * sin(angle + 2 * da);
    glNormal3f(v, -u, 0.0);
    glVertex3f(r1 * cos(angle + 3 * da), r1 * sin(angle + 3 * da), width * 0.5);
    glVertex3f(r1 * cos(angle + 3 * da), r1 * sin(angle + 3 * da), -width * 0.5);
    glNormal3f(cos(angle), sin(angle), 0.0);
  }

  glVertex3f(r1 * cos(0), r1 * sin(0), width * 0.5);
  glVertex3f(r1 * cos(0), r1 * sin(0), -width * 0.5);

  glEnd();

  glShadeModel(GL_SMOOTH);

  /* draw inside radius cylinder */
  glBegin(GL_QUAD_STRIP);
  for (i = 0; i <= teeth; i++) {
    angle = i * 2.0 * PI / teeth;
    glNormal3f(-cos(angle), -sin(angle), 0.0);
    glVertex3f(r0 * cos(angle), r0 * sin(angle), -width * 0.5);
    glVertex3f(r0 * cos(angle), r0 * sin(angle), width * 0.5);
  }
  glEnd();

}

static GLfloat view_rotx = 20.0, view_roty = 30.0, view_rotz = 0.0;
static GLint gear1, gear2, gear3;
static GLfloat angle = 0.0;

extern(C) static void
draw()
{
  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

  glPushMatrix();
  glRotatef(view_rotx, 1.0, 0.0, 0.0);
  glRotatef(view_roty, 0.0, 1.0, 0.0);
  glRotatef(view_rotz, 0.0, 0.0, 1.0);

  glPushMatrix();
  glTranslatef(-3.0, -2.0, 0.0);
  glRotatef(angle, 0.0, 0.0, 1.0);
  glCallList(gear1);
  glPopMatrix();

  glPushMatrix();
  glTranslatef(3.1, -2.0, 0.0);
  glRotatef(-2.0 * angle - 9.0, 0.0, 0.0, 1.0);
  glCallList(gear2);
  glPopMatrix();

  glPushMatrix();
  glTranslatef(-3.1, 4.2, 0.0);
  glRotatef(-2.0 * angle - 25.0, 0.0, 0.0, 1.0);
  glCallList(gear3);
  glPopMatrix();

  glPopMatrix();

  glutSwapBuffers();

  Frames++;
  {
     GLint t = glutGet(GLUT_ELAPSED_TIME);
     if (t - T0 >= 5000) {
        GLfloat seconds = (t - T0) / 1000.0;
        GLfloat fps = Frames / seconds;
        printf("%d frames in %g seconds = %g FPS\n", Frames, seconds, fps);
        T0 = t;
        Frames = 0;
     }
  }
}


extern(C) static void
idle()
{
//  angle += 2.0;

  /* use time-based animation */
  GLint t = glutGet(GLUT_ELAPSED_TIME);
  angle += (t - T1) * 0.02;
  T1 = t;

  glutPostRedisplay();
}

/* change view angle, exit upon ESC */
/* ARGSUSED1 */
extern(C) static void
key(ubyte k, int x, int y)
{
  switch (k) {
  case 'z':
    view_rotz += 5.0;
    break;
  case 'Z':
    view_rotz -= 5.0;
    break;
  case 27:  /* Escape */
//    exit(0);
    break;
  default:
    return;
  }
  glutPostRedisplay();
}

/* change view angle */
/* ARGSUSED1 */
extern(C) static void
special(int k, int x, int y)
{
  switch (k) {
  case GLUT_KEY_UP:
    view_rotx += 5.0;
    break;
  case GLUT_KEY_DOWN:
    view_rotx -= 5.0;
    break;
  case GLUT_KEY_LEFT:
    view_roty += 5.0;
    break;
  case GLUT_KEY_RIGHT:
    view_roty -= 5.0;
    break;
  default:
    return;
  }
  glutPostRedisplay();
}

/* new window size or exposure */
extern(C) static void
reshape(int width, int height)
{
  GLfloat h = cast(GLfloat) height / cast(GLfloat) width;

  glViewport(0, 0, cast(GLint) width, cast(GLint) height);
  glMatrixMode(GL_PROJECTION);
  glLoadIdentity();
  glFrustum(-1.0, 1.0, -h, h, 5.0, 60.0);
  glMatrixMode(GL_MODELVIEW);
  glLoadIdentity();
  glTranslatef(0.0, 0.0, -40.0);
}

static void
init(char[][] args)
{
  static GLfloat pos[4] =
  [5.0, 5.0, 10.0, 0.0];
  static GLfloat red[4] =
  [0.8, 0.1, 0.0, 1.0];
  static GLfloat green[4] =
  [0.0, 0.8, 0.2, 1.0];
  static GLfloat blue[4] =
  [0.2, 0.2, 1.0, 1.0];

  glLightfv(GL_LIGHT0, GL_POSITION, pos);
  glEnable(GL_CULL_FACE);
  glEnable(GL_LIGHTING);
  glEnable(GL_LIGHT0);
  glEnable(GL_DEPTH_TEST);

  /* make the gears */
  gear1 = glGenLists(1);
  glNewList(gear1, GL_COMPILE);
  glMaterialfv(GL_FRONT, GL_AMBIENT_AND_DIFFUSE, red);
  gear(1.0, 4.0, 1.0, 20, 0.7);
  glEndList();

  gear2 = glGenLists(1);
  glNewList(gear2, GL_COMPILE);
  glMaterialfv(GL_FRONT, GL_AMBIENT_AND_DIFFUSE, green);
  gear(0.5, 2.0, 2.0, 10, 0.7);
  glEndList();

  gear3 = glGenLists(1);
  glNewList(gear3, GL_COMPILE);
  glMaterialfv(GL_FRONT, GL_AMBIENT_AND_DIFFUSE, blue);
  gear(1.3, 2.0, 0.5, 10, 0.7);
  glEndList();

  glEnable(GL_NORMALIZE);

  if (args.length > 1 && args[1] == "-info") {
     printf("GL_RENDERER   = %s\n", glGetString(GL_RENDERER));
     printf("GL_VERSION    = %s\n", glGetString(GL_VERSION));
     printf("GL_VENDOR     = %s\n", glGetString(GL_VENDOR));
     printf("GL_EXTENSIONS = %s\n", glGetString(GL_EXTENSIONS));
  }
}

extern(C) void 
visible(int vis)
{
  if (vis == GLUT_VISIBLE)
    glutIdleFunc(&idle);
  else
    glutIdleFunc(null);
}

int main(char[][] args)
{
  glutInit(args);
  glutInitDisplayMode(GLUT_RGB | GLUT_DEPTH | GLUT_DOUBLE);

  glutInitWindowPosition(0, 0);
  glutInitWindowSize(300, 300);
  glutCreateWindow("Gears");
  init(args);

  glutDisplayFunc(&draw);
  glutReshapeFunc(&reshape);
  glutKeyboardFunc(&key);
  glutSpecialFunc(&special);
  glutVisibilityFunc(&visible);

  glutMainLoop();
  return 0;             /* ANSI C requires main to return int. */
}
