% Program 10a - The Holling-Tanner Model (Fig. 10.5(a)).
% Chapter 10 - Interacting Species.
% Copyright Springer 2014. Stephen Lynch.

% Phase portrait of a predator/prey model.
clear
hold on
sys = @(t,x) [x(1)*(1-x(1)/7)-6*x(1)*x(2)/(7+7*x(1));0.2*x(2)*(1-.5*x(2)/x(1))]; 
options = odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xa]=ode45(sys,[0 100],[7.1 .1],options);
plot(xa(:,1),xa(:,2))
axis([0 8 0 5])
fsize=15;
set(gca,'XTick',0:2:8,'FontSize',fsize)
set(gca,'YTick',0:2.5:5,'FontSize',fsize)
xlabel('x(t)','FontSize',fsize)
ylabel('y(t)','FontSize',fsize)
hold off

% End of Program 10a.