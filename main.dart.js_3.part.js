((a,b)=>{a[b]=a[b]||{}})(self,"$__dart_deferred_initializers__")
$__dart_deferred_initializers__.current=function(a,b,c,$){var B,C,A={mw:function mw(d,e){this.a=d
this.b=e},
a_V(d,e,f,g,h,i,j){var x,w,v=null
if(f==null)x=v
else x=f
if(j!=null||h!=null)w=B.kY(h,j)
else w=v
return new A.xE(d,i,x,w,e,g,v,v)},
oK:function oK(d,e){this.a=d
this.b=e},
pV:function pV(d,e){this.a=d
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
QX:function QX(d,e){var _=this
_.fx=_.fr=_.dy=_.dx=_.db=_.cy=_.cx=_.CW=null
_.e=_.d=$
_.c0$=d
_.b3$=e
_.c=_.a=null},
ajU:function ajU(){},
ajV:function ajV(){},
ajW:function ajW(){},
ajX:function ajX(){},
ajY:function ajY(){},
ajZ:function ajZ(){},
ak_:function ak_(){},
ak0:function ak0(){},
aDA(){var x=new Float64Array(4)
x[3]=1
return new A.lE(x)},
lE:function lE(d){this.a=d}}
B=c[0]
C=c[2]
A=a.updateHolder(c[15],A)
A.mw.prototype={
ef(d){return B.oC(this.a,this.b,d)}}
A.oK.prototype={
ef(d){var x=B.hk(this.a,this.b,d)
x.toString
return x}}
A.pV.prototype={
ef(a8){var x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h,g,f,e,d,a0,a1,a2=new B.bD(new Float64Array(3)),a3=new B.bD(new Float64Array(3)),a4=A.aDA(),a5=A.aDA(),a6=new B.bD(new Float64Array(3)),a7=new B.bD(new Float64Array(3))
this.a.Wu(a2,a4,a6)
this.b.Wu(a3,a5,a7)
x=1-a8
w=a2.kY(x).V(0,a3.kY(a8))
v=a4.kY(x).V(0,a5.kY(a8))
u=new Float64Array(4)
t=new A.lE(u)
t.b9(v)
t.vV()
s=a6.kY(x).V(0,a7.kY(a8))
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
v.lT(x[0],x[1],x[2],1)
return v}}
A.xE.prototype={
ac(){return new A.QX(null,null)}}
A.QX.prototype={
kw(d){var x,w,v,u=this,t=null,s=u.CW
u.a.toString
x=y.b
u.CW=x.a(d.$3(s,t,new A.ajU()))
s=y.f
u.cx=s.a(d.$3(u.cx,u.a.x,new A.ajV()))
w=y.d
u.cy=w.a(d.$3(u.cy,u.a.y,new A.ajW()))
v=u.db
u.a.toString
u.db=w.a(d.$3(v,t,new A.ajX()))
u.dx=y.e.a(d.$3(u.dx,u.a.Q,new A.ajY()))
v=u.dy
u.a.toString
u.dy=s.a(d.$3(v,t,new A.ajZ()))
v=u.fr
u.a.toString
u.fr=y.w.a(d.$3(v,t,new A.ak_()))
v=u.fx
u.a.toString
u.fx=x.a(d.$3(v,t,new A.ak0()))},
H(d){var x,w,v,u,t,s,r,q=this,p=null,o=q.ge5(),n=q.CW
n=n==null?p:n.ah(o.gp())
x=q.cx
x=x==null?p:x.ah(o.gp())
w=q.cy
w=w==null?p:w.ah(o.gp())
v=q.db
v=v==null?p:v.ah(o.gp())
u=q.dx
u=u==null?p:u.ah(o.gp())
t=q.dy
t=t==null?p:t.ah(o.gp())
s=q.fr
s=s==null?p:s.ah(o.gp())
r=q.fx
r=r==null?p:r.ah(o.gp())
return B.dD(n,q.a.r,C.t,p,u,w,v,p,t,x,s,r,p)}}
A.lE.prototype={
b9(d){var x=d.a,w=this.a,v=x[0]
w.$flags&2&&B.ak(w)
w[0]=v
w[1]=x[1]
w[2]=x[2]
w[3]=x[3]},
a0G(d){var x,w,v,u,t,s=d.a,r=s[0],q=s[4],p=s[8],o=0+r+q+p
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
vV(){var x,w,v,u=Math.sqrt(this.gvK())
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
gvK(){var x=this.a,w=x[0],v=x[1],u=x[2],t=x[3]
return w*w+v*v+u*u+t*t},
gE(d){var x=this.a,w=x[0],v=x[1],u=x[2],t=x[3]
return Math.sqrt(w*w+v*v+u*u+t*t)},
kY(d){var x=new Float64Array(4),w=new A.lE(x)
w.b9(this)
x[3]=x[3]*d
x[2]=x[2]*d
x[1]=x[1]*d
x[0]=x[0]*d
return w},
a5(a5,a6){var x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h=this.a,g=h[3],f=h[2],e=h[1],d=h[0],a0=a6.gaw2(),a1=a0[3],a2=a0[2],a3=a0[1],a4=a0[0]
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
return new A.lE(i)},
j(d,e){var x,w,v
if(e==null)return!1
if(e instanceof A.lE){x=this.a
w=x[3]
v=e.a
x=w===v[3]&&x[2]===v[2]&&x[1]===v[1]&&x[0]===v[0]}else x=!1
return x},
gA(d){return B.br(this.a)},
V(d,e){var x,w=new Float64Array(4),v=new A.lE(w)
v.b9(this)
x=e.a
w[0]=w[0]+x[0]
w[1]=w[1]+x[1]
w[2]=w[2]+x[2]
w[3]=w[3]+x[3]
return v},
S(d,e){var x,w=new Float64Array(4),v=new A.lE(w)
v.b9(this)
x=e.a
w[0]=w[0]-x[0]
w[1]=w[1]-x[1]
w[2]=w[2]-x[2]
w[3]=w[3]-x[3]
return v},
k(d){var x=this.a
return B.k(x[0])+", "+B.k(x[1])+", "+B.k(x[2])+" @ "+B.k(x[3])}}
var z=a.updateTypes(["mw(@)","oK(@)","pV(@)"])
A.ajU.prototype={
$1(d){return new A.mw(y.k.a(d),null)},
$S:z+0}
A.ajV.prototype={
$1(d){return new B.jN(y.m.a(d),null)},
$S:81}
A.ajW.prototype={
$1(d){return new B.l4(y.r.a(d),null)},
$S:194}
A.ajX.prototype={
$1(d){return new B.l4(y.r.a(d),null)},
$S:194}
A.ajY.prototype={
$1(d){return new A.oK(y.a.a(d),null)},
$S:z+1}
A.ajZ.prototype={
$1(d){return new B.jN(y.m.a(d),null)},
$S:81}
A.ak_.prototype={
$1(d){return new A.pV(y.E.a(d),null)},
$S:z+2}
A.ak0.prototype={
$1(d){return new A.mw(y.k.a(d),null)},
$S:z+0};(function inheritance(){var x=a.inheritMany,w=a.inherit
x(B.al,[A.mw,A.oK,A.pV])
w(A.xE,B.pv)
w(A.QX,B.mx)
x(B.ec,[A.ajU,A.ajV,A.ajW,A.ajX,A.ajY,A.ajZ,A.ak_,A.ak0])
w(A.lE,B.G)})()
B.iA(b.typeUniverse,JSON.parse('{"mw":{"al":["fm?"],"an":["fm?"],"al.T":"fm?","an.T":"fm?"},"oK":{"al":["a6"],"an":["a6"],"al.T":"a6","an.T":"a6"},"pV":{"al":["av"],"an":["av"],"al.T":"av","an.T":"av"},"xE":{"T":[],"e":[]},"QX":{"W":["xE"]}}'))
var y=(function rtii(){var x=B.Z
return{k:x("fm"),a:x("a6"),r:x("hZ"),m:x("cv"),E:x("av"),b:x("mw?"),e:x("oK?"),d:x("l4?"),f:x("jN?"),w:x("pV?")}})()};
(a=>{a["/caeuMWqhKod2H5bhIPkUFayL9Q="]=a.current})($__dart_deferred_initializers__);