clearvars;
vid = videoinput('gige', 1, 'Mono8');
src = getselectedsource(vid);
vid.PreviewFullBitDepth = 'on';
h = preview(vid);
setEmergent('default',src);
statusCam(src);
