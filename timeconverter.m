function timearray = timeconverter(unixtime)

% convert unix time to real time and return an array of the corresponding
% day - month - year  hour - minute - second

dt = datetime(unixtime, 'ConvertFrom', 'posixtime');
ds = datestr(dt);
timeArray = double(ds);

% first 2 entries in timeArray are the day
% ascii '0' starts at 48
top = timeArray(1) - 48;
bot = timeArray(2) - 48;
day = top * 10 + bot;

% third entry is a dash (45)
% while loop to read the month until reaching a dash (45)
i = 4;
while timeArray(i) ~= 45
    
end

end