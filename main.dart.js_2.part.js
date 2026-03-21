((a,b)=>{a[b]=a[b]||{}})(self,"$__dart_deferred_initializers__")
$__dart_deferred_initializers__.current=function(a,b,c,$){var J,A,D,B={
ayE(d,e){var x
switch(e.a){case 0:x=d
break
case 1:x=new A.z(d.b,d.a)
break
default:x=null}return x},
aEU(d,e,f){var x
switch(f.a){case 0:x=e
break
case 1:x=e.gXk()
break
default:x=null}return x.b5(d)},
akt(d,e){return new A.z(d.a+e.a,Math.max(d.b,e.b))},
aPz(d){return d.gq()},
aPA(d,e){var x=e.b
x.toString
y.e.a(x).a=d},
nW:function nW(d,e){this.a=d
this.b=e},
DR:function DR(d,e){this.a=d
this.b=e},
GC:function GC(d,e){this.a=d
this.b=1
this.c=e},
kx:function kx(d,e,f){this.ce$=d
this.af$=e
this.a=f},
BG:function BG(d,e,f,g,h,i,j,k,l,m,n,o,p,q,r){var _=this
_.n=d
_.J=e
_.X=f
_.a3=g
_.Z=h
_.a6=i
_.a4=j
_.al=k
_.aR=l
_.aW=!1
_.aA=m
_.bX$=n
_.R$=o
_.c1$=p
_.dy=q
_.b=_.fy=null
_.c=0
_.y=_.d=null
_.z=!0
_.Q=null
_.as=!1
_.at=null
_.ay=$
_.ch=r
_.CW=!1
_.cx=$
_.cy=!0
_.db=!1
_.dx=$},
ae8:function ae8(d,e,f){this.a=d
this.b=e
this.c=f},
ae9:function ae9(d){this.a=d},
Wm:function Wm(){},
Wn:function Wn(){},
ajJ(d,e,f,g){return new B.QM(d,g,f,e,null)},
QM:function QM(d,e,f,g,h){var _=this
_.f=d
_.r=e
_.x=f
_.c=g
_.a=h}},C
J=c[1]
A=c[0]
D=c[2]
B=a.updateHolder(c[14],B)
C=c[24]
B.nW.prototype={
I(){return"WrapAlignment."+this.b},
xB(d,e,f,g){var x,w,v=this
A:{if(C.eo===v){x=new A.ad(g?d:0,e)
break A}if(C.Yv===v){x=C.eo.xB(d,e,f,!g)
break A}w=C.Yw===v
if(w&&f<2){x=C.eo.xB(d,e,f,g)
break A}if(C.iZ===v){x=new A.ad(d/2,e)
break A}if(w){x=new A.ad(0,d/(f-1)+e)
break A}if(C.Yx===v){x=d/f
x=new A.ad(x/2,x+e)
break A}if(C.Yy===v){x=d/(f+1)
x=new A.ad(x,x+e)
break A}x=null}return x}}
B.DR.prototype={
I(){return"WrapCrossAlignment."+this.b},
ga9M(){switch(this.a){case 0:var x=C.Yz
break
case 1:x=C.mp
break
case 2:x=C.YA
break
default:x=null}return x},
ga6j(){switch(this.a){case 0:var x=0
break
case 1:x=1
break
case 2:x=0.5
break
default:x=null}return x}}
B.GC.prototype={
avq(d,e,f,g,h){var x=this,w=x.a
if(w.a+e.a+g-h>1e-10)return new B.GC(e,d)
else{x.a=B.akt(w,B.akt(e,new A.z(g,0)));++x.b
if(f)x.c=d
return null}}}
B.kx.prototype={}
B.BG.prototype={
soa(d){if(this.n===d)return
this.n=d
this.Y()},
sfI(d){if(this.J===d)return
this.J=d
this.Y()},
st9(d){if(this.X===d)return
this.X=d
this.Y()},
sauU(d){if(this.a3===d)return
this.a3=d
this.Y()},
sauY(d){if(this.Z===d)return
this.Z=d
this.Y()},
saor(d){if(this.a6===d)return
this.a6=d
this.Y()},
dT(d){if(!(d.b instanceof B.kx))d.b=new B.kx(null,null,D.e)},
be(d){var x,w,v,u,t,s=this
switch(s.n.a){case 0:x=s.R$
for(w=A.j(s).h("a0.1"),v=0;x!=null;){u=x.gbH()
t=D.aE.dR(x.dy,1/0,u)
v=Math.max(v,t)
u=x.b
u.toString
x=w.a(u).af$}return v
case 1:return s.ao(D.Q,new A.a6(0,1/0,0,d),s.gcm()).a}},
b8(d){var x,w,v,u,t,s=this
switch(s.n.a){case 0:x=s.R$
for(w=A.j(s).h("a0.1"),v=0;x!=null;){u=x.gbn()
t=D.ac.dR(x.dy,1/0,u)
v+=t
u=x.b
u.toString
x=w.a(u).af$}return v
case 1:return s.ao(D.Q,new A.a6(0,1/0,0,d),s.gcm()).a}},
bd(d){var x,w,v,u,t,s=this
switch(s.n.a){case 0:return s.ao(D.Q,new A.a6(0,d,0,1/0),s.gcm()).b
case 1:x=s.R$
for(w=A.j(s).h("a0.1"),v=0;x!=null;){u=x.gbG()
t=D.aF.dR(x.dy,1/0,u)
v=Math.max(v,t)
u=x.b
u.toString
x=w.a(u).af$}return v}},
b7(d){var x,w,v,u,t,s=this
switch(s.n.a){case 0:return s.ao(D.Q,new A.a6(0,d,0,1/0),s.gcm()).b
case 1:x=s.R$
for(w=A.j(s).h("a0.1"),v=0;x!=null;){u=x.gbO()
t=D.b_.dR(x.dy,1/0,u)
v+=t
u=x.b
u.toString
x=w.a(u).af$}return v}},
eY(d){return this.A0(d)},
aam(d){var x
switch(this.n.a){case 0:x=d.a
break
case 1:x=d.b
break
default:x=null}return x},
aa5(d){var x
switch(this.n.a){case 0:x=d.b
break
case 1:x=d.a
break
default:x=null}return x},
aap(d,e){var x
switch(this.n.a){case 0:x=new A.h(d,e)
break
case 1:x=new A.h(e,d)
break
default:x=null}return x},
gNz(){var x,w=this.a4
switch((w==null?D.V:w).a){case 1:w=!1
break
case 0:w=!0
break
default:w=null}switch(this.al.a){case 1:x=!1
break
case 0:x=!0
break
default:x=null}switch(this.n.a){case 0:w=new A.ad(w,x)
break
case 1:w=new A.ad(x,w)
break
default:w=null}return w},
dc(d,e){var x,w,v,u,t,s,r,q=this,p=null,o={}
if(q.R$==null)return p
switch(q.n.a){case 0:x=new A.a6(0,d.b,0,1/0)
break
case 1:x=new A.a6(0,1/0,0,d.d)
break
default:x=p}w=q.Oj(d,A.fl())
v=w.a
u=p
t=w.b
u=t
s=v
r=B.aEU(s,d,q.n)
o.a=null
q.RK(u,s,r,new B.ae8(o,x,e),new B.ae9(x))
return o.a},
cS(d){return this.alj(d)},
alj(d){var x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i=this,h=null
switch(i.n.a){case 0:x=d.b
x=new A.ad(new A.a6(0,x,0,1/0),x)
break
case 1:x=d.d
x=new A.ad(new A.a6(0,1/0,0,x),x)
break
default:x=h}w=x.a
v=h
u=x.b
v=u
t=w
s=i.R$
for(x=A.j(i).h("a0.1"),r=0,q=0,p=0,o=0,n=0;s!=null;){m=A.aB6(s,t)
l=i.aam(m)
k=i.aa5(m)
if(n>0&&p+l+i.X>v){r=Math.max(r,p)
q+=o+i.Z
p=0
o=0
n=0}p+=l
o=Math.max(o,k)
if(n>0)p+=i.X;++n
j=s.b
j.toString
s=x.a(j).af$}q+=o
r=Math.max(r,p)
switch(i.n.a){case 0:x=new A.z(r,q)
break
case 1:x=new A.z(q,r)
break
default:x=h}return d.b5(x)},
bp(){var x,w,v,u,t,s,r,q,p=this,o=y.a.a(A.m.prototype.gP.call(p))
if(p.R$==null){p.fy=new A.z(A.w(0,o.a,o.b),A.w(0,o.c,o.d))
p.aW=!1
return}x=p.Oj(o,A.mq())
w=x.a
v=null
u=x.b
v=u
t=w
s=p.n
r=B.aEU(t,o,s)
p.fy=B.ayE(r,s)
s=r.a-t.a
q=r.b-t.b
p.aW=s<0||q<0
p.RK(v,new A.z(s,q),r,B.aX0(),B.aX_())},
Oj(d,e){var x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h=this,g=null,f="Pattern matching error"
switch(h.n.a){case 0:x=d.b
x=new A.ad(new A.a6(0,x,0,1/0),x)
break
case 1:x=d.d
x=new A.ad(new A.a6(0,1/0,0,x),x)
break
default:x=g}w=x.a
v=g
u=x.b
v=u
t=w
s=h.gNz().a
r=s
q=h.X
p=A.c([],y.l)
o=h.R$
x=A.j(h).h("a0.1")
n=g
m=D.C
while(o!=null){l=B.ayE(e.$2(o,t),h.n)
k=n==null
j=k?new B.GC(l,o):n.avq(o,l,r,q,v)
if(j!=null){p.push(j)
if(k)k=g
else{k=n.a
l=new A.z(k.b,k.a)
k=l}if(k==null)k=D.C
l=new A.z(m.a+k.a,Math.max(m.b,k.b))
m=l
n=j}k=o.b
k.toString
o=x.a(k).af$}x=h.Z
k=p.length
i=n.a
m=B.akt(m,B.akt(new A.z(x*(k-1),0),new A.z(i.b,i.a)))
return new A.ad(new A.z(m.b,m.a),p)},
RK(b1,b2,b3,b4,b5){var x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h,g,f,e,d,a0,a1,a2,a3=this,a4=null,a5=a3.X,a6=Math.max(0,b2.b),a7=a3.gNz(),a8=a7.a,a9=a4,b0=a7.b
a9=b0
x=a3.a6
if(a9)x=x.ga9M()
w=a3.a3.xB(a6,a3.Z,b1.length,a9)
v=w.a
u=a4
t=w.b
u=t
s=a8?a3.gqn():a3.gnW()
for(r=J.by(a9?new A.c_(b1,A.a1(b1).h("c_<1>")):b1),q=b3.a,p=v;r.v();){o=r.gO()
n=o.a
m=n.b
l=o.b
k=Math.max(0,q-n.a)
j=a3.J.xB(k,a5,l,a8)
i=j.a
h=a4
g=j.b
h=g
f=o.c
e=l
d=i
for(;;){if(!(f!=null&&e>0))break
a0=B.ayE(b5.$1(f),a3.n)
a1=a4
a2=a0.b
a1=a2
b4.$2(a3.aap(d,p+x.ga6j()*(m-a1)),f)
d+=a0.a+h
f=s.$1(f);--e}p+=m+u}},
cD(d,e){return this.v0(d,e)},
aD(d,e){var x,w=this,v=w.aW&&w.aR!==D.t,u=w.aA
if(v){v=w.cx
v===$&&A.a()
x=w.gq()
u.saB(d.lD(v,e,new A.p(0,0,0+x.a,0+x.b),w.gWw(),w.aR,u.a))}else{u.saB(null)
w.qA(d,e)}},
l(){this.aA.saB(null)
this.fc()}}
B.Wm.prototype={
ak(d){var x,w,v
this.dM(d)
x=this.R$
for(w=y.e;x!=null;){x.ak(d)
v=x.b
v.toString
x=w.a(v).af$}},
ae(){var x,w,v
this.dN()
x=this.R$
for(w=y.e;x!=null;){x.ae()
v=x.b
v.toString
x=w.a(v).af$}}}
B.Wn.prototype={}
B.QM.prototype={
aF(d){var x=A.cV(d)
x=new B.BG(D.aH,this.f,this.r,C.eo,this.x,C.mp,x,D.cr,D.t,A.aa(),0,null,null,new A.aK(),A.aa())
x.aE()
x.T(0,null)
return x},
aM(d,e){var x
e.soa(D.aH)
e.sfI(this.f)
e.st9(this.r)
e.sauU(C.eo)
e.sauY(this.x)
e.saor(C.mp)
x=A.cV(d)
if(e.a4!=x){e.a4=x
e.Y()}if(e.al!==D.cr){e.al=D.cr
e.Y()}if(D.t!==e.aR){e.aR=D.t
e.az()
e.b_()}}}
var z=a.updateTypes(["C(C)","z(t)","~(h,t)"])
B.ae8.prototype={
$2(d,e){var x=this.a
x.a=A.rX(x.a,A.a0t(e.eB(this.b,this.c),d.b))},
$S:511}
B.ae9.prototype={
$1(d){return d.ao(D.Q,this.a,d.gcm())},
$S:512};(function installTearOffs(){var x=a._static_1,w=a._static_2,v=a._instance_1u
x(B,"aX_","aPz",1)
w(B,"aX0","aPA",2)
var u
v(u=B.BG.prototype,"gbH","be",0)
v(u,"gbn","b8",0)
v(u,"gbG","bd",0)
v(u,"gbO","b7",0)})();(function inheritance(){var x=a.mixinHard,w=a.mixin,v=a.inheritMany,u=a.inherit
v(A.rg,[B.nW,B.DR])
u(B.GC,A.G)
u(B.kx,A.oW)
u(B.Wm,A.t)
u(B.Wn,B.Wm)
u(B.BG,B.Wn)
u(B.ae8,A.jE)
u(B.ae9,A.ec)
u(B.QM,A.dw)
x(B.Wm,A.a0)
w(B.Wn,A.cY)})()
A.iA(b.typeUniverse,JSON.parse('{"kx":{"eL":[],"dh":["t"],"cf":[]},"BG":{"cY":["t","kx"],"t":[],"a0":["t","kx"],"m":[],"ac":[],"a0.1":"kx","cY.1":"kx","a0.0":"t"},"QM":{"dw":[],"af":[],"e":[]}}'))
var y={a:A.Z("a6"),l:A.Z("r<GC>"),e:A.Z("kx")};(function constants(){C.eo=new B.nW(0,"start")
C.Yv=new B.nW(1,"end")
C.iZ=new B.nW(2,"center")
C.Yw=new B.nW(3,"spaceBetween")
C.Yx=new B.nW(4,"spaceAround")
C.Yy=new B.nW(5,"spaceEvenly")
C.mp=new B.DR(0,"start")
C.Yz=new B.DR(1,"end")
C.YA=new B.DR(2,"center")})()};
(a=>{a["tyEY55O655kXmxovkhbsai6mDJE="]=a.current})($__dart_deferred_initializers__);