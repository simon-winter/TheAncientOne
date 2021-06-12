hsp = 0;
vsp = 0;
walksp = 2;
lock = false;

// set as active on start
lock_dial = false;
o_camera.target = self;

// pulling
minDistance = 0.001;
pullSpeed = 5;
sendBack = false;
partner = o_gnome;