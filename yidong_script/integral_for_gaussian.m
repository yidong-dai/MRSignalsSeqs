function y = integral_for_gaussian(xmin,xmax,mn,sig)

fun = @(x) exp(-(x-mn).^2/(2*sig^2))/(sqrt(2*pi)*sig);  %gaussian equation

y = integral(fun,xmin,xmax) % integral value from xmin to xmax using gaussian funciton