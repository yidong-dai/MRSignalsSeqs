%
%	function M = abanim(M,n,A,B), % yd, function name means that: a/b matrix/vector animation
%
%	Animate a propagation of the form M'=A*M+B
%
function M = abanim(M,n,A,B)

if (nargin < 4) B=[0;0;0]; end;

[Ai,Bi] = absplit(n,A,B);	% Split operation into n frames

for k=1:n
  M = Ai*M + Bi;	% Propagate
  plotm(M);		% Display
  drawnow;		% Show
end;


