---
layout: post
title: Learning Processing.js
location: San Luis Obispo, CA
---

This quarter I have been taking CSC484 at Cal Poly. CSC484 is a class offered
by the computer science department titled User Centered Interaction Design, and
is taught by Dr. Franz Kurfess.

CSC484 changes every time it is taught, mainly due to the fact that
computer interaction is something that is constantly changing. New devices and
designs are being invented daily, which have the possibility to dramatically
change the space.

This quarter, our class is working with Yahoo, developing possible UIs for some
of their internal tools. My team, team hzzah!, has been tasked with making a
workflow management tool. Basically, Yahoo needs a better UI than the current
gigantic table they have for tracking instances of various workflows/processes
that are being enacted by their IT team. To solve this problem, we are trying
to design a few different interfaces. One of these is a circle with spokes to
describe an entire process and all of the instances of that process that
currently exist.

After a little searching, my team member [Reed](http://reedmorse.com/) stumbled
across [Processing.js](http://processingjs.org/).  This little javascript
framework lets you do all kinds of fun HTML5 canvas stuff in a nice abstract
way. Before I walk you through it, I figured I would dump a bunch of it in
front of you.

{% highlight js linenos %}
   <script type="application/processing">
      Line[] lines;
      int count, radius, offsetx, offsety;
      Line lastActive;

      int areaOfTriangle(int x1, int y1, int x2, int y2, int x3, int y3) {
         int a = ((x3*y2)-(x2*y3));
         int b = ((x3*y1)-(x1*y3));
         int c = ((x2*y1)-(x1*y2));
         return a - b + c;
      }

      int negPosZero(int a) {
         if (a == 0) {
            return 0;
         } else {
            return a > 0 ? 1 : -1;
         }
      }

      /**
       * Class for each process instance
       */
      class Line {
         int x1, y1, x2, y2;
         int x3, y3, x4, y4;
         int length;
         int angle;
         int color;
         int boxwidth = 5; // half of the width of the box

         Line (int l, int t) {
            length = l;
            angle = t;
            update();
         }

         void draw() {
            fill(#C4574E);
            quad(x1, y1, x2, y2, x3, y3, x4, y4);
         }

         void debug() {
         }

         boolean isPointInside(int x, int y) {
            int area1 = negPosZero(areaOfTriangle(x, y, x1, y1, x2, y2));
            int area2 = negPosZero(areaOfTriangle(x, y, x2, y2, x3, y3));
            int area3 = negPosZero(areaOfTriangle(x, y, x3, y3, x4, y4));
            int area4 = negPosZero(areaOfTriangle(x, y, x4, y4, x1, y1));

            return ((area1 == area2) && (area1 == area3) && (area1 == area4));  
         }

         void update() {
            if (isPointInside(mouseX, mouseY)) {
               // We are inside. Change colors fire events, etc.
               changed = !(boxwidth != 20);
               boxwidth = 20;
               lastActive = this; 
            } else {
               changed = !(boxwidth != 5);
               boxwidth = 5;
            }

            if (changed) {
               // Calculate everything
               int a = offsetx;
               int b = offsety;
               int r = radius;
               int t = angle;
               int l = length;

               int mx1 = a  + (r *  cos(t));
               int my1 = b  + (r * -sin(t));
               int mx2 = mx1 + (l *  cos(t));
               int my2 = my1 + (l * -sin(t));

               // Slope our center line
               int s = ((my2 - my1) / (mx2 - mx1));

               // slope of perpendicular line
               int ps = ((-1) / s);

               // differences 
               int dx = sqrt(sq(boxwidth) / (1 + sq(ps))) / 2
               int dy = ps * dx

               // Actualy box boundries
               x1 = mx1 + dx;
               y1 = my1 + dy;
               x4 = mx1 - dx;
               y4 = my1 - dy;

               x2 = mx2 + dx;
               y2 = my2 + dy;
               x3 = mx2 - dx;
               y3 = my2 - dy;
               changed = false;
            }
         }
      }

      // Called once on load
      void setup() {
         frameRate(40);  
         size(400, 400);
         stroke(255);
         smooth();
         count = 50;
         lines = new Line[count];

         offsetx = 200;
         offsety = 200;
         radius = 70;

         for (int i = 0; i < count; i++) {
            lines[i] = new Line(random(100), radians(random(360)));
         }
         lastActive = lines[i-1]; // set the initial last active
      }

      // Called the number of frames per second
      void draw() {
         float x1, y1, x2, y2;

         background(255);
         fill(#8C004E);
         noStroke();

         ellipse(offsetx, offsety, radius*2, radius*2);

         stroke(255);
         strokeWeight(1);

         for (int i = 0; i < count; i++) {
            lines[i].update();
            lines[i].draw();
         }

         // Draw the last active bar last so it sits on top of the rest
         lastActive.update();
         lastActive.draw(); 
      }
   </script>
{% endhighlight %}

Cool right? There are some interesting things to notice about this code. First
of all, when the page is loaded, the setup function is called. This function
should in theory instantiate your classes and set things that probably will not
change, like background color.

Next checkout the draw function. This is an interesting function because it is
called every time a frame needs to be rendered, which since we have our frames
per second set at 60, this function is called 60 times every second. This can
present some interesting concurrency problems, because if you loop through a
group of functions that modify similar areas of the page (like write text to a
DOM element) you will quickly notice that they are stomping on each other.

Processing.js works using a cartesian plane, so if you take a look at all of
the functions on the [processing.js reference page](http://processingjs.org/reference), 
most of them are pretty straight forward. For instance, to draw any sort of
quadrilateral, you just need the four points, and processing.js will just draw
it for you.

Finally, once you have your code written, you probably want to be able to
display it one a page. The processing.js package comes with a very nice little
script to insert your processing code into a canvas element. The file is called
init.js in the archive you can download, but I've also included it here, just
in case.

{% highlight js %}
/*
 * This code searches for all the <script type="application/processing" target="canvasid">
 * in your page and loads each script in the target canvas with the proper id.
 * It is useful to smooth the process of adding Processing code in your page and starting
 * the Processing.js engine.
 */

if ( window.addEventListener ) {
   window.addEventListener("load", function() {
      var scripts = document.getElementsByTagName("script");
      
      for ( var i = 0; i < scripts.length; i++ ) {
         if ( scripts[i].type == "application/processing" ) {
            var src = scripts[i].src, canvas = scripts[i].nextSibling;
   
            if ( src && src.indexOf("#") ) {
               canvas = document.getElementById( src.substr( src.indexOf("#") + 1 ) );
            } else {
               while ( canvas && canvas.nodeName.toUpperCase() != "CANVAS" )
                  canvas = canvas.nextSibling;
            }

            if ( canvas ) {
               Processing(canvas, scripts[i].text);
            }
         }
      }
   }, false);
}
{% endhighlight %}

In reality, that's all you need to know. I've found processing.js a really fun
language to code in, because it works well when using mooTools or jquery or any
other javascript framework. Probably my biggest issue is that I've totally
forgotten how to use trigonometry in the years since highschool, so I've spent
a decent amount of time on
[Wikipedia](http://en.wikipedia.org/wiki/Trigonometry) and
[StackOverflow](http://stackoverflow.com/users/1063/icco) re-learning my maths.

Hasta,  
/Nat

