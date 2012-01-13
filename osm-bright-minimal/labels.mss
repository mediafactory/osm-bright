/* ================================================================== */
/* PLACE NAMES
/* ================================================================== */

/* Font sets are defined in palette.mss */

/* ---- Countries --------------------------------------------------- */

#place::country[type='country'][zoom>3][zoom<9] {
  text-name:'[name]';
  text-face-name:@sans_bold;
  text-placement:point;
  text-fill:@country_text;
  text-halo-fill: @country_halo;
  text-halo-radius: 1;
  [zoom=3] {
    text-size:10 + @text_adjust;
    text-wrap-width: 40;
  }
  [zoom=4] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
  }
  [zoom>4] {
    text-halo-radius: 2;
  }
  [zoom=5] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
    text-line-spacing: 1;
  }
  [zoom=6] {
    text-size:12 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 80;
    text-line-spacing: 2;
  }
  [zoom=7] {
    text-size:14 + @text_adjust;
    text-character-spacing: 2;
  }
}

/* ---- Cities ------------------------------------------------------ */

#place::marker[type='city'][zoom>4][zoom<9] {
    marker-width: 2;
    marker-fill: #333;
    marker-line-color: #fff;
}
#place::city[type='city'][zoom>4][zoom<15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:#888;
  text-halo-fill:fadeout(#fff,10);
  text-halo-radius:2;
  text-transform: uppercase;
  [zoom<=8] {
    text-size: 10;
    text-halo-radius:1;
    text-dx: 5;
    text-dy: 3;
    text-placement-type: simple;
    text-placements: "E,W,NE,SW,NW,NE,N,S";
    text-wrap-width: 50;
  }
  [zoom=9] {
    text-size:11;
    text-wrap-width: 60;
  }
  [zoom=10] {
    text-size:12;
    text-wrap-width: 70;
  }
  [zoom=11] {
    text-size:13;
    text-character-spacing: 1;
    text-wrap-width: 80;
  }
  [zoom=12] {
    text-size:13;
    text-character-spacing: 2;
    text-wrap-width: 100;
  }
  [zoom=13] {
    text-size:14;
    text-character-spacing: 3;
    text-wrap-width: 200;
  }
  [zoom=14] {
    text-size:15;
    text-character-spacing: 4;
    text-wrap-width: 300;
  }
}

/* ---- Towns ------------------------------------------------------- */

#place::town[type='town'][zoom>7] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:#666;
  text-size:10;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>8] { text-halo-radius:2; }
  [zoom>10]{ text-size:11; text-fill:#000; }
  [zoom>11]{ text-size:12; }
  [zoom>14]{ text-size:13; }
}

/* ---- Villages ---------------------------------------------------- */

#place::village[type='village'][zoom>10] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:#444;
  text-size:10;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>12] { text-size:11; text-fill:#000; }
  [zoom>14] { text-size:12; }
}

/* ---- Other small places ------------------------------------------ */

#place::small[type='suburb'][zoom>12],
#place::small[type='hamlet'][zoom>12],
#place::small[type='locality'][zoom>12] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:#444;
  text-size:10;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>14] { text-size:11; text-fill:#000; }
}


/* ================================================================== */
/* WATER, LAND & BUILDING NAMES
/* ================================================================== */

#water_label[zoom>10][area>102400000],
#water_label[zoom>11][area>25600000],
#water_label[zoom>12][area>6400000],
#water_label[zoom>13][area>1600000],
#water_label[zoom>14][area>320000],
#water_label[zoom>15][area>80000],
#water_label[zoom>16][area>20000],
#water_label[zoom>16] {
  text-name: '[name]';
  text-face-name: @sans;
  text-fill: #f8f8f8;
  text-halo-fill: lighten(@water,0%);
  text-halo-radius: 2;
  text-placement: interior;
  text-size: 11;
  text-wrap-width: 20;
}

/*#waterway_label[type='river'][zoom>5],
#waterway_label[type='canal'][zoom>9],
#waterway_label[type='stream'][zoom>11] {
  text-name: '[name]';
  text-face-name: @sans;
  text-fill: #f8f8f8;
  text-halo-fill: lighten(@water,0%);
  text-halo-radius: 2;
  text-placement: line;
  text-min-distance: 400;
  text-size: 10;
}*/

#landuse_label[zoom>12][area>1000000] {
  [type='industrial'],[type='commercial'],[type='parking'],
  [type='park'],[type='golf_course'] {
    text-name:'[name]';
    text-face-name:@sans;
    text-fill:darken(@land,20%);
    text-halo-fill: lighten(@land,0%);
    text-halo-radius:2;
    text-placement:interior;
    text-size:10;
    text-wrap-width:20;
  }
  /*[type='cemetery'] {
    text-fill:darken(@cemetery,50);
  }
  [type='park'], [type='golf_course'] {
    text-fill:darken(@park,50);
  }
  [type='school'], [type='college'], [type='university'] {
    text-fill:darken(@school,50);
  }*/
}
#landuse_label[zoom>12][area>1000000],
#landuse_label[zoom>13][area>500000],
#landuse_label[zoom>14][area>250000],
#landuse_label[zoom>15][area>125000],
#landuse_label[zoom>16][area>612500],
#landuse_label[zoom>17] {
  text-name:'[name]';
  text-face-name:@sans;
  text-fill:darken(@land,20%);
  [type='pedestrian'] { text-fill:#333; }
  text-halo-fill: lighten(@land,0%);
  text-halo-radius:2;
  text-placement:interior;
  text-size:10;
  text-wrap-width:20;
  [zoom>14] { text-size:12; }
  /*[type='cemetery'] {
    text-fill:darken(@cemetery,50);
  }
  [type='park'], [type='golf_course'] {
    text-fill:darken(@park,50);
  }
  [type='school'], [type='college'], [type='university'] {
    text-fill:darken(@school,50);
  }*/
}

/* ================================================================== */
/* ROAD LABELS & SHIELDS
/* ================================================================== */

/* ---- HIGHWAY SHIELDS --------------------------------------------- */

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

/* Mapnik does not yet support character-spacing adjustments for 
   labels placed along a line. We can fake this using the replace()
   function in the text-name parameter by replacing each character
   with itself followed by one or more spaces. */

#motorway_label[zoom=14] {
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
}

#road_label[zoom>=15][class='motorway'] {
  text-transform: uppercase;
  text-name: "[name].replace('([\S\ ])','$1 ')";
  text-placement: line;
  text-face-name: @sans_bold;
  text-fill: #777;
  text-size: 8;
  text-halo-fill: @road_major;
  text-halo-radius: 1;
  [zoom>=16] {
    text-size: 10;
    text-name: "[name].replace('([\S\ ])','$1  ')";
  }
  [zoom>=17] {
    text-size: 14;
    text-name: "[name].replace('([\S\ ])','$1   ')";
    text-halo-radius: 2;
  }
  [zoom>=18] {
    text-size: 16;
    text-name: "[name].replace('([\S\ ])','$1    ')";
  }
}

#road_label[zoom>=15][class='mainroad'] {
  text-transform: uppercase;
  text-name: "[name].replace('([\S\ ])','$1 ')";
  text-placement: line;
  text-face-name: @sans;
  text-fill: #888;
  text-size: 7;
  text-halo-fill: @road_medium;
  text-halo-radius: 1;
  [zoom>=16] { text-size: 8; }
  [zoom>=17] {
    text-size: 10;
    text-name: "[name].replace('([\S\ ])','$1  ')";
    text-halo-radius: 2;
  }
  [zoom>=18] {
    text-size: 14;
    text-name: "[name].replace('([\S\ ])','$1   ')";
  }
}

#road_label[zoom>=16][class='minorroad'] {
  text-transform: uppercase;
  text-name: "[name].replace('([\S\ ])','$1 ')";
  text-placement: line;
  text-face-name: @sans_bold;
  text-fill: #999;
  text-size: 7;
  text-halo-fill: @road_major;
  text-halo-radius: 1;
  [zoom>=17] { text-size: 8; }
  [zoom>=18] {
    text-size: 10;
    text-name: "[name].replace('([\S\ ])','$1  ')";
    text-halo-radius: 2;
  }
}

/**/
