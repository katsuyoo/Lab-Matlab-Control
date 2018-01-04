% demoDots.m%% demo random dots using DotsX code%% shows 6 dots fields%%   1 (upper left): unlimited lifetime, 'random' dots drawn at random%       locations, no wrapping, fixed direction%%   2 (upper right): limited lifetime (each frame chooses to 'move' dots%       that have been moving the smallest number of frames),%       'random' dots drawn at random locations, no wrapping, fixed direction%%   3 (middle left): unlimited lifetime, 'random' dots drawn at random%       offsets ('move' mode), wrapping (dots that leave one end of the%       aperture are drawn appearing at the other side, but at a random%       height/width), fixed direction%%   4 (middle right): unlimited lifetime, 'random' dots drawn at random%       locations, wrapping, fixed direction%%   5 (lower left): unlimited lifetime, 'random' dots drawn at random%       locations, wrapping, direction of each dot randomized +- 45 deg%%   6 (lower right): limited lifetime, 'random' dots drawn at random%       locations, wrapping, fixed direction% Copyright 2004 by Joshua I. Gold%   University of Pennsylvaniatry    % change priority (using Priority(<value0-9>)) to change    %   the priority of the process and speed things up    rInit(1, 'dXscreen', {'screenMode', 'local', 'showWarnings', false});    rAdd('dXtarget', 12, 'visible', true, 'diameter', 0.5, 'color', [255,0,0], ...        'x', {-12 -2 2 12 -12 -2 2 12 -12 -2  2 12}, ...        'y', {  8  8 8  8   0  0 0  0  -8 -8 -8 -8});    rAdd('dXdots', 6, 'visible', true, 'size', 3, 'speed', 3, ...        'smooth', {1 1 1 0 0 0}, 'coherence', 90, 'diameter', 6, ...        'density', 50, ...        'x', {-7 7 -7 7 -7  7}, ...        'y', { 8 8  0 0 -8 -8}, ...        'lifetimeMode', {'random' 'limit'  'random' 'random' 'random' 'limit'}, ...        'flickerMode',  {'random' 'random' 'move'   'random' 'random' 'random'}, ...        'wrapMode',     {'random' 'random' 'wrap'   'wrap'   'wrap'   'wrap'}, ...        'deltaDir',     {0        0         0       0         45       0   });    rGraphicsDraw(inf);    rGraphicsBlank;    rDonecatch	rDone    rethrow(lasterror);end