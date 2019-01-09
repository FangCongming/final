function v = splinetx(x,y,u)
%SPLINETX  基本样条函数
%  v = splinetx(x,y,u) 分段三次插值
%  spline S(x), with S(x(j)) = y(j), and returns v(k) = S(u(k)).


%  First

   h = diff(x);
   delta = diff(y)./h;
   d = splineslopes(h,delta);

%  分段多项式系数求解

   n = length(x);
   c = (3*delta - 2*d(1:n-1) - d(2:n))./h;
   b = (d(1:n-1) - 2*delta + d(2:n))./h.^2;

%  找到子区间指数 k ， x(k) <= u < x(k+1)

   k = ones(size(u));
   for j = 2:n-1
      k(x(j) <= u) = j;
   end

%  计算

   s = u - x(k);
   v = y(k) + s.*(d(k) + s.*(c(k) + s.*b(k)));


% -------------------------------------------------------

