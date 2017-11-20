%Inclass 22

%1. Consider the case of the auto-activating gene that we discussed in class
%today. Make a bifurcation diagram for this system by varying the
%activated transcription rate for three cases - in which 1, 4, or 8 copies of the
%transcripton factor are necessary to activate transciption. Comment on your
%results. 
V1=5;
V2=8;
ku=0;
A0=0.8;
for a=[1,4,8]
figure(3*a);
rhs1=@(t,x) (ku+V1*x.^a)./(1+x.^a)-x;
rhs2=@(t,x) (ku+V2*x.^a)./(1+x.^a)-x;
sol1=ode23(rhs1,[0 8],A0);
sol2=ode23(rhs2,[0 8],A0);
plot(sol1.x,sol1.y,'r.-','LineWidth',2,'MarkerSize',10);
xlabel('Time');
ylabel('Expression');
set(gca,'FontSize',24);
hold on;
plot(sol2.x,sol2.y,'g.-','LineWidth',2,'MarkerSize',10);
hold off;
end

% 2. Make a similar diagram for the case of an autorepressing gene in the
% case that 2 copies are need to turn off the gene.

V1=5;
ku=0;
A0=0.2;
for a=[1,4,8]
figure(a);
rhs1=@(t,x) (ku+V1*x.^a)./(1+x.^a)-x;
sol1=ode23(rhs1,[0 8],A0);
plot(sol1.x,sol1.y,'r.-','LineWidth',2,'MarkerSize',10);
xlabel('Time');
ylabel('Expression');
set(gca,'FontSize',24);
end

