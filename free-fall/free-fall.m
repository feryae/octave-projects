% Motion Free Fall Algorithm
% Fery Ardiansyah Effendi - 1301174532

%Define Variables (N,T,Delta T,v)
	N=21; T=5 ; v=0 ; G=9.8;					         %Variables are from the exercise
  delT= T/(N-1);                             %Discrete time point.
%Define values of t[1] until t[N+1]
	t=[0:delT:T];  			   		                 %Array from discrete time point.
%Define First Position
	y(1)=100 ; 				   		                   %First position y[0]
%Define Position of y[2]
	y(2)=y(1)+(v*delT); 		  	               %y[2] from forward different
%Define y(i)  
	for i=3:N						                       %y[i] value ranged from i =3 to N+1
		y(i)=((-G)*(delT^2))+(2*y(i-1))-y(i-2);  %y(i) from time domain discretization
	end
%Plot the figure
  plot(t,y);  						                   %Plotting the figure.