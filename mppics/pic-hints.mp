input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../lectures-ru}
\begin{document}
\scriptsize
etex

filenametemplate "pic-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";

beginfig(29);
save u;
u:=.4cm;

z.a0=(3,.5)*u;
z.a1=(3,0)*u;
z.a2=(4,0)*u;
z.a3=(2,0)*u;
z.a4=(5,0)*u;
z.a5=(1,0)*u;
z.a6=(11,0)*u;
z.a7=(6,0)*u;
z.a8=(10,0)*u;
z.a9=(7,0)*u;
z.a10=(9,0)*u;
z.a11=(8,0)*u;
z.a12=(8,-.3)*u;
z.b=(6,-3)*u;

save p; path p[];
p0=z.a0..z.a1..z.a2..z.a3..z.a4..z.a5..z.b..z.a6..z.a7..z.a8..z.a9..z.a10..z.a11..z.a12;

draw p0;
draw ddline(z.a5, z.a6)(0.1, 0.1) pensemibold;

whitelabel.bot(btex $p_1$ etex, z.a1);
whitelabel.top(btex $p_2$ etex, z.a2+(0,1));
whitelabel.bot(btex $p_3$ etex, z.a3);
whitelabel.top(btex $p_4$ etex, z.a4+(0,1));
whitelabel.bot(btex $p_5$ etex, z.a5);
whitelabel.top(btex $p_6$ etex, z.a6+(0,1));
whitelabel.bot(btex $p_7$ etex, z.a7);
whitelabel.top(btex $p_8$ etex, z.a8+(0,1));
whitelabel.bot(btex $p_9$ etex, z.a9);
whitelabel.top(btex $p_{10}$ etex, z.a10+(0,1));
whitelabel.bot(btex $p_{11}$ etex, z.a11);

dOt z.a1,z.a2,z.a3,z.a4,z.a5,z.a6,z.a7,z.a8,z.a9,z.a10,z.a11;
endfig;

beginfig(43)
save u;
u:=.7cm;

z.a=(1,0)*u;

save p; path p[];

p0=circle(origin, z.a);
draw p0;

z.x1=(.3,.4)*u;
z.y1=z.a rotated (90+angle z.x1);

p1=(-z.y1)..(z.x1-z.y1)/sqrt(2)..z.x1..(z.x1+z.y1)/sqrt(2)..z.y1..(-z.x1+z.y1)/sqrt(2)..(-z.x1)..(-z.x1-z.y1)/sqrt(2)..cycle;
draw subpath (0,4) of p1;
draw subpath (4,8) of p1 dashed evenly;

z.x2=(-.3,.3)*u;
z.y2=z.a rotated (90+angle z.x2);

p2=(-z.y2)..(z.x2-z.y2)/sqrt(2)..z.x2..(z.x2+z.y2)/sqrt(2)..z.y2..(-z.x2+z.y2)/sqrt(2)..(-z.x2)..(-z.x2-z.y2)/sqrt(2)..cycle;
draw subpath (0,4) of p2;
draw subpath (4,8) of p2 dashed evenly;

z.x3=(.05,-.3)*u;
z.y3=z.a rotated (90+angle z.x3);

p3=(-z.y3)..(z.x3-z.y3)/sqrt(2)..z.x3..(z.x3+z.y3)/sqrt(2)..z.y3..(-z.x3+z.y3)/sqrt(2)..(-z.x3)..(-z.x3-z.y3)/sqrt(2)..cycle;
draw subpath (0,4) of p3;
draw subpath (4,8) of p3 dashed evenly;

hatchfill
((subpath (0,4) of p1) cutbefore (subpath (0,4) of p3) cutafter (subpath (0,4) of p2))
--
((subpath (0,4) of p2) cutbefore (subpath (0,4) of p1) cutafter (subpath (0,4) of p3))
--
((subpath (0,4) of p3) cutbefore (subpath (0,4) of p2) cutafter (subpath (0,4) of p1))
--cycle
 withcolor (57, 1.5mm, -.5bp);

whitelabel(btex $\Delta$ etex, origin);
endfig;

beginfig(226);
save u,a,n;
u:=1.8cm;
a:=60;
n:=5;

z0=origin;
z1=(1,0)*u;
z2=z1+(z1 rotated a);
z3=z2+(z1 rotated -a);
z4=z3+z1;
z.b=z4 rotated -60;
x.r=abs(z1)/abs(z4);

z.shift=(3.4,0)*u;
z.extra=(1,0)*u;

save p;
path p[];

p0=z0--z3;

for i = 1 upto n: 
p[i]=(p[i-1] scaled x.r)--(p[i-1] scaled x.r rotated a shifted z1)--(p[i-1] scaled x.r  rotated -a shifted z2)--(p[i-1] scaled x.r  shifted z3); 
endfor

draw p[n];

Dot 
z0,z1,z2,z3,z4,
point 4 of p2,
point 10 of p2,
point 12 of p2;

label.lft(btex $0$ etex, z0);
label.rt(btex $1$ etex, z4);
label.top(btex $\tfrac12$ etex, z2);
label.lrt(btex $\tfrac14$ etex, z1);
label.llft(btex $\tfrac34$ etex, z3);
label.top(btex $\tfrac18$ etex, point 4 of p2);
label.ulft(btex $\tfrac38$ etex, point 12 of p2);
label.rt(btex $\tfrac7{16}$ etex, point 10 of p2);
endfig;

beginfig(255)
save u,p;
path p[];
u:=1cm;

z0=origin;
z1=(-1,.5)*u;
z2=(0,1)*u;
z3=(1,.7)*u;
z4=(0,.3)*u;

p1= z0{left}..z1{up}..z2{right}..z3{down}..{left}z4;
draw subpath (0,2.7) of p1;
draw subpath (2.7,3.3) of p1 dashed evenly;
draw subpath (3.3,4) of p1;

dOt z0,z4;

label.top (btex $\gamma_1$ etex, z2);
endfig;

beginfig(257)
save u,p;
path p[];
u:=1cm;

z.a=(0,0)*u;
z.m=(3,-1)*u;
z.v=unitvector(0,1);
z.b=(2,0)*u;

p1=z.a{-2,-.7}...z.m{z.v}...{-2,.7}z.b;

z.bb=z.m+(arclength subpath (1,2) of p1)*z.v;

draw p1 pensemibold;
draw z.m--z.bb pensemibold;
draw z.b--z.a--z.bb dashed evenly;

dOt z.a,z.b,z.bb;

label.top(btex $\gamma_2(a)$ etex, z.a);
label.bot(btex $\gamma_1(a)$ etex, z.a);
label.bot(btex $\gamma_1(b)$ etex, z.b+(-2,0));
label.top(btex $\gamma_2(b)$ etex, z.bb);
endfig;

beginfig(265);
save u,p;
path p[];
u:=.5cm;

z.a0=(0,-1)*u;
z.a1=(-1,0)*u;
z.a2=(0,1)*u;

p0=arc(z.a0,z.a1,z.a2);

for i=-80 step 3 until 90:
draw p0 shifted (i,0);
endfor

clip currentpicture to (-2,-1)*u--(2,-1)*u--(2,1)*u--(-2,1)*u--cycle;

draw (-2,-1)*u--(2,-1)*u;
draw (-2,1)*u--(2,1)*u;
endfig;

beginfig(266);
save u,p;
path p[];
u:=.5cm;

z.a1=(0,-1)*u;
z.a0=(-1,0)*u;
z.a2=(1,0)*u;

p0=ddarc(z.a0,z.a1,z.a2)(30,30);
p1=ddarc(z.a0,z.a1,z.a2)(-90,30);
p2=ddarc(z.a0,z.a1,z.a2)(30,-90);

for i=0 step 3 until 50:
draw p0 shifted (0,i);
endfor

for i=3 step 3 until 50:
draw p1 shifted ((0,i) rotated -120);
endfor

for i=3 step 3 until 50:
draw p2 shifted ((0,i) rotated 120);
endfor

p3=(0,2)*u--(0,2)*u rotated 120--(0,2)*u rotated -120--cycle;
clip currentpicture to p3;

draw p3;
endfig;

beginfig(267);
save u,p;
path p[];
u:=.5cm;

z.a0=(-1,0)*u;
z.a1=(0,1)*u;
z.a2=(1,0)*u;

p0=ddarc(z.a0,z.a1,z.a2)(30,30);
p1=ddarc(z.a2,z.a1,z.a0)(-30,-30) shifted (0,-u);
p3=p0--p1--cycle;

for i=0 step 3 until 20:
draw p0 shifted (0,-i);
endfor

clip currentpicture to p3;
draw p3; 

endfig;

beginfig(268);
save u,p;
path p[];
u:=1cm;

z.x=(-1,0)*u;
z.y=-z.x;


p0=z.x{dir 40}..{dir -40}z.y;
p1=z.y{dir -120}..{dir 120}z.x;

z0=1.4*z.x;
z1=point .5 of p0;
z.d1= direction .5 of p0;
z2=1.5*z.y;
z3=point .4 of p1;
z.d3= direction .4 of p1;

p2=z0...z1{z.d1}...z2...z3{z.d3}...cycle;


hatchfill p0--p1--cycle  withcolor (87, 1.4mm, -.5bp);
draw p0;
draw p1;
draw p2;

dOt z.x,z.y;

label.lft (btex $x$ etex, z.x);
label.rt (btex $y$ etex, z.y);
endfig;

beginfig(269);
save u,p;
path p[];
u:=.1cm;


draw (0,0)*u{1,1}...(9,0)*u{1,-1}...(8,0)*u{1,1}...(17,0)*u{1,-1}...(16,0)*u{1,1}...(25,0)*u{1,-1}...(24,0)*u{1,1}...(33,0)*u{1,-1}...(32,0)*u{1,1}...(41,0)*u{1,-1}...(40,0)*u{1,1}...(49,0)*u{1,-1}...(48,0)*u{1,1}...(57,0)*u{1,-1};

endfig;


beginfig(270);
save u,p;
path p[];
u:=.5cm;

draw 
for i=-1.5 step 0.1 until 1.4:
(i**2,i**3)*u..
endfor
(1.5**2,1.5**3)*u pensemibold;

drawarrow ddline(origin,(1.5**2,0)*u)(.2,.2) penhair;
drawarrow ddline((0,-1.5**3)*u,(0,1.5**3)*u)(0,0) penhair;
endfig;

beginfig(275);
save u,p;
path p[];
u:=1cm;

z.p0=(0,0)*u;
z.p1=(1,0)*u;
z.p2=(1.4,.8)*u;
z.p3=(.6,1.3)*u;
z.p4=(-.3,.9)*u;

draw z.p0--z.p1--z.p2--z.p3--z.p4--cycle penhair;
draw z.p0--z.p2--z.p4--z.p1--z.p3--cycle pensemibold;

dOt z.p0,z.p1,z.p2,z.p3,z.p4;

label.llft (btex $p_{1}$ etex, z.p0);
label.lrt (btex $p_{2}$ etex, z.p1);
label.lft (btex $p_{n}$ etex, z.p4);
label (btex $\dots$ etex rotated angle (z.p3-z.p2), .5[z.p2,z.p3]+(2,3));
endfig;


beginfig(280);
save u,p;
path p[];
u:=.7cm;

z.r=(0,1)*u;

z.a0=z.r rotated 15;
z.b0=z.r rotated -15;
z.b1=z.b0 rotated 120;

z.x=z.r;
z.y=z.x rotated 120;
z.z=z.x rotated -120;

p1= z.a0{-z.a0 rotated 15}..z.b0{z.b0 rotated -15};
p2= z.a0{-z.a0 rotated -15}..z.b1{z.b1 rotated 15};



draw p1 dashed evenly;
draw p1 rotated 120 dashed evenly;
draw p1 rotated -120 dashed evenly;
draw p2;
draw p2 rotated 120;
draw p2 rotated -120;

draw circle(origin,z.r) penhair;

dOt z.x,z.y,z.z,-z.x,-z.y,-z.z;

label.top (btex $x$ etex, z.x);
label.llft (btex $y$ etex, z.y);
label.lrt (btex $z$ etex, z.z);
label.bot (btex $-x$ etex, -z.x);
label.urt (btex $-y$ etex, -z.y);
label.ulft (btex $-z$ etex, -z.z);
endfig;

beginfig(282) 
save u,p;
u:=1.4cm;
path p[];


z.o=origin;
z.x=(.6,.3)*u;
z.b=z.x+(1,0)*u rotated -90;

p1=z.b{(z.x-z.b) zscaled (0,-1)}..{(z.x-z.b) zscaled (0,1)}z.x..z.o;

z.y=point 0.2 of p1;

z.ss=2*z.x;
z.s=z.x+(unitvector(z.x-z.b) zscaled (0,-1))*u;

draw p1 pensemibold;
draw z.o--z.x dashed evenly;
drawarrow z.x--z.s;

draw circle(z.o,1*u);

labelarcsprof(z.ss, z.x, z.s, 10, 18, btex $\alpha$ etex);
label.lft(btex $0$ etex, z.o);
label.bot(btex $\gamma(0)$ etex, z.x);
label.top(btex $\sigma$ etex, point 1.5 of p1);
label.lrt(btex $\tilde\gamma(t_0)$ etex, z.y);
label.rt(btex $\tilde\gamma$ etex, point 0.55 of p1);
label.lrt(btex $\gamma'(0)$ etex, z.s);

fill_angle(z.ss, z.x, z.s, 20);

dOt z.o,z.x,z.y;
endfig;


beginfig(285);
save u,p;
path p[];
u:=.6cm;

z.p=(0,0)*u;
z.pp=(1,.3)*u;
z.q=(8,0)*u;
z.qq=z.q-(1,.5)*u;

z.u=(1.4,0)*u;
z.v=z.u rotated 60;
z.w=z.u rotated 80;

p1=z.p{z.v}...z.pp{right}...z.qq{right}...{z.w}z.q;

draw p1 pensemibold;
draw z.p--z.q;
drawarrow z.p--z.p+z.v;
drawarrow z.q--z.q+z.w;
drawarrow z.pp--z.pp+z.u;
drawarrow z.qq--z.qq+z.u;

dOt z.p,z.q,z.pp,z.qq;

label.lft (btex $p$ etex, z.p);
label.rt (btex $q$ etex, z.q);
label.urt (btex $\vec u$ etex, z.p+z.v);
label.lrt (btex $\vec v$ etex, z.q+z.w);
label.top (btex $\vec w$ etex, z.pp+z.u);
label.bot (btex $\vec w$ etex, z.qq+z.u);

label.top (btex I etex, point .7 of p1);
label.bot (btex II etex, point 1.55 of p1);
whitelabel.top (btex III etex, point 2.4 of p1);

endfig;

beginfig(296);
save u,p,t;
path p[];
u:=1cm;

z[0]=(0,1)*u;
z.k=(1-.01,.07);

for i=1 step 1 until 301:
z[i]=z[i-1] zscaled z.k;
endfor

p0=
for i=0 step 1 until 301:
z[i]..
endfor
origin;

draw subpath (0,90) of p0;
draw subpath (90,120) of p0 dashed evenly;
draw subpath (120,300) of p0;

endfig;

beginfig(305);
save u,p,t;
path p[];
u:=.8cm;

z[0]=(0,1)*u;
z.k=(1-.01,.08);

for i=1 step 1 until 1000:
z[i]=z[i-1] zscaled z.k;
endfor

p0=
for i=0 step 1 until 1000:
z[i]..
endfor
origin;

p1=subpath(20,220) of p0 ... reverse( subpath(0,200) of p0) rotated 90...cycle;

draw p1;

draw circle((-.3,-1)*u,u) penhair;

endfig;

beginfig(308);
save u,p,t;
path p[];
u:=1cm;

z.p=(-.7,.6)*u;
z.q=(.7,-.4)*u;

z.a0=(-.8,1)*u;
z.a3=(1.8,-.4)*u;

z.b0=(-1.7,.7)*u;
z.b3=(.8,-.8)*u;

p1=z.a0..z.p..z.q..z.a3;
p2=z.b0..z.p..z.q..z.b3;

draw p1;
draw p2;
draw subpath(1,2) of p1 penbold;
draw subpath(0,1) of p2 penbold;
draw subpath(2,3) of p2 penbold;

dOt z.p,z.q;


label.llft (btex $p$ etex, z.p);
label.llft (btex $q$ etex, z.q);
label.top (btex $\alpha$ etex, z.b0);
label.top (btex $\beta$ etex, z.a3);
label.urt (btex $\alpha_1$ etex, point 1.5 of p2);
label.llft (btex $\beta_1$ etex, point 1.5 of p1);
endfig;

beginfig(310);
save u,p,t;
path p[];
u:=1cm;

z.p=(-1.4,-.5)*u;
z1=(-1,0)*u;
z2=(1,0)*u;
z.q=(1.4,-.6)*u;

p1=z.p..z1..z2..z.q;

draw subpath (0,1) of p1 pensemibold;
draw subpath (1,2) of p1 dashed evenly pensemibold;
draw (subpath (1,2) of p1 yscaled -1) pensemibold;
draw subpath (2,3) of p1 pensemibold;
draw ddline(z1,z2)(.4,.4);

dOt z.p,z.q;

label.bot (btex $p$ etex, z.p);
label.bot (btex $q$ etex, z.q);
label.top (btex $\alpha$ etex, point 1.5 of p1);
label.bot (btex $\beta$ etex, point 1.5 of p1 yscaled -1);
label.top (btex $\Pi$ etex, 1.3[z1,z2]);
endfig;

beginfig(320);
save u,p,r;
path p[];
u:=.7cm;
r:=3;

draw (-r,0)*u--(0,0)*u--(r,r)*u
penbold;

drawarrow (-r,0)*u--(r,0)*u;
drawarrow (0,-.5)*u--(0,r)*u;

label.bot (btex $y=h(x)$ etex, (.4*r,r)*u);
endfig;

beginfig(321);
save u,p,r;
path p[];
u:=.7cm;
r:=3;

draw (-r,0)*u--(0,0)*u
for i=.1 step .1 until r:
..(i,i/(2**(1/i)))*u
endfor
penbold;

drawarrow (-r,0)*u--(r,0)*u;
drawarrow (0,-.5)*u--(0,r)*u;

label.bot (btex $y=f(x)$ etex, (.4*r,r)*u);
endfig;

beginfig(325);
save u,p,r,eps;
path p[];
u:=.7cm;
r:=3;
eps:=.5;

p0=(-r,0)*u--(-eps,0)*u{right}..tension 3..(0,5*eps)*u{right}..tension 3..(eps,0)*u{right}--(r,0)*u;
draw p0 penbold;

drawarrow (-r,0)*u--(r,0)*u;
drawarrow (0,-.5)*u--(0,r)*u;

label.urt (btex $y=b_\epsilon(x)$ etex, point 2.4 of p0);
endfig;

beginfig(326);
save u,p,r,eps;
path p[];
u:=.7cm;
r:=3;
eps:=.5;

p0=(-r,0)*u--(-eps,0)*u{right}..tension 1.4..(eps,1)*u{right}--(r,1)*u;
draw p0 penbold;

drawarrow (-r,0)*u--(r,0)*u;
drawarrow (0,-.5)*u--(0,r)*u;

label.top (btex $y=\sigma_\epsilon(x)$ etex, point 2.4 of p0);
endfig;

beginfig(474) 
save u,p,k;
path p[];
u:=1cm;
k:=3;

z.a=origin;
z.b=(-2,-1)*u;
z.c=(-1.9,1)*u;
z.bb=(-4.1,-.6)*u;
z.cc=(-4.05,.6)*u;

p0=z.a{(z.b-z.a) rotated 5 }..z.b--z.b{(z.bb-z.b) rotated 5 }..z.bb--z.bb{(z.cc-z.bb) rotated 5 }..z.cc--z.cc{(z.c-z.cc) rotated 5}..z.c--z.c--cycle;
draw p0 pensemibold;

z0= point 0 of p0;
z1= point .5 of p0;
z2= point 1 of p0;
z3= point 2.5 of p0;
z4= point 3 of p0;
z5= point 5 of p0;
z6= point 6.5 of p0;
z7= point 7 of p0;
z8= point 8.5 of p0;

draw z0{dir (180+k*5)}..z2;
draw z0{dir (180+k*3)}..z3;
draw z0{dir (180+k)}..z4;
draw z0{dir (180-k)}..z5;
draw z0{dir (180-k*3)}..z6;
draw z0{dir (180-k*5)}..z7;

dOt z0,z1,z2,z3,z4,z5,z6,z7,z8;

label.rt (btex $v$ etex, z.a);
endfig;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beginfig(750);
save u,p;
path p[];
u:=.8cm;

z.o=(0,-1)*u;
p0=ddline((-1,0)*u,(1,0)*u)(.2,.5);
p1=circle(origin,1*u);
z.p=point .4 of p1;
z.q=whatever[z.o,z.p]=(whatever,0);

draw p1 pensemibold;
draw p0 pensemibold;
drawarrow p0 shifted z.o;
drawarrow ddline((0,-1)*u,(0,1)*u)(.2,.2);

draw ddline(z.o,z.p)(.2,.2);
dOt z.p,z.q, z.o;

label.lrt (btex $0$ etex, z.o);
whitelabel.lrt (btex $(u,v,1)$ etex, z.q);
label.rt (btex $s(u,v)$ etex, z.p);
endfig;

beginfig(1050)
save u,p;
path p[];
u:=.5cm;

z.o=origin;
z.r=(1,0)*u;
p0=circle (z.o,z.r);

z.p=point .5 of p0;
z.q=point 3.2 of p0;

p1= z.p{z.p zscaled (0,1)}..tension .8..z.q{z.q zscaled (0,1)}..tension .8..cycle;
draw p0 dashed evenly;
draw p1;

hatchfill p1  withcolor (87, 1.4mm, -.5bp);

dOt z.o,z.p,z.q;

whitelabel.lft (btex $S$ etex, z.o+(-4,0));
label.urt (btex $p$ etex, z.p);
label.lrt (btex $q$ etex, z.q);
endfig;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beginfig(1182);
save u;
u:=1cm;

z.a0=(-1,6)*u;
z.a1=(0,0)*u;
z.a2=(1,6)*u;

save p; path p[];
p0=z.a0{down}...z.a1{1,-.1}...z.a2{up};
z.x1=point 1.3 of p0;
z.xn=point 1.9 of p0;
z.dots=point 1.6 of p0;
z.q=point .8 of p0;
z.Sigma=point .3 of p0;

draw p0 pensemibold;

draw z.a1--(x.a1,y.a0) dashed evenly;
draw z.a1--z.x1;
draw z.a1--z.xn;
draw z.q--(x.q,y.a0) dashed evenly;
drawarrow z.a1--(z.a1+(0,1)*u);

dOt z.a1, z.xn, z.q, z.x1;

label.bot(btex $p$ etex, z.a1);
label.llft(btex $q$ etex, z.q);
label.rt(btex $x_n$ etex, z.xn);
label.rt(btex $x_1$ etex, z.x1);
label.lft(btex $\Sigma$ etex, z.Sigma);
label.rt(btex $R$ etex, (x.a1,y.Sigma));
label.lft(btex $\vec u$ etex,z.a1+(0,1)*u);
label.rt(btex $\dots$ etex rotated angle(direction 1.6 of p0), z.dots);
endfig;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beginfig(1250)
save u,p,a;
path p[];
u:=.7cm;
a:=75;

z.o=origin;
z.r1=(0,-1.4)*u;
z.r0=z.r1 rotated -a;
z.r2=z.r1 rotated a;

draw arc(z.r0,z.r1,z.r2)--z.o--cycle;
draw z.r0--z.r2 dashed evenly;

dOt z.o;

label.top(btex вершина etex, z.o);
endfig;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beginfig(1650) 
save u,k;
u:=.9cm;
k=.5;


z.p0=(0,0)*u;
z.p1=(2,1)*u;
z.q0=(1,-2)*u;
z.q1=(3,-2.2)*u;

z.a=k[z.p0,z.p1];
z.b=k[z.q0,z.p1];
z.c=k[z.q0,z.q1];

draw z.p0--z.p1--z.q0--z.q1;
draw z.a--z.b--z.c penhair dashed evenly;
draw z.a--z.c penhair;
draw z.p0--z.q0 penhair;
draw z.p1--z.q1 penhair;

dOt z.p0,z.p1,z.q0,z.q1,z.a,z.b,z.c;

label.lft(btex $\gamma_1(0)$ etex, z.p0);
label.rt(btex $\gamma_1(1)=\delta(1)$ etex, z.p1);
label.lrt(btex $\gamma_2(1)$ etex, z.q1);
label.llft(btex $\gamma_2(0)=\delta(0)$ etex, z.q0);
label.top(btex $\gamma_1(\tfrac12)$ etex, z.a);
label.rt(btex $\delta(\tfrac12)$ etex, z.b);
label.bot(btex $\gamma_2(\tfrac12)$ etex, z.c);
endfig;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beginfig(1680) 
save u,p;
path p[];
u:=1.2cm;

z.qq=origin;
z.pp=(0,2)*u;
z.xx=(.7,2.3)*u;
z.yy=(x.xx,0);

z.shift=(-2.5,0)*u;

z.p=z.pp+z.shift;
z.q=z.qq+z.shift;
z.x=z.xx+z.shift+(-1,2);
z.y=z.yy+z.shift+(0,1);
z.z=(z.yy xscaled -1)+z.shift+(0,1);

draw ddarc(z.z,z.q,z.y)(-1,4) pensemibold;
p0=z.p--z.q;
draw p0;
p1=-.5*z.x+1.5*z.p+(1,-2)..z.p..z.x..1.5*z.x-.5*z.p+(1,-2);
draw p1 pensemibold;
p2=z.q{z.x-z.q+(1,-2)}..z.x;
draw p2;
draw z.y{z.x-z.y+(4,0)}..z.x;

labelarcsprof(z.xx, z.pp, z.qq, 6, 4, btex $\tilde\phi$ etex);
labelarcsprof(z.xx, z.qq, z.pp, 18, 20, btex $\tilde\psi$ etex);
p11=circle(origin,6) rotated 90 shifted z.p cutafter p1 cutbefore p0;
draw p11;
p22=circle(origin,18) shifted z.q cutafter p0 cutbefore p2;
draw p22;

draw ddline(z.qq,z.yy)(.8,.6) pensemibold;
draw z.xx--z.qq--z.pp--z.xx--z.yy;

dOt z.xx,z.yy,z.pp,z.qq,z.x,z.y,z.p,z.q;

rimmark(z.p--z.q,z.pp--z.qq);
rimmark2(subpath (1,2) of p1,z.pp--z.xx);
rimmark3(p2,z.qq--z.xx);

label.top(btex $\tilde x$ etex, z.xx);
label.top(btex $\tilde p$ etex, z.pp);
label.bot(btex $\tilde q$ etex, z.qq);
label.bot(btex $\tilde y$ etex, z.yy);
label.top(btex $x$ etex, z.x);
label.top(btex $p$ etex, z.p);
label.bot(btex $q$ etex, z.q);
label.bot(btex $y$ etex, z.y);
label.lrt(btex $\phi$ etex, z.p+(3,-3));
label.urt(btex $\psi$ etex, z.q+(-2,18));
label.llft(btex $\gamma$ etex,-.5*z.x+1.5*z.p+(1,-2));
label(btex $\delta$ etex,z.z);
label.lft(btex $\tilde\delta$ etex,(-.8)[z.qq,z.yy]);

endfig;

beginfig(3540)
save u,p;
path p[];
u:=1cm;

z.p0=(1.5,.5)*u;
z.p1=(3.5,1.7)*u;
z.p2=(1.3,3)*u;
z.p3=(.3,1.2)*u;
z.p4=z.p+(-.2,0)*u;

z.p=z.p1+(1.5,0)*u;

p0=z.p0{1,0}..z.p1--z.p1..z.p2..z.p3..cycle;

hatchfill p0  withcolor (53, 1.5mm, -.5bp);
draw  p0 pensemibold;
draw ((x.p1+2*x.p)/3,y.p0)--((x.p1+2*x.p)/3,y.p2);
dOt z.p;

label.rt(btex $p$ etex, z.p);
label(btex разделяющая etex rotated 90, ((x.p1+2*x.p)/3,(y.p0+y.p2)/2)+(-7,0));
whitelabel(btex $K$ etex, .5[z.p1,z.p3]);

endfig;

beginfig(3542)
save u,p;
path p[];
u:=1cm;

z.p0=(1.5,.5)*u;
z.p1=(3.5,1.7)*u;
z.p2=(1.3,3)*u;
z.p3=(.3,1.2)*u;
z.p4=z.p+(-.2,0)*u;

p0=z.p0{1,0}..z.p1--z.p1..z.p2..z.p3..cycle;

hatchfill p0  withcolor (53, 1.5mm, -.5bp);
draw  p0 pensemibold;
draw (x.p1,y.p0)--(x.p1,y.p2);
dOt z.p1;

whitelabel.lft(btex $p$ etex, z.p1);
whitelabel(btex $K$ etex, .5[z.p1,z.p3]);
label(btex опорная etex rotated 90, (x.p1,(y.p0+y.p2)/2)+(7,0));

endfig;

end
