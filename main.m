figure('position',get(0,'screensize'))
axes('position',[0 0 1 1])
[x y]=ginput;
% ��ȡ����������������
n=length(x);
s=(1:n)';
t=(1:0.05:n)';
u=splinetx(s,x,t);
v=splinetx(s,y,t);
% ������Ӧ����
clf reset
plot(x,y,'.',u,v,'-');