function y = integral_for_rayleigh(xmin,xmax,sig)
scale_parameter = sig/sqrt(2-pi/2);
fun = @(x) (x/scale_parameter^2).*exp(-x.^2/(2*scale_parameter^2));  %gaussian equation

y = integral(fun,xmin,xmax) % integral value from xmin to xmax using gaussian funciton