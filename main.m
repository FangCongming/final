figure('position',get(0,'screensize'))
axes('position',[0 0 1 1])
[x y]=ginput;
% 获取界面上输入的坐标点
n=length(x);
s=(1:n)';
t=(1:0.05:n)';
u=splinetx(s,x,t);
v=splinetx(s,y,t);
% 调用相应函数
clf reset
plot(x,y,'.',u,v,'-');