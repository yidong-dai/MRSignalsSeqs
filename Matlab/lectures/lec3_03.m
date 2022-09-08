% Lecture 3 - Example 3
% 
% Compact animation by splitting [A,B] propagation
%
% This animation is to show "free precession in the rotating frame with relaxation" 
% The obsavation is that Mx, My are independently decaying with T2 time
% constant (Mx will not move to My, and vice visa). Mz is growing back to
% full strength, potentially from an initial value Mz0
[A,B] = relax(5,2,1.5);      % Relaxation over 5sec with T1=2sec and T2=1.5sec.
M=abanim([1;0;0],40,A,B);    % Note we can't "split" a 360-degree (or more) rotation, due to ambiguity.