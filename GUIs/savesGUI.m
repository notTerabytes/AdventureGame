%save-screen-GUI

%creates figure
figure

%creates push buttons to be used to initialize a save file
but_a = uicontrol('style', 'pushbutton', 'string', 'Save 1', 'units', 'normalized', 'position', [0.3 0 0.4 0.2], 'callback', @eg_fun);
but_b = uicontrol('style', 'pushbutton', 'string', 'Save 1', 'units', 'normalized', 'position', [0.3 0.3 0.4 0.2], 'callback', @eg_fun);
but_c = uicontrol('style', 'pushbutton', 'string', 'Save 1', 'units', 'normalized', 'position', [0.3 0.8 0.4 0.2], 'callback', @eg_fun);
%annotation allows you to put in box circle ellipses
ellipse_position = [0.4 0.6 0.1 0.2];
ellipse_h = annotation('ellipse', ellipse_position, 'facecolor', [1 0 0]);
%slider object to control ellipse size
uicontrol('style', 'Slider', 'Min', 0.5, 'Max', 2, 'Value', 1, 'units', 'normalized', 'position', [0.1 0.2 0.08 0.25], 'callback', {@change_size, ellipse_h, ellipse_position});