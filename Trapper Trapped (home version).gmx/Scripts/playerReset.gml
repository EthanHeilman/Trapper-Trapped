if (!instance_exists(player)) {
    if (instance_exists(roommonitor)) {
        instance_create(roommonitor.x, roommonitor.y, player);
    }
    else {
        instance_create(0, 0, player);   
    }
}
//Inventory
player.comp1_count = 0;
player.comp2_count = 0;
player.comp3_count = 0;
player.trap1_count = 0;
player.trap2_count = 0;
//Core stats
player.pspeed = 4;
player.phealth = 4; 
player.invincible = 0; //For health impact delays
player.justarrived = 0; //Keeps players from instantly teleporting back after arriving in a room
player.priorroom = 0;
for (i = 20; i > 0; i--) {
    player.rxstart[i] = 0; //Xcoord - indicates where the player starts in the room
    player.rystart[i] = 0; //Ycoord - indicates where the player starts in the room
    player.rpersist[i] = 0; //Tracks room persistence - controls spawning and despawning rooms
}
