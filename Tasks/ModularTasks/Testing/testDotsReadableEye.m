function testDotsReadableEye(tracker, useRemote)
% function testDotsReadableEye(tracker, useRemote)
%
% Function for testing the dotsReadableEye class

% Possible values:
%  'dotsReadableEyePupilLabs'
%  'dotsReadableEyeEyelink'
%  'dotsReadableEyeMouseSimulator'
if nargin < 1 || isempty(tracker)
   tracker = 'dotsReadableEyePupilLabs';
end

if nargin < 2 || isempty(useRemote)
   useRemote = false;
end

if ~useRemote
   screenNumber = 0;
else
   screenNumber = 1;
end

try
   
   % Get the readableEye object
   e = feval(tracker);
   
   % set up a small screen for calibration
   e.screenEnsemble = makeScreenEnsemble(useRemote, screenNumber);
   e.screenEnsemble.callObjectMethod(@open);
   
   % Run initial calibration routine
   e.calibrate();
   
   % e.calibrate('s');
   
   dotsTheScreen.closeWindow();
   %    % Open the gaze monitor
   %    eyeGUI(topsTreeNode('test'), e);
   %
   %    % Don't buffer, don't recenter
   %    resetGaze(e, false, false);
   %    for ii = 1:100
   %       e.read();
   %       pause(0.1);
   %    end
   %
   %    % Buffer and recenter
   %    resetGaze(e, true, true);
   %    for ii = 1:100
   %       e.read();
   %       pause(0.1);
   %    end
   
catch
   dotsTheScreen.closeWindow();
end