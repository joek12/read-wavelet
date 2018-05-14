% columns: timestamp, x, y, z

M = csvread('test.csv', 1);
M(1,1);

%datetime(M(1,1), 'ConvertFrom', 'posixtime');


length = size(M); % determine size of the array (returns row vector)
% first entry in vector is the number of rows
% second entry is number of columns



plot(M(:,1), M(:,2))

