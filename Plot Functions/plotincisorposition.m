function [] = plotincisorposition(preopICP,postopICP,v,title)
%PLOTEXCITATIONS Summary of this function goes here
%   Detailed explanation goes here

[maxNumPreOp, maxIndexPreop] = min(preopICP(:,4));
[maxNumPostOp, maxIndexPostOp] = min(postopICP(:,4));

plot3(preopICP(:,2),preopICP(:,3),preopICP(:,4),'LineWidth',1.2);
view(v(1),v(2));
hold on
plot3(preopICP(1,2),preopICP(1,3),preopICP(1,4),'bo','MarkerSize', 5, 'MarkerFaceColor', 'b')
hold on
plot3(preopICP(end,2),preopICP(end,3),preopICP(end,4),'mv','MarkerSize', 5, 'MarkerFaceColor', 'm')
hold on;
plot3(preopICP(maxIndexPreop,2),preopICP(maxIndexPreop,3),maxNumPreOp,'mx','MarkerSize', 10, 'MarkerFaceColor', 'm')
hold on
plot3(postopICP(:,2),postopICP(:,3),postopICP(:,4),'LineWidth',1.2);
view(v(1),v(2));
hold on
plot3(postopICP(1,2),postopICP(1,3),postopICP(1,4),'ro','MarkerSize', 5, 'MarkerFaceColor', 'r')
hold on
plot3(postopICP(end,2),postopICP(end,3),postopICP(end,4),'kv','MarkerSize', 5, 'MarkerFaceColor', 'k')
hold on
plot3(postopICP(maxIndexPostOp,2),postopICP(maxIndexPostOp,3),maxNumPostOp,'mx','MarkerSize', 10, 'MarkerFaceColor', 'm')
hLeg = legend('Pre Op ICP', 'Pre Op  Initial ICP', 'Pre Op  Final ICP', 'Pre Op Max Opening ICP' ,'Post Op ICP', 'Post Op Initial ICP', 'Post Op Final ICP', 'Post Op Max Opening ICP'); 
hTitle = get(hLeg,'Title');
set(hTitle,'String',title);
% if (v(1) == 0)
%     xlabel('X axis [mm]');
%     zlabel('Z axis [mm]');
    xlim([-.5 1.75]); 
% elseif(v(1) == 90)
%     ylabel('Y axis [mm]');
%     zlabel('Z axis [mm]');
% end
% xlabel('X axis [mm]');
% zlabel('Z axis [mm]');
% xlim(xLim);
% title('Lower mid incisor path (Frontal View)');