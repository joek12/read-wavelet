% columns: timestamp, x, y, z

M = csvread('IYKK-ZRKC-SUNF-FZCH-JPBS_1526315880000_ds000_00a05044b711_accelerometer.csv', 1);
M(1,1)
M(1,2)


%convert unix time to real time
dt = datetime(M(1,1), 'ConvertFrom', 'posixtime');
ds = datestr(dt);
timeArray = double(ds);





length = size(M); % determine size of the array (returns row vector)
% first entry in vector is the number of rows
% second entry is number of columns


figure
ax1 = subplot(3,1,1); % Create a 2x1 subplot with this being the top subplot
plot(ax1,M(:,1), M(:,2))
title(ax1,'x acceleration')
xlabel(ax1,'Time (s)')
ylabel(ax1,'Acceleration (m/s^2)')

ax2 = subplot(3,1,2); % Middle subplot
plot(ax2,M(:,1), M(:,3))
title(ax2, 'y acceleration')
xlabel(ax2, 'Time (s)')
ylabel(ax2, 'Acceleration (m/s^2)')

ax3 = subplot(3,1,3); % Bottom subplot
plot(ax3, M(:,1), M(:,4))
title(ax3, 'z acceleration')
xlabel(ax3, 'Time (s)')
ylabel(ax3, 'Acceleration (m/s^2)')

