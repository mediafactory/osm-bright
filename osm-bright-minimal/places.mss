/* borders, placenames, and POIs */

/* ==== PLACES ==================================================== */
/*
#place::continent[type='continent'][zoom>=0][zoom<3] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:rgb(100,100,100);
  text-size:10;
}

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
*/
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
/*
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



/* ==== AREA LABELS ================================================ *

#landuse_label[zoom>12][area>1000000] {
  [type='industrial'],[type='commercial'],[type='parking'],
  [type='park'],[type='golf_course'] {
    text-name:'[name]';
    text-face-name:@sans;
    text-fill:#000;
    text-halo-fill:fadeout(#fff,20);
    text-halo-radius:2;
    text-placement:interior;
    text-size:11;
    text-wrap-width:20;
  }
  [type='cemetery'] {
    text-fill:darken(@cemetery,50);
  }
  [type='park'], [type='golf_course'] {
    text-fill:darken(@park,50);
  }
  [type='school'], [type='college'], [type='university'] {
    text-fill:darken(@school,50);
  }
}
#landuse_label[zoom>12][area>1000000],
#landuse_label[zoom>13][area>500000],
#landuse_label[zoom>14][area>250000],
#landuse_label[zoom>15][area>125000],
#landuse_label[zoom>16][area>612500],
#landuse_label[zoom>17] {
  text-name:'[name]';
  text-face-name:@sans;
  text-fill:#000;
  [type='pedestrian'] { text-fill:#333; }
  text-halo-fill:#fff;
  text-halo-radius:2;
  text-placement:interior;
  text-size:11;
  text-wrap-width:20;
  [zoom>14] { text-size:12; }
  [type='cemetery'] {
    text-fill:darken(@cemetery,50);
  }
  [type='park'], [type='golf_course'] {
    text-fill:darken(@park,50);
  }
  [type='school'], [type='college'], [type='university'] {
    text-fill:darken(@school,50);
  }
}

*/
