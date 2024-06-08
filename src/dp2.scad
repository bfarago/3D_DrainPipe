// adapter between 41mm (1 1/2") BSP thread and 45mm (1 3/4") straight fitting

include <threads.scad>
// Circular model division max
maxplane=180;
// Solid body diameter outer
sdia = 42.2;
// Height 1
hgt = 23.0;
// Chamfer (mmm)
chamfer = 0.8;
// extra tolerance for threads, also compensate for ABS/resin shrink
tol = 0.35; 
// 1 1/2" BSP aka. G48 ISO thread
bsptpi = 11;
// inches
bspmajor = 1.8820;
// Top thread inner diameter (mm)
top_thread_diameter = 41;
// Bottom thread outer diameter (mm)
bottom_thread_diameter = 45.65;
// Top thread length (mm)
top_thread_length = 10;
// Bottom thread length (mm)
bottom_thread_length = 10;
// Hand grip diameter (mm)
grip_diameter = 48;
// Hand grip length (mm)
grip_height = 7;
// Hand grip offset on body (mm)
grip_offset = 20;
// Technical offset, through-hole (mm)
d = 0.1;
// Total height (hgt+grip_height, mm)
tothgt = 34;

difference () {
    union () {
        // Middle part
        cylinder(d=sdia, h=tothgt - chamfer, $fn=maxplane);
        translate([0,0,hgt-chamfer]) {
            cylinder(d1=sdia, d2=sdia-2*chamfer, h=chamfer, $fn=180);
        }
        translate([0,0,grip_offset]) {
            cylinder(d=grip_diameter, h=grip_height, $fn=6);
        }
        // Bottom outer thread
        english_thread (diameter=bottom_thread_diameter/25.4+2*tol/25.4, threads_per_inch=bsptpi, length=bottom_thread_length/25.4, internal=false);
    }
    // Top inner thread
    translate([0,0,tothgt - top_thread_length]) {
        english_thread (diameter=top_thread_diameter/25.4+2*tol/25.4, threads_per_inch=bsptpi, length=top_thread_length/25.4, internal=true);
    }
    
    // Through-hole in the middle, to be void like a pipe.
    translate([0,0,-d]) {
        cylinder(d=top_thread_diameter - 3*tol, h=tothgt + d, $fn=maxplane);
    } 
}