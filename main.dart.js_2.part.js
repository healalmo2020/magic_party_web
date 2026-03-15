((a,b)=>{a[b]=a[b]||{}})(self,"$__dart_deferred_initializers__")
$__dart_deferred_initializers__.current=function(a,b,c,$){var J,A,D,B={
ay6(d,e){var x
switch(e.a){case 0:x=d
break
case 1:x=new A.z(d.b,d.a)
break
default:x=null}return x},
aEm(d,e,f){var x
switch(f.a){case 0:x=e
break
case 1:x=e.gXe()
break
default:x=null}return x.b5(d)},
aka(d,e){return new A.z(d.a+e.a,Math.max(d.b,e.b))},
aOV(d){return d.gt()},
aOW(d,e){var x=e.b
x.toString
y.e.a(x).a=d},
nS:function nS(d,e){this.a=d
this.b=e},
DM:function DM(d,e){this.a=d
this.b=e},
Gv:function Gv(d,e){this.a=d
this.b=1
this.c=e},
kt:function kt(d,e,f){this.ce$=d
this.af$=e
this.a=f},
BC:function BC(d,e,f,g,h,i,j,k,l,m,n,o,p,q,r){var _=this
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
_.c0$=p
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
adV:function adV(d,e,f){this.a=d
this.b=e
this.c=f},
adW:function adW(d){this.a=d},
W6:function W6(){},
W7:function W7(){},
ay4(d,e,f,g){return new B.Qy(d,g,f,e,null)},
Qy:function Qy(d,e,f,g,h){var _=this
_.f=d
_.r=e
_.x=f
_.c=g
_.a=h}},C
J=c[1]
A=c[0]
D=c[2]
B=a.updateHolder(c[10],B)
C=c[18]
B.nS.prototype={
H(){return"WrapAlignment."+this.b},
xA(d,e,f,g){var x,w,v=this
A:{if(C.eo===v){x=new A.ad(g?d:0,e)
break A}if(C.Y0===v){x=C.eo.xA(d,e,f,!g)
break A}w=C.Y1===v
if(w&&f<2){x=C.eo.xA(d,e,f,g)
break A}if(C.mh===v){x=new A.ad(d/2,e)
break A}if(w){x=new A.ad(0,d/(f-1)+e)
break A}if(C.Y2===v){x=d/f
x=new A.ad(x/2,x+e)
break A}if(C.Y3===v){x=d/(f+1)
x=new A.ad(x,x+e)
break A}x=null}return x}}
B.DM.prototype={
H(){return"WrapCrossAlignment."+this.b},
ga9C(){switch(this.a){case 0:var x=C.Y4
break
case 1:x=C.mi
break
case 2:x=C.Y5
break
default:x=null}return x},
ga6a(){switch(this.a){case 0:var x=0
break
case 1:x=1
break
case 2:x=0.5
break
default:x=null}return x}}
B.Gv.prototype={
avf(d,e,f,g,h){var x=this,w=x.a
if(w.a+e.a+g-h>1e-10)return new B.Gv(e,d)
else{x.a=B.aka(w,B.aka(e,new A.z(g,0)));++x.b
if(f)x.c=d
return null}}}
B.kt.prototype={}
B.BC.prototype={
soa(d){if(this.n===d)return
this.n=d
this.Y()},
sfH(d){if(this.J===d)return
this.J=d
this.Y()},
st8(d){if(this.X===d)return
this.X=d
this.Y()},
sauJ(d){if(this.a3===d)return
this.a3=d
this.Y()},
sauN(d){if(this.Z===d)return
this.Z=d
this.Y()},
saof(d){if(this.a6===d)return
this.a6=d
this.Y()},
dS(d){if(!(d.b instanceof B.kt))d.b=new B.kt(null,null,D.f)},
be(d){var x,w,v,u,t,s=this
switch(s.n.a){case 0:x=s.R$
for(w=A.j(s).h("a_.1"),v=0;x!=null;){u=x.gbH()
t=D.aC.dQ(x.dy,1/0,u)
v=Math.max(v,t)
u=x.b
u.toString
x=w.a(u).af$}return v
case 1:return s.ao(D.L,new A.a6(0,1/0,0,d),s.gcl()).a}},
b9(d){var x,w,v,u,t,s=this
switch(s.n.a){case 0:x=s.R$
for(w=A.j(s).h("a_.1"),v=0;x!=null;){u=x.gbn()
t=D.ac.dQ(x.dy,1/0,u)
v+=t
u=x.b
u.toString
x=w.a(u).af$}return v
case 1:return s.ao(D.L,new A.a6(0,1/0,0,d),s.gcl()).a}},
bd(d){var x,w,v,u,t,s=this
switch(s.n.a){case 0:return s.ao(D.L,new A.a6(0,d,0,1/0),s.gcl()).b
case 1:x=s.R$
for(w=A.j(s).h("a_.1"),v=0;x!=null;){u=x.gbG()
t=D.aD.dQ(x.dy,1/0,u)
v=Math.max(v,t)
u=x.b
u.toString
x=w.a(u).af$}return v}},
b8(d){var x,w,v,u,t,s=this
switch(s.n.a){case 0:return s.ao(D.L,new A.a6(0,d,0,1/0),s.gcl()).b
case 1:x=s.R$
for(w=A.j(s).h("a_.1"),v=0;x!=null;){u=x.gbO()
t=D.aZ.dQ(x.dy,1/0,u)
v+=t
u=x.b
u.toString
x=w.a(u).af$}return v}},
eY(d){return this.A_(d)},
aac(d){var x
switch(this.n.a){case 0:x=d.a
break
case 1:x=d.b
break
default:x=null}return x},
a9W(d){var x
switch(this.n.a){case 0:x=d.b
break
case 1:x=d.a
break
default:x=null}return x},
aaf(d,e){var x
switch(this.n.a){case 0:x=new A.h(d,e)
break
case 1:x=new A.h(e,d)
break
default:x=null}return x},
gNv(){var x,w=this.a4
switch((w==null?D.Q:w).a){case 1:w=!1
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
default:x=p}w=q.Of(d,A.fj())
v=w.a
u=p
t=w.b
u=t
s=v
r=B.aEm(s,d,q.n)
o.a=null
q.RF(u,s,r,new B.adV(o,x,e),new B.adW(x))
return o.a},
cS(d){return this.al8(d)},
al8(d){var x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i=this,h=null
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
for(x=A.j(i).h("a_.1"),r=0,q=0,p=0,o=0,n=0;s!=null;){m=A.aAy(s,t)
l=i.aac(m)
k=i.a9W(m)
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
bp(){var x,w,v,u,t,s,r,q,p=this,o=y.a.a(A.l.prototype.gP.call(p))
if(p.R$==null){p.fy=new A.z(A.w(0,o.a,o.b),A.w(0,o.c,o.d))
p.aW=!1
return}x=p.Of(o,A.ml())
w=x.a
v=null
u=x.b
v=u
t=w
s=p.n
r=B.aEm(t,o,s)
p.fy=B.ay6(r,s)
s=r.a-t.a
q=r.b-t.b
p.aW=s<0||q<0
p.RF(v,new A.z(s,q),r,B.aWk(),B.aWj())},
Of(d,e){var x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h=this,g=null,f="Pattern matching error"
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
s=h.gNv().a
r=s
q=h.X
p=A.c([],y.l)
o=h.R$
x=A.j(h).h("a_.1")
n=g
m=D.C
while(o!=null){l=B.ay6(e.$2(o,t),h.n)
k=n==null
j=k?new B.Gv(l,o):n.avf(o,l,r,q,v)
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
m=B.aka(m,B.aka(new A.z(x*(k-1),0),new A.z(i.b,i.a)))
return new A.ad(new A.z(m.b,m.a),p)},
RF(b1,b2,b3,b4,b5){var x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h,g,f,e,d,a0,a1,a2,a3=this,a4=null,a5=a3.X,a6=Math.max(0,b2.b),a7=a3.gNv(),a8=a7.a,a9=a4,b0=a7.b
a9=b0
x=a3.a6
if(a9)x=x.ga9C()
w=a3.a3.xA(a6,a3.Z,b1.length,a9)
v=w.a
u=a4
t=w.b
u=t
s=a8?a3.gqm():a3.gnW()
for(r=J.by(a9?new A.bY(b1,A.a2(b1).h("bY<1>")):b1),q=b3.a,p=v;r.v();){o=r.gO()
n=o.a
m=n.b
l=o.b
k=Math.max(0,q-n.a)
j=a3.J.xA(k,a5,l,a8)
i=j.a
h=a4
g=j.b
h=g
f=o.c
e=l
d=i
for(;;){if(!(f!=null&&e>0))break
a0=B.ay6(b5.$1(f),a3.n)
a1=a4
a2=a0.b
a1=a2
b4.$2(a3.aaf(d,p+x.ga6a()*(m-a1)),f)
d+=a0.a+h
f=s.$1(f);--e}p+=m+u}},
cD(d,e){return this.v0(d,e)},
aD(d,e){var x,w=this,v=w.aW&&w.aR!==D.t,u=w.aA
if(v){v=w.cx
v===$&&A.a()
x=w.gt()
u.saB(d.lA(v,e,new A.p(0,0,0+x.a,0+x.b),w.gWq(),w.aR,u.a))}else{u.saB(null)
w.qz(d,e)}},
l(){this.aA.saB(null)
this.fb()}}
B.W6.prototype={
ak(d){var x,w,v
this.dL(d)
x=this.R$
for(w=y.e;x!=null;){x.ak(d)
v=x.b
v.toString
x=w.a(v).af$}},
ae(){var x,w,v
this.dM()
x=this.R$
for(w=y.e;x!=null;){x.ae()
v=x.b
v.toString
x=w.a(v).af$}}}
B.W7.prototype={}
B.Qy.prototype={
aF(d){var x=A.cS(d)
x=new B.BC(D.aF,this.f,this.r,C.eo,this.x,C.mi,x,D.cp,D.t,A.aa(),0,null,null,new A.aK(),A.aa())
x.aE()
x.T(0,null)
return x},
aM(d,e){var x
e.soa(D.aF)
e.sfH(this.f)
e.st8(this.r)
e.sauJ(C.eo)
e.sauN(this.x)
e.saof(C.mi)
x=A.cS(d)
if(e.a4!=x){e.a4=x
e.Y()}if(e.al!==D.cp){e.al=D.cp
e.Y()}if(D.t!==e.aR){e.aR=D.t
e.az()
e.b_()}}}
var z=a.updateTypes(["C(C)","z(r)","~(h,r)"])
B.adV.prototype={
$2(d,e){var x=this.a
x.a=A.rR(x.a,A.a0f(e.eA(this.b,this.c),d.b))},
$S:513}
B.adW.prototype={
$1(d){return d.ao(D.L,this.a,d.gcl())},
$S:514};(function installTearOffs(){var x=a._static_1,w=a._static_2,v=a._instance_1u
x(B,"aWj","aOV",1)
w(B,"aWk","aOW",2)
var u
v(u=B.BC.prototype,"gbH","be",0)
v(u,"gbn","b9",0)
v(u,"gbG","bd",0)
v(u,"gbO","b8",0)})();(function inheritance(){var x=a.mixinHard,w=a.mixin,v=a.inheritMany,u=a.inherit
v(A.r9,[B.nS,B.DM])
u(B.Gv,A.G)
u(B.kt,A.oR)
u(B.W6,A.r)
u(B.W7,B.W6)
u(B.BC,B.W7)
u(B.adV,A.mz)
u(B.adW,A.f0)
u(B.Qy,A.dC)
x(B.W6,A.a_)
w(B.W7,A.cW)})()
A.mg(b.typeUniverse,JSON.parse('{"kt":{"eI":[],"dg":["r"],"ce":[]},"BC":{"cW":["r","kt"],"r":[],"a_":["r","kt"],"l":[],"ac":[],"a_.1":"kt","cW.1":"kt","a_.0":"r"},"Qy":{"dC":[],"af":[],"e":[]}}'))
var y={a:A.a5("a6"),l:A.a5("u<Gv>"),e:A.a5("kt")};(function constants(){C.eo=new B.nS(0,"start")
C.Y0=new B.nS(1,"end")
C.mh=new B.nS(2,"center")
C.Y1=new B.nS(3,"spaceBetween")
C.Y2=new B.nS(4,"spaceAround")
C.Y3=new B.nS(5,"spaceEvenly")
C.mi=new B.DM(0,"start")
C.Y4=new B.DM(1,"end")
C.Y5=new B.DM(2,"center")})()};
(a=>{a["mxYDTuP03+wgvY4quD3qIX/z4rk="]=a.current})($__dart_deferred_initializers__);