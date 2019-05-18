%clear 
clc
%--------------------------------------------------------------------------

%Connect_Arduino('a', 'COM3');
%Connect_Arduino('b', 'COM9');
%Connect_Servo('s1','b','D9')
% Initialize the stepper
stepsPerRevolution = 32 * 16.032; % steps/motor rev * motor turn/shaft turn
xStepper = Stepper(a, stepsPerRevolution, 'D8', 'D9', 'D10', 'D11');
yStepper = Stepper(a, stepsPerRevolution,'D2','D3', 'D5', 'D6');

[distance, xCenter, yCenter]=VisionSystemFunction();
initVelocity = 0.5;

centered = true;
if (xCenter ~= (640/2))
    centered = false;
end
if (centered == true)
    disp('Target is centered. Proceeding as normal...')
    xAngle = 0.5;

elseif (centered == false)
    xTheta = xCenter;
    xAngle = xTheta/180;
end

yTheta = asind(initVelocity/distance);
disp('The y value sent to the stepper was: ')
disp(yTheta)
yTheta = 45 - yTheta;
yTheta = (yTheta*400)/45 ; %Ratio of steps per degree for our motor

disp('The x value sent to the stepper was: ')
disp(xAngle)

%400 steps = 45 degrees
%800 steps = 90 degrees

xTheta = -xTheta;
%Setup for the shot
disp('initial movement')
MoveClockWise(yStepper,0,yTheta) %move it to desired location
pause(1)
MoveClockWise(xStepper,0,xTheta) %move it to desired location

%Firing sequence
pause(5)
disp('FIRE')
writePosition(s1, 0.1);
pause(0.7)
writePosition(s1, 0.5);
pause(5)

%Reset to normal position
disp('reset')
MoveCounterClockWise(yStepper, 0 ,yTheta) %return to original position
pause(1)
MoveCounterClockWise(xStepper, 0 ,xTheta) %return to original position
disp('done')