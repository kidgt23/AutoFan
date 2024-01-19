close all; clear all; % Closes all and clears all
a = arduino('COM3', 'Uno', 'Libraries','Adafruit/DHT22') % Connects Arduino to Temp & Humdity sensor
sensor = addon(a, 'Adafruit/DHT22', 'D3') % sensor is then added on through the dht22 libary
temperature = readTemperature(sensor) % temp will now equal the reading of the sensor
x = 0; %intial x for graph
y =0; %inital y for graph
 % inilzation variable so codes run forever
stop = false; % The intial stop is false
while ~stop % while loop thats run if statement ( This statement means while not stopping or also known as logical not)
if (temperature >=16.0) && (readVoltage(a,'A1')) >= 3.0 %these are the 2 conditions my mini 12v fan will turn with
writeDigitalPin(a,'D2',1); % writing to digital pin d2 allows me to turn on fan ( 1 = true in matlab)
temperature = readTemperature(sensor); % I read the temperature in the while loop so it constanlty changes
readVoltage(a,'A1'); % I then read the voltage of the 'A1' pin which is the moisture sensor
fprintf('Temp: %.2f °C\n', temperature); % This allows me to display temp ( Reference from [1] in report DHT22 example)
x = [x temperature]; % This graphs the x versus the temperature
y = [y readVoltage(a,'A1')]; % this graphs the y versus the reading of the voltage on the moisture sensor
subplot(2,2,1),plot(x); % Use subplot to show me both readings at once
title(' Tempature Graph'); % title for the graph
xlabel('Constant'); % label for the x axis
ylabel('Temp'); % label for the y axis
grid; % Shows grip for graph 1
subplot(2,2,2),plot(y) % the 2nd graph subplot
xlabel('Constant'); % label for x axis 
ylabel('Air level via voltage'); % label for the y axis 
title('Moisture Sensor Graph') % title of graph
grid; % this command allows me to display a grid [Learned in EECS 1011]
pause(2); % Another pause duration for 2 seconds
else % else statement
     writeDigitalPin(a,'D2',0) % this will keep the fan off if conditons are not meet
     pause(2); % 2 second duration pause again
     disp('Room is nice and cool') % Will constantly update that room is nice and cool
end % 1 END STATEMENT for the  if loop
  % Emergency Stop button
 stop = readDigitalPin(a,'D6')
end % 1 END for the while loop

% Concludes the code% % Note it runs forever unless conditions are meet for
% fan to turn off


 