function [] = plotExcitations(excitM,randPertExcit,numSim, muscles)
%PLOTEXCITATIONS Summary of this function goes here
%   Detailed explanation goes here

ymin = -0.01;
ymax = 0.12;
rng('shuffle')

musclesids = muscles(1,:);

t = excitM(:,1,1);
excit = excitM(:,musclesids,:);
pertExcit = randPertExcit(:,musclesids,:);

for i = 1:numSim
    figure(3);
    title('Pertubation Excitation Example');    
    for j = 1:(size(excit,2))
        subplot(size(excit,2),1,j)
            plot(t,pertExcit(:,j,i),'r','LineWidth',1.2);
            hold on
            ylim([ymin ymax]); 
            plot(t,excit(:,j,i),'b','LineWidth',1.2);
            hold on
            ylim([ymin ymax]); 
            xlabel('Time [s]');
            ylabel('Excitation [%]');
            rightlabel = sprintf('%d',muscles(2,j));
            yyaxis right
            ylabel(rightlabel)
            legend('Pertubation','No Pertubation');
    end

end
