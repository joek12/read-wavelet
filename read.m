close all;
clear all;

% columns: timestamp, x, y, z

M = csvread('IYKK-ZRKC-SUNF-FZCH-JPBS_1526315880000_ds000_00a05044b711_accelerometer.csv', 1);


%================get a sample time===============================
%M(1,1)

%convert unix time to real time
%=================timeconverter.m will handle this===================
%dt = datetime(M(1,1), 'ConvertFrom', 'posixtime');
%ds = datestr(dt)
%timeArray = double(ds)
%timearray = timeconverter(M(1,1))

%timeArray = datetime(timeconverter(M(:,1)));
length = size(M);
timeArray = zeros(size(1),1);
for i=1:2262
    [yy MM dd hh mm ss] = timeconverter(M(i,1));
    timeArray(i) =  datetime([yy MM dd hh mm ss]);
end


length = size(M); % determine size of the array (returns row vector)
% first entry in vector is the number of rows
% second entry is number of columns


figure

ax1 = subplot(3,1,1); % Create a 2x1 subplot with this being the top subplot
plot(ax1,timeArray, M(:,2))
title(ax1,'x acceleration')
%xlabel(ax1,'Time (s)')
ylabel(ax1,'Acceleration (m/s^2)')
grid on;
grid minor;

ax2 = subplot(3,1,2); % Middle subplot
plot(ax2,timeArray, M(:,3))
title(ax2, 'y acceleration')
%xlabel(ax2, 'Time (s)')
ylabel(ax2, 'Acceleration (m/s^2)')
grid on;
grid minor;

ax3 = subplot(3,1,3); % Bottom subplot
plot(ax3, timeArray, M(:,4))
title(ax3, 'z acceleration')
xlabel(ax3, 'Time (s)')
ylabel(ax3, 'Acceleration (m/s^2)')
grid on;
grid minor;




