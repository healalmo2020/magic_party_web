((a,b)=>{a[b]=a[b]||{}})(self,"$__dart_deferred_initializers__")
$__dart_deferred_initializers__.current=function(a,b,c,$){var B,C,A={mu:function mu(d,e){this.a=d
this.b=e},
a_R(d,e,f,g,h,i,j){var x,w,v=null
if(f==null)x=v
else x=f
if(j!=null||h!=null)w=B.kX(h,j)
else w=v
return new A.xB(d,i,x,w,e,g,v,v)},
oJ:function oJ(d,e){this.a=d
this.b=e},
pR:function pR(d,e){this.a=d
this.b=e},
xB:function xB(d,e,f,g,h,i,j,k){var _=this
_.r=d
_.x=e
_.y=f
_.Q=g
_.c=h
_.d=i
_.e=j
_.a=k},
QT:function QT(d,e){var _=this
_.fx=_.fr=_.dy=_.dx=_.db=_.cy=_.cx=_.CW=null
_.e=_.d=$
_.c_$=d
_.b3$=e
_.c=_.a=null},
ajL:function ajL(){},
ajM:function ajM(){},
ajN:function ajN(){},
ajO:function ajO(){},
ajP:function ajP(){},
ajQ:function ajQ(){},
ajR:function ajR(){},
ajS:function ajS(){},
aDd(){var x=new Float64Array(4)
x[3]=1
return new A.lC(x)},
lC:function lC(d){this.a=d}}
B=c[0]
C=c[2]
A=a.updateHolder(c[13],A)
A.mu.prototype={
ef(d){return B.oB(this.a,this.b,d)}}
A.oJ.prototype={
ef(d){var x=B.hi(this.a,this.b,d)
x.toString
return x}}
A.pR.prototype={
ef(a8){var x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h,g,f,e,d,a0,a1,a2=new B.bD(new Float64Array(3)),a3=new B.bD(new Float64Array(3)),a4=A.aDd(),a5=A.aDd(),a6=new B.bD(new Float64Array(3)),a7=new B.bD(new Float64Array(3))
this.a.Wr(a2,a4,a6)
this.b.Wr(a3,a5,a7)
x=1-a8
w=a2.kW(x).U(0,a3.kW(a8))
v=a4.kW(x).U(0,a5.kW(a8))
u=new Float64Array(4)
t=new A.lC(u)
t.b9(v)
t.vV()
s=a6.kW(x).U(0,a7.kW(a8))
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
v.lQ(x[0],x[1],x[2],1)
return v}}
A.xB.prototype={
ac(){return new A.QT(null,null)}}
A.QT.prototype={
ku(d){var x,w,v,u=this,t=null,s=u.CW
u.a.toString
x=y.b
u.CW=x.a(d.$3(s,t,new A.ajL()))
s=y.f
u.cx=s.a(d.$3(u.cx,u.a.x,new A.ajM()))
w=y.d
u.cy=w.a(d.$3(u.cy,u.a.y,new A.ajN()))
v=u.db
u.a.toString
u.db=w.a(d.$3(v,t,new A.ajO()))
u.dx=y.e.a(d.$3(u.dx,u.a.Q,new A.ajP()))
v=u.dy
u.a.toString
u.dy=s.a(d.$3(v,t,new A.ajQ()))
v=u.fr
u.a.toString
u.fr=y.w.a(d.$3(v,t,new A.ajR()))
v=u.fx
u.a.toString
u.fx=x.a(d.$3(v,t,new A.ajS()))},
I(d){var x,w,v,u,t,s,r,q=this,p=null,o=q.ge4(),n=q.CW
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
return B.dM(n,q.a.r,C.t,p,u,w,v,p,t,x,s,r,p)}}
A.lC.prototype={
b9(d){var x=d.a,w=this.a,v=x[0]
w.$flags&2&&B.al(w)
w[0]=v
w[1]=x[1]
w[2]=x[2]
w[3]=x[3]},
a0C(d){var x,w,v,u,t,s=d.a,r=s[0],q=s[4],p=s[8],o=0+r+q+p
if(o>0){x=Math.sqrt(o+1)
r=this.a
r.$flags&2&&B.al(r)
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
t.$flags&2&&B.al(t)
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
w.$flags&2&&B.al(w)
w[0]=v*x
w[1]=w[1]*x
w[2]=w[2]*x
w[3]=w[3]*x
return u},
gvK(){var x=this.a,w=x[0],v=x[1],u=x[2],t=x[3]
return w*w+v*v+u*u+t*t},
gE(d){var x=this.a,w=x[0],v=x[1],u=x[2],t=x[3]
return Math.sqrt(w*w+v*v+u*u+t*t)},
kW(d){var x=new Float64Array(4),w=new A.lC(x)
w.b9(this)
x[3]=x[3]*d
x[2]=x[2]*d
x[1]=x[1]*d
x[0]=x[0]*d
return w},
a5(a5,a6){var x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h=this.a,g=h[3],f=h[2],e=h[1],d=h[0],a0=a6.gavY(),a1=a0[3],a2=a0[2],a3=a0[1],a4=a0[0]
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
return new A.lC(i)},
j(d,e){var x,w,v
if(e==null)return!1
if(e instanceof A.lC){x=this.a
w=x[3]
v=e.a
x=w===v[3]&&x[2]===v[2]&&x[1]===v[1]&&x[0]===v[0]}else x=!1
return x},
gA(d){return B.bq(this.a)},
U(d,e){var x,w=new Float64Array(4),v=new A.lC(w)
v.b9(this)
x=e.a
w[0]=w[0]+x[0]
w[1]=w[1]+x[1]
w[2]=w[2]+x[2]
w[3]=w[3]+x[3]
return v},
S(d,e){var x,w=new Float64Array(4),v=new A.lC(w)
v.b9(this)
x=e.a
w[0]=w[0]-x[0]
w[1]=w[1]-x[1]
w[2]=w[2]-x[2]
w[3]=w[3]-x[3]
return v},
k(d){var x=this.a
return B.k(x[0])+", "+B.k(x[1])+", "+B.k(x[2])+" @ "+B.k(x[3])}}
var z=a.updateTypes(["mu(@)","oJ(@)","pR(@)"])
A.ajL.prototype={
$1(d){return new A.mu(y.k.a(d),null)},
$S:z+0}
A.ajM.prototype={
$1(d){return new B.jH(y.m.a(d),null)},
$S:87}
A.ajN.prototype={
$1(d){return new B.l3(y.r.a(d),null)},
$S:168}
A.ajO.prototype={
$1(d){return new B.l3(y.r.a(d),null)},
$S:168}
A.ajP.prototype={
$1(d){return new A.oJ(y.a.a(d),null)},
$S:z+1}
A.ajQ.prototype={
$1(d){return new B.jH(y.m.a(d),null)},
$S:87}
A.ajR.prototype={
$1(d){return new A.pR(y.E.a(d),null)},
$S:z+2}
A.ajS.prototype={
$1(d){return new A.mu(y.k.a(d),null)},
$S:z+0};(function inheritance(){var x=a.inheritMany,w=a.inherit
x(B.ak,[A.mu,A.oJ,A.pR])
w(A.xB,B.mX)
w(A.QT,B.mv)
x(B.eL,[A.ajL,A.ajM,A.ajN,A.ajO,A.ajP,A.ajQ,A.ajR,A.ajS])
w(A.lC,B.G)})()
B.kI(b.typeUniverse,JSON.parse('{"mu":{"ak":["fk?"],"an":["fk?"],"ak.T":"fk?","an.T":"fk?"},"oJ":{"ak":["a6"],"an":["a6"],"ak.T":"a6","an.T":"a6"},"pR":{"ak":["av"],"an":["av"],"ak.T":"av","an.T":"av"},"xB":{"T":[],"e":[]},"QT":{"X":["xB"]}}'))
var y=(function rtii(){var x=B.a3
return{k:x("fk"),a:x("a6"),r:x("hV"),m:x("cv"),E:x("av"),b:x("mu?"),e:x("oJ?"),d:x("l3?"),f:x("jH?"),w:x("pR?")}})()};
(a=>{a["g4jgYTn+1vChhxjYH/oa44vBIR4="]=a.current})($__dart_deferred_initializers__);