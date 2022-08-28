
% Lecture 3, Example 02
% 
% Use the rotation functions to animate excitation, precession
%
M = [0;0;1];	% Equilibrium
Ne = 10;		% Frames - excitation
Np = 50;		% Frames - precession
Nrot = 1;		% cycles
Ry = yrot(-90/Ne);	% Rotation about My, excitation, animation for 90 degree
Rz = zrot(360/Nrot/Np);	% Rotation about Mz, precession, animation for 360 degree
% Add: [A,B] = relax(...)	

figure(3); disp('Excitation/Rotation');
plotm(M); % firstly plot equilibrium
for n=1:Ne; % Plot Ne frames of excitation with flip angle equals 90 degree
  M=Ry*M; plotm(M);	% Rotate and plot
  drawnow;
end;

for n=1:Np;  % Plot Np frames of precession with 360 degree
  M=Rz*M; plotm(M);	% Rotate and plot
  drawnow;
end;

% Exercise:  Add relaxation so that the spins return to Mz after 5 rotations, and transverse magnetization dies out after 3 rotations.
