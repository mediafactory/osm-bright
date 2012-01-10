#roads_low[zoom>=5][zoom<=8] {
  [type='motorway'] { line-color: @road_major; }
  [type='trunk'] { line-color: @road_medium; }
  [zoom=5] {
    [type='motorway'] { line-width: 0.4; }
    [type='trunk'] { line-width: 0.2; } }
  [zoom=6] {
    [type='motorway'] { line-width: 0.5; }
    [type='trunk'] { line-width: 0.25; } }
  [zoom=7] {
    [type='motorway'] { line-width: 0.6; }
    [type='trunk'] { line-width: 0.3; } }
  [zoom=8] {
    [type='motorway'] { line-width: 1; }
    [type='trunk'] { line-width: 0.5; } }
}

#roads_med[zoom>=9][zoom<=10] {
  [class='major'] { line-color: @road_major; }
  [class='medium'] { line-color: @road_medium; }
  [zoom=9] {
    [class='major'] { line-width: 1.4; }
    [class='medium'] { line-width: 0.3; } }
  [zoom=10] {
    [class='major'] { line-width: 1.8; }
    [class='medium'] { line-width: 0.5; } }
}

/* Set up road with variables that are used in road & bridge styles */

@rdz11_maj: 2;
@rdz11_med: 1;
@rdz11_min: 0.2;

@rdz12_maj: 2.5;
@rdz12_med: 1.2;
@rdz12_min: 0.4;

@rdz13_maj: 3;
@rdz13_med: 1.5;
@rdz13_min: 0.8;

@rdz14_maj: 4;
@rdz14_med: 2.5;
@rdz14_min: 1.6;

@rdz15_maj: 7;
@rdz15_med: 6;
@rdz15_min: 3;

@rdz16_maj: 10;
@rdz16_med: 8;
@rdz16_min: 6;

@rdz17_maj: 20;
@rdz17_med: 15;
@rdz17_min: 10;

@rdz18_maj: 40;
@rdz18_med: 30;
@rdz18_min: 20;

#roads_high[zoom>=11][zoom<=20] {
  [class='railway'] {
    line-color: @rail_line;
    line-dasharray: 1,1;
    [zoom>15] { line-dasharray: 1,2; } 
  }
  [class='noauto'],[class='service'],[class='minorroad'] { 
    line-color: @road_minor;
    line-width: 0;
  }
  [class='mainroad'] { line-color: @road_medium; }
  [class='motorway'] { line-color: @road_major; }
  [class='minorroad'][tunnel=1],
  [class='mainroad'][tunnel=1],
  [class='motorway'][tunnel=1] {
    line-dasharray: 4,2;
    line-cap: butt;
    line-opacity: 0.5;
  }
  [zoom=11] {
    [class='motorway'] { line-width: @rdz11_maj; }
    [class='mainroad'] { line-width: @rdz11_med; }
    [class='minorroad']{ line-width: @rdz11_min; }
    [class='railway']  { line-width: 0.2; }
  }
  [zoom=12] {
    [class='motorway'] { line-width: @rdz12_maj; }
    [class='mainroad'] { line-width: @rdz12_med; }
    [class='minorroad']{ line-width: @rdz12_min; }
    [class='railway']  { line-width: 0.4; }
  }
  [zoom=13] {
    [class='motorway'] { line-width: @rdz13_maj; }
    [class='mainroad'] { line-width: @rdz13_med; }
    [class='minorroad']{ line-width: @rdz13_min; }
    [class='service']  { line-width: @rdz13_min / 2; }
    [class='noauto']   { line-width: @rdz13_min / 4; line-dasharray: 1,1; }
    [class='railway']  { line-width: 0.8; }
  }
  [zoom=14] {
    [class='motorway'] { line-width: @rdz14_maj; }
    [class='mainroad'] { line-width: @rdz14_med; }
    [class='minorroad']{ line-width: @rdz14_min; }
    [class='service']  { line-width: @rdz14_min / 2; }
    [class='noauto']   { line-width: @rdz14_min / 4; line-dasharray: 1,1; }
    [class='railway']  { line-width: 1; }
  }
  [zoom=15] {
    [class='motorway'] { line-width: @rdz15_maj; }
    [class='mainroad'] { line-width: @rdz15_med; }
    [class='minorroad']{ line-width: @rdz15_min; }
    [class='service']  { line-width: @rdz15_min / 2; }
    [class='noauto']   { line-width: @rdz15_min / 4; line-dasharray: 1,1; }
    [class='railway']  { line-width: 2; }
  }
  [zoom=16] {
    [class='motorway'] { line-width: @rdz16_maj; }
    [class='mainroad'] { line-width: @rdz16_med; }
    [class='minorroad']{ line-width: @rdz16_min; }
    [class='service']  { line-width: @rdz16_min / 2; }
    [class='noauto']   { line-width: @rdz16_min / 4; line-dasharray: 2,1; }
    [class='railway']  { line-width: 3; }
  }
  [zoom=17] {
    [class='motorway'] { line-width: @rdz17_maj; }
    [class='mainroad'] { line-width: @rdz17_med; }
    [class='minorroad']{ line-width: @rdz17_min; }
    [class='service']  { line-width: @rdz17_min / 2; }
    [class='noauto']   { line-width: @rdz17_min / 4; line-dasharray: 2,1; }
    [class='railway']  { line-width: 0.2; }
  }
  [zoom=18] {
    [class='motorway'] { line-width: 40; }
    [class='mainroad'] { line-width: 30; }
    [class='minorroad']{ line-width: 20; }
    [class='service']  { line-width: @rdz17_min / 2; }
    [class='noauto']   { line-width: @rdz17_min / 4; line-dasharray: 2,1; }
    [class='railway']  { line-width: 4; }
  }
}

/* == HIGHWAY SHIELDS == */
@font_shield: @sans_bold;
#motorway_label[zoom>=11][zoom<=14][reflen<=6] {
  shield-name: "[ref]";
  shield-size: 9;
  shield-face-name: @font_shield;
  shield-fill: #909090;
  shield-file: url(img/shield-small-light-1.png);
  [reflen=2] { shield-file: url(img/shield-small-light-2.png); }
  [reflen=3] { shield-file: url(img/shield-small-light-3.png); }
  [reflen=4] { shield-file: url(img/shield-small-light-4.png); }
  [reflen=5] { shield-file: url(img/shield-small-light-5.png); }
  [reflen=6] { shield-file: url(img/shield-small-light-6.png); }
  [zoom=11] { shield-min-distance: 80; }
  [zoom=12] { shield-min-distance: 100; }
  [zoom=13] { shield-min-distance: 140; }
  [zoom=14] { shield-min-distance: 200; }
}

/* == ROAD LABELS == */

/*#motorway_label[zoom>=14][class='motorways'] {
  text-transform: uppercase;
  text-name: "[name].replace('([\S\ ])','$1 ')";
  text-placement: line;
  text-face-name: @sans_bold;
  text-fill: #666;
  text-size: 7;
  [zoom>=15] { text-size: 8; }
  [zoom>=16] { text-size: 9; }
  [zoom>=17] { text-size: 12; }
  [zoom>=18] { text-size: 14; }
}*/

#road_label[zoom>=15][class='mainroads'] {
  text-transform: uppercase;
  text-name: "[name].replace('([\S\ ])','$1 ')";
  text-placement: line;
  text-face-name: @sans_bold;
  text-fill: #666;
  text-size: 7;
  [zoom>=16] { text-size: 8; }
  [zoom>=17] { text-size: 10; }
  [zoom>=18] { text-size: 12; }
}

#road_label[zoom>=16][class='minorroads'] {
  text-transform: uppercase;
  text-name: "[name].replace('([\S\ ])','$1 ')";
  text-placement: line;
  text-face-name: @sans_bold;
  text-fill: #666;
  text-size: 7;
  [zoom>=17] { text-size: 8; }
  [zoom>=18] { text-size: 10; }
}
