#rail[zoom>=9] {
  line-color: #fff;
  line-dasharray: 1,2;
  [zoom=9] { line-width: 0.2; }
  [zoom=10] { line-width: 0.5; }
  [zoom=11] { line-width: 0.8; }
  [zoom=12] { line-width: 1; }
  [zoom=13] { line-width: 1.5; }
  [zoom=14] { line-width: 2; }
  [zoom=15] { line-width: 3; }
  [zoom=16] { line-width: 4; }
  [zoom=17] { line-width: 6; }
  [zoom=18] { line-width: 10; }
}

#roads_low[zoom>=5][zoom<=8] {
  [class='major'] { line-color: @road_major; }
  [class='medium'] { line-color: @road_medium; }
  [zoom=8] {
    [class='major'] { line-width: 1; }
    [class='medium'] { line-width: 0.5; } }
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

@roads_Z_11_min: 0.2;
@roads_Z_11_med: 1;
@roads_Z_11_maj: 2;

@roads_Z_15_min: 3;
@roads_Z_15_med: 6;
@roads_Z_15_maj: 7;

#roads_high[zoom>=11][zoom<=20] {
  [zoom>=13]::a[type='service'] { line-color: @road_minor; }
  ::a[class='minor'] { line-color: @road_minor; }
  ::b[class='medium'] { line-color: @road_medium; }
  ::c[class='major'] { line-color: @road_major; }
  ::a[class='minor'][tunnel=1],
  ::b[class='medium'][tunnel=1],
  ::c[class='major'][tunnel=1] {
    line-dasharray: 3,1;
    line-cap: butt;
    line-opacity: 0.5;
  }
  [zoom=11] {
    ::a[class='minor'] { line-width: @roads_Z_11_min; }
    ::b[class='medium'] { line-width: @roads_Z_11_med; }
    ::c[class='major'] { line-width: @roads_Z_11_maj; } }
  [zoom=12] {
    ::c[class='major'] { line-width: 2.5; }
    ::b[class='medium'] { line-width: 1.2; }
    ::a[class='minor'] { line-width: 0.4; } }
  [zoom=13] {
    ::c[class='major'] { line-width: 3; }
    ::b[class='medium'] { line-width: 1.5; }
    ::a[class='minor'] { line-width: 0.8; }
    ::a[type='service'] { line-width: 0.4; }
  }
  [zoom=14] {
    ::c[class='major'] { line-width: 4; }
    ::b[class='medium'] { line-width: 2.5; }
    ::a[class='minor'] { line-width: 1.6; }
    ::a[type='service'] { line-width: 0.8; }
  }
  [zoom=15] {
    ::c[class='major'] { line-width: @roads_Z_15_maj; }
    ::b[class='medium'] { line-width: @roads_Z_15_med; }
    ::a[class='minor'] { line-width: @roads_Z_15_min; }
    ::a[type='service'] { line-width: 1.5; }
  }
  [zoom=16] {
    ::c[class='major'] { line-width: 10; }
    ::b[class='medium'] { line-width: 8; }
    ::a[class='minor'] { line-width: 6; }
    ::a[type='service'] { line-width: 3; }
  }
  [zoom=17] {
    ::c[class='major'] { line-width: 20; }
    ::b[class='medium'] { line-width: 15; }
    ::a[class='minor'] { line-width: 10; }
    ::a[type='service'] { line-width: 5; }
  }
  [zoom=18] {
    ::c[class='major'] { line-width: 40; }
    ::b[class='medium'] { line-width: 30; }
    ::a[class='minor'] { line-width: 20; }
    ::a[type='service'] { line-width: 10; }
  }
  ::a[class='minor'],
  ::b[class='medium'],
  ::c[class='major'] {
    line-cap: butt;
  }
}

#bridge[zoom>=14][zoom<=20] {
  ::c[class='minor'],
  ::c[class='medium'],
  ::c[class='major'] {
    line-cap: butt;
    line-color: fadeout(#000,90%);
  }
  ::f[class='minor'],
  ::f[class='medium'],
  ::f[class='major'] {
    line-cap: square;
    line-color: @road_major;
  }
  [zoom=14] {
    ::c[class='major'] { line-width: 4 + 4; }
    ::c[class='medium'] { line-width: 2.5 + 4; }
    ::c[class='minor'] { line-width: 1.6 + 4; }
    ::f[class='major'] { line-width: 4; }
    ::f[class='medium'] { line-width: 2.5; }
    ::f[class='minor'] { line-width: 1.6; } }
  [zoom=15] {
    ::c[class='major'] { line-width: @roads_Z_15_maj + 4; }
    ::c[class='medium'] { line-width: @roads_Z_15_med + 4; }
    ::c[class='minor'] { line-width: @roads_Z_15_min + 4; }
    ::f[class='major'] { line-width: @roads_Z_15_maj; }
    ::f[class='medium'] { line-width: @roads_Z_15_med; }
    ::f[class='minor'] { line-width: @roads_Z_15_min; } }
  [zoom=16] {
    ::f[class='major'] { line-width: 10; }
    ::f[class='medium'] { line-width: 8; }
    ::f[class='minor'] { line-width: 5; } }
  [zoom=17] {
    ::f[class='major'] { line-width: 20; }
    ::f[class='medium'] { line-width: 15; }
    ::f[class='minor'] { line-width: 10; } }
  [zoom=18] {
    ::f[class='major'] { line-width: 40; }
    ::f[class='medium'] { line-width: 30; }
    ::f[class='minor'] { line-width: 20; } }
}


/* == HIGHWAY SHIELDS == */
@font_shield: "Arial Bold";
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

#way_label[zoom>=14][class='major'] {
  text-transform: uppercase;
  text-name: "[name].replace('([\S\ ])','$1 ')";
  text-placement: line;
  text-face-name: @sans_bold;
  text-fill: #aaa;
  text-size: 7;
  [zoom>=15] { text-size: 8; }
  [zoom>=16] { text-size: 9; }
  [zoom>=17] { text-size: 12; }
  [zoom>=18] { text-size: 14; }
}

#road_label[zoom>=15][class='medium'] {
  text-transform: uppercase;
  text-name: "[name].replace('([\S\ ])','$1 ')";
  text-placement: line;
  text-face-name: @sans_bold;
  text-fill: #bbb;
  text-size: 7;
  [zoom>=16] { text-size: 8; }
  [zoom>=17] { text-size: 10; }
  [zoom>=18] { text-size: 12; }
}

#road_label[zoom>=16][class='minor'] {
  text-transform: uppercase;
  text-name: "[name].replace('([\S\ ])','$1 ')";
  text-placement: line;
  text-face-name: @sans_bold;
  text-fill: #ccc;
  text-size: 7;
  [zoom>=17] { text-size: 8; }
  [zoom>=18] { text-size: 10; }
}