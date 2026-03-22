((a,b)=>{a[b]=a[b]||{}})(self,"$__dart_deferred_initializers__")
$__dart_deferred_initializers__.current=function(a,b,c,$){var B,C,A={my:function my(d,e){this.a=d
this.b=e},
a_Y(d,e,f,g,h,i,j){var x,w,v=null
if(f==null)x=v
else x=f
if(j!=null||h!=null)w=B.kZ(h,j)
else w=v
return new A.xE(d,i,x,w,e,g,v,v)},
oL:function oL(d,e){this.a=d
this.b=e},
pW:function pW(d,e){this.a=d
this.b=e},
xE:function xE(d,e,f,g,h,i,j,k){var _=this
_.r=d
_.x=e
_.y=f
_.Q=g
_.c=h
_.d=i
_.e=j
_.a=k},
QZ:function QZ(d,e){var _=this
_.fx=_.fr=_.dy=_.dx=_.db=_.cy=_.cx=_.CW=null
_.e=_.d=$
_.c0$=d
_.b4$=e
_.c=_.a=null},
ajX:function ajX(){},
ajY:function ajY(){},
ajZ:function ajZ(){},
ak_:function ak_(){},
ak0:function ak0(){},
ak1:function ak1(){},
ak2:function ak2(){},
ak3:function ak3(){},
aDF(){var x=new Float64Array(4)
x[3]=1
return new A.lG(x)},
lG:function lG(d){this.a=d}}
B=c[0]
C=c[2]
A=a.updateHolder(c[15],A)
A.my.prototype={
ef(d){return B.oD(this.a,this.b,d)}}
A.oL.prototype={
ef(d){var x=B.hk(this.a,this.b,d)
x.toString
return x}}
A.pW.prototype={
ef(a8){var x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h,g,f,e,d,a0,a1,a2=new B.bD(new Float64Array(3)),a3=new B.bD(new Float64Array(3)),a4=A.aDF(),a5=A.aDF(),a6=new B.bD(new Float64Array(3)),a7=new B.bD(new Float64Array(3))
this.a.Wz(a2,a4,a6)
this.b.Wz(a3,a5,a7)
x=1-a8
w=a2.l_(x).V(0,a3.l_(a8))
v=a4.l_(x).V(0,a5.l_(a8))
u=new Float64Array(4)
t=new A.lG(u)
t.ba(v)
t.w_()
s=a6.l_(x).V(0,a7.l_(a8))
x=new Float64Array(16)
v=new B.av(x)
r=u[0]
q=u[1]
p=u[2]
o=u[3]
n=r+r
m=q+q
l=p+p
k=r*n
j=r*m
i=r*l
h=q*m
g=q*l
f=p*l
e=o*n
d=o*m
a0=o*l
a1=w.a
x[0]=1-(h+f)
x[1]=j+a0
x[2]=i-d
x[3]=0
x[4]=j-a0
x[5]=1-(k+f)
x[6]=g+e
x[7]=0
x[8]=i+d
x[9]=g-e
x[10]=1-(k+h)
x[11]=0
x[12]=a1[0]
x[13]=a1[1]
x[14]=a1[2]
x[15]=1
x=s.a
v.kZ(x[0],x[1],x[2],1)
return v}}
A.xE.prototype={
ac(){return new A.QZ(null,null)}}
A.QZ.prototype={
kw(d){var x,w,v,u=this,t=null,s=u.CW
u.a.toString
x=y.b
u.CW=x.a(d.$3(s,t,new A.ajX()))
s=y.f
u.cx=s.a(d.$3(u.cx,u.a.x,new A.ajY()))
w=y.d
u.cy=w.a(d.$3(u.cy,u.a.y,new A.ajZ()))
v=u.db
u.a.toString
u.db=w.a(d.$3(v,t,new A.ak_()))
u.dx=y.e.a(d.$3(u.dx,u.a.Q,new A.ak0()))
v=u.dy
u.a.toString
u.dy=s.a(d.$3(v,t,new A.ak1()))
v=u.fr
u.a.toString
u.fr=y.w.a(d.$3(v,t,new A.ak2()))
v=u.fx
u.a.toString
u.fx=x.a(d.$3(v,t,new A.ak3()))},
H(d){var x,w,v,u,t,s,r,q=this,p=null,o=q.ge5(),n=q.CW
n=n==null?p:n.ah(o.gt())
x=q.cx
x=x==null?p:x.ah(o.gt())
w=q.cy
w=w==null?p:w.ah(o.gt())
v=q.db
v=v==null?p:v.ah(o.gt())
u=q.dx
u=u==null?p:u.ah(o.gt())
t=q.dy
t=t==null?p:t.ah(o.gt())
s=q.fr
s=s==null?p:s.ah(o.gt())
r=q.fx
r=r==null?p:r.ah(o.gt())
return B.dD(n,q.a.r,C.t,p,u,w,v,p,t,x,s,r,p)}}
A.lG.prototype={
ba(d){var x=d.a,w=this.a,v=x[0]
w.$flags&2&&B.ak(w)
w[0]=v
w[1]=x[1]
w[2]=x[2]
w[3]=x[3]},
a0L(d){var x,w,v,u,t,s=d.a,r=s[0],q=s[4],p=s[8],o=0+r+q+p
if(o>0){x=Math.sqrt(o+1)
r=this.a
r.$flags&2&&B.ak(r)
r[3]=x*0.5
x=0.5/x
r[0]=(s[5]-s[7])*x
r[1]=(s[6]-s[2])*x
r[2]=(s[1]-s[3])*x}else{if(r<q)w=q<p?2:1
else w=r<p?2:0
v=(w+1)%3
u=(w+2)%3
r=w*3
q=v*3
p=u*3
x=Math.sqrt(s[r+w]-s[q+v]-s[p+u]+1)
t=this.a
t.$flags&2&&B.ak(t)
t[w]=x*0.5
x=0.5/x
t[3]=(s[q+u]-s[p+v])*x
t[v]=(s[r+v]+s[q+w])*x
t[u]=(s[r+u]+s[p+w])*x}},
w_(){var x,w,v,u=Math.sqrt(this.gvP())
if(u===0)return 0
x=1/u
w=this.a
v=w[0]
w.$flags&2&&B.ak(w)
w[0]=v*x
w[1]=w[1]*x
w[2]=w[2]*x
w[3]=w[3]*x
return u},
gvP(){var x=this.a,w=x[0],v=x[1],u=x[2],t=x[3]
return w*w+v*v+u*u+t*t},
gE(d){var x=this.a,w=x[0],v=x[1],u=x[2],t=x[3]
return Math.sqrt(w*w+v*v+u*u+t*t)},
l_(d){var x=new Float64Array(4),w=new A.lG(x)
w.ba(this)
x[3]=x[3]*d
x[2]=x[2]*d
x[1]=x[1]*d
x[0]=x[0]*d
return w},
a5(a5,a6){var x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h=this.a,g=h[3],f=h[2],e=h[1],d=h[0],a0=a6.gaw6(),a1=a0[3],a2=a0[2],a3=a0[1],a4=a0[0]
h=C.d.a5(g,a4)
x=C.d.a5(d,a1)
w=C.d.a5(e,a2)
v=C.d.a5(f,a3)
u=C.d.a5(g,a3)
t=C.d.a5(e,a1)
s=C.d.a5(f,a4)
r=C.d.a5(d,a2)
q=C.d.a5(g,a2)
p=C.d.a5(f,a1)
o=C.d.a5(d,a3)
n=C.d.a5(e,a4)
m=C.d.a5(g,a1)
l=C.d.a5(d,a4)
k=C.d.a5(e,a3)
j=C.d.a5(f,a2)
i=new Float64Array(4)
i[0]=h+x+w-v
i[1]=u+t+s-r
i[2]=q+p+o-n
i[3]=m-l-k-j
return new A.lG(i)},
j(d,e){var x,w,v
if(e==null)return!1
if(e instanceof A.lG){x=this.a
w=x[3]
v=e.a
x=w===v[3]&&x[2]===v[2]&&x[1]===v[1]&&x[0]===v[0]}else x=!1
return x},
gA(d){return B.br(this.a)},
V(d,e){var x,w=new Float64Array(4),v=new A.lG(w)
v.ba(this)
x=e.a
w[0]=w[0]+x[0]
w[1]=w[1]+x[1]
w[2]=w[2]+x[2]
w[3]=w[3]+x[3]
return v},
S(d,e){var x,w=new Float64Array(4),v=new A.lG(w)
v.ba(this)
x=e.a
w[0]=w[0]-x[0]
w[1]=w[1]-x[1]
w[2]=w[2]-x[2]
w[3]=w[3]-x[3]
return v},
k(d){var x=this.a
return B.k(x[0])+", "+B.k(x[1])+", "+B.k(x[2])+" @ "+B.k(x[3])}}
var z=a.updateTypes(["my(@)","oL(@)","pW(@)"])
A.ajX.prototype={
$1(d){return new A.my(y.k.a(d),null)},
$S:z+0}
A.ajY.prototype={
$1(d){return new B.jN(y.m.a(d),null)},
$S:95}
A.ajZ.prototype={
$1(d){return new B.l5(y.r.a(d),null)},
$S:192}
A.ak_.prototype={
$1(d){return new B.l5(y.r.a(d),null)},
$S:192}
A.ak0.prototype={
$1(d){return new A.oL(y.a.a(d),null)},
$S:z+1}
A.ak1.prototype={
$1(d){return new B.jN(y.m.a(d),null)},
$S:95}
A.ak2.prototype={
$1(d){return new A.pW(y.E.a(d),null)},
$S:z+2}
A.ak3.prototype={
$1(d){return new A.my(y.k.a(d),null)},
$S:z+0};(function inheritance(){var x=a.inheritMany,w=a.inherit
x(B.al,[A.my,A.oL,A.pW])
w(A.xE,B.pw)
w(A.QZ,B.mz)
x(B.ec,[A.ajX,A.ajY,A.ajZ,A.ak_,A.ak0,A.ak1,A.ak2,A.ak3])
w(A.lG,B.G)})()
B.iD(b.typeUniverse,JSON.parse('{"my":{"al":["fl?"],"an":["fl?"],"al.T":"fl?","an.T":"fl?"},"oL":{"al":["a6"],"an":["a6"],"al.T":"a6","an.T":"a6"},"pW":{"al":["av"],"an":["av"],"al.T":"av","an.T":"av"},"xE":{"T":[],"e":[]},"QZ":{"W":["xE"]}}'))
var y=(function rtii(){var x=B.Z
return{k:x("fl"),a:x("a6"),r:x("i2"),m:x("cv"),E:x("av"),b:x("my?"),e:x("oL?"),d:x("l5?"),f:x("jN?"),w:x("pW?")}})()};
(a=>{a["IMRYdIQGpWEkovATRx1V5f3JuO4="]=a.current})($__dart_deferred_initializers__);