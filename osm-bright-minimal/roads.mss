#rail[zoom>=9] {
  line-color: #fff;
  line-dasharray: 1,1;
  [zoom=9] { line-width: 0.2; }
  [zoom=10] { line-width: 0.5; }
  [zoom=11] { line-width: 0.8; }
  [zoom=12] { line-width: 0.4; }
  [zoom=13] { line-width: 0.6; }
  [zoom=14] { line-width: 0.8; }
  [zoom=15] { line-width: 1; }
  [zoom>15] { line-dasharray: 1,2; } 
  [zoom=16] { line-width: 2; }
  [zoom=17] { line-width: 3; }
  [zoom=18] { line-width: 6; }
}

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
@rdz13_svc: 0.4;

@rdz14_maj: 4;
@rdz14_med: 2.5;
@rdz14_min: 1.6;
@rdz14_svc: 0.8;

@rdz15_maj: 7;
@rdz15_med: 6;
@rdz15_min: 3;
@rdz15_svc: 1.5;

@rdz16_maj: 10;
@rdz16_med: 8;
@rdz16_min: 6;
@rdz16_svc: 3;

#roads_high[zoom>=11][zoom<=20] {
  [zoom>=13][type='service'] { line-color: @road_minor; }
  [class='minorroads'] { line-color: @road_minor; }
  [class='mainroads'] { line-color: @road_medium; }
  [class='motorways'] { line-color: @road_major; }
  [class='minorroads'][tunnel=1],
  [class='mainroads'][tunnel=1],
  [class='motorways'][tunnel=1] {
    line-dasharray: 4,2;
    line-cap: butt;
    line-opacity: 0.5;
  }
  [zoom=11] {
    [class='motorways'] { line-width: @rdz11_maj; }
    [class='mainroads'] { line-width: @rdz11_med; }
    [class='minorroads'] { line-width: @rdz11_min; }
  }
  [zoom=12] {
    [class='motorways'] { line-width: @rdz12_maj; }
    [class='mainroads']{ line-width: @rdz12_med; }
    [class='minorroads'] { line-width: @rdz12_min; }
  }
  [zoom=13] {
    [class='motorways']  { line-width: @rdz13_maj; }
    [class='mainroads'] { line-width: @rdz13_med; }
    [class='minorroads']  { line-width: @rdz13_min; }
    [class='service']{ line-width: @rdz13_svc; }
  }
  [zoom=14] {
    [class='motorways']  { line-width: @rdz14_maj; }
    [class='mainroads'] { line-width: @rdz14_med; }
    [class='minorroads']  { line-width: @rdz14_min; }
    [class='service']{ line-width: @rdz14_svc; }
  }
  [zoom=15] {
    [class='motorways']  { line-width: @rdz15_maj; }
    [class='mainroads'] { line-width: @rdz15_med; }
    [class='minorroads']  { line-width: @rdz15_min; }
    [class='service']{ line-width: @rdz15_svc; }
  }
  [zoom=16] {
    [class='motorways']  { line-width: @rdz16_maj; }
    [class='mainroads'] { line-width: @rdz16_med; }
    [class='minorroads']  { line-width: @rdz16_min; }
    [class='service']{ line-width: @rdz16_svc; }
  }
  [zoom=17] {
    [class='motorways'] { line-width: 20; }
    [class='mainroads'] { line-width: 15; }
    [class='minorroads'] { line-width: 10; }
    [type='service'] { line-width: 5; }
  }
  [zoom=18] {
    [class='motorways'] { line-width: 40; }
    [class='mainroads'] { line-width: 30; }
    [class='minorroads'] { line-width: 20; }
    [type='service'] { line-width: 10; }
  }
  [class='minorroads'],
  [class='mainroads'],
  [class='motorways'] {
    line-cap: round;
  }
}

@bc: darken(@land,3%); /* bridge casing */
#bridge[zoom=16] {
  [z_order=10] {
    ::bc10 {
      [class='motorways']  { line-width: @rdz16_maj+3; line-color:@bc; }
      [class='mainroads'] { line-width: @rdz16_med+3; line-color:@bc; }
      [class='minorroads']  { line-width: @rdz16_min+3; line-color:@bc; }
      [class='service']{ line-width: @rdz16_svc+3; line-color:@bc; }
    }
    ::bf10 {
      [class='motorways']  { line-width: @rdz16_maj; line-color:@road_major; }
      [class='mainroads'] { line-width: @rdz16_med; line-color:@road_medium; }
      [class='minorroads']  { line-width: @rdz16_min; line-color:@road_minor; }
      [class='service']{ line-width: @rdz16_svc; line-color:@road_minor; }
    }
  }
  [z_order=11] {
    ::bc11 {
      [class='motorways']  { line-width: @rdz16_maj+3; line-color:@bc; }
      [class='mainroads'] { line-width: @rdz16_med+3; line-color:@bc; }
      [class='minorroads']  { line-width: @rdz16_min+3; line-color:@bc; }
      [class='service']{ line-width: @rdz16_svc+3; line-color:@bc; }
    }
    ::bf11 {
      [class='motorways']  { line-width: @rdz16_maj; line-color:@road_major; }
      [class='mainroads'] { line-width: @rdz16_med; line-color:@road_medium; }
      [class='minorroads']  { line-width: @rdz16_min; line-color:@road_minor; }
      [class='service']{ line-width: @rdz16_svc; line-color:@road_minor; }
    }
  }
  [z_order=12] {
    ::bc12 {
      [class='motorways']  { line-width: @rdz16_maj+3; line-color:@bc; }
      [class='mainroads'] { line-width: @rdz16_med+3; line-color:@bc; }
      [class='minorroads']  { line-width: @rdz16_min+3; line-color:@bc; }
      [class='service']{ line-width: @rdz16_svc+3; line-color:@bc; }
    }
    ::bf12 {
      [class='motorways']  { line-width: @rdz16_maj; line-color:@road_major; }
      [class='mainroads'] { line-width: @rdz16_med; line-color:@road_medium; }
      [class='minorroads']  { line-width: @rdz16_min; line-color:@road_minor; }
      [class='service']{ line-width: @rdz16_svc; line-color:@road_minor; }
    }
  }
  [z_order=13] {
    ::bc13 {
      [class='motorways']  { line-width: @rdz16_maj+3; line-color:@bc; }
      [class='mainroads'] { line-width: @rdz16_med+3; line-color:@bc; }
      [class='minorroads']  { line-width: @rdz16_min+3; line-color:@bc; }
      [class='service']{ line-width: @rdz16_svc+3; line-color:@bc; }
    }
    ::bf13 {
      [class='motorways']  { line-width: @rdz16_maj; line-color:@road_major; }
      [class='mainroads'] { line-width: @rdz16_med; line-color:@road_medium; }
      [class='minorroads']  { line-width: @rdz16_min; line-color:@road_minor; }
      [class='service']{ line-width: @rdz16_svc; line-color:@road_minor; }
    }
  }
  [z_order=14] {
    ::bc14 {
      [class='motorways']  { line-width: @rdz16_maj+3; line-color:@bc; }
      [class='mainroads'] { line-width: @rdz16_med+3; line-color:@bc; }
      [class='minorroads']  { line-width: @rdz16_min+3; line-color:@bc; }
      [class='service']{ line-width: @rdz16_svc+3; line-color:@bc; }
    }
    ::bf14 {
      [class='motorways']  { line-width: @rdz16_maj; line-color:@road_major; }
      [class='mainroads'] { line-width: @rdz16_med; line-color:@road_medium; }
      [class='minorroads']  { line-width: @rdz16_min; line-color:@road_minor; }
      [class='service']{ line-width: @rdz16_svc; line-color:@road_minor; }
    }
  }
  [z_order=15] {
    ::bc15 {
      [class='motorways']  { line-width: @rdz16_maj+3; line-color:@bc; }
      [class='mainroads'] { line-width: @rdz16_med+3; line-color:@bc; }
      [class='minorroads']  { line-width: @rdz16_min+3; line-color:@bc; }
      [class='service']{ line-width: @rdz16_svc+3; line-color:@bc; }
    }
    ::bf15 {
      [class='motorways']  { line-width: @rdz16_maj; line-color:@road_major; }
      [class='mainroads'] { line-width: @rdz16_med; line-color:@road_medium; }
      [class='minorroads']  { line-width: @rdz16_min; line-color:@road_minor; }
      [class='service']{ line-width: @rdz16_svc; line-color:@road_minor; }
    }
  }
  [z_order=16] {
    ::bc16 {
      [class='motorways']  { line-width: @rdz16_maj+3; line-color:@bc; }
      [class='mainroads'] { line-width: @rdz16_med+3; line-color:@bc; }
      [class='minorroads']  { line-width: @rdz16_min+3; line-color:@bc; }
      [class='service']{ line-width: @rdz16_svc+3; line-color:@bc; }
    }
    ::bf16 {
      [class='motorways']  { line-width: @rdz16_maj; line-color:@road_major; }
      [class='mainroads'] { line-width: @rdz16_med; line-color:@road_medium; }
      [class='minorroads']  { line-width: @rdz16_min; line-color:@road_minor; }
      [class='service']{ line-width: @rdz16_svc; line-color:@road_minor; }
    }
  }
  [z_order=17] {
    ::bc17 {
      [class='motorways']  { line-width: @rdz16_maj+3; line-color:@bc; }
      [class='mainroads'] { line-width: @rdz16_med+3; line-color:@bc; }
      [class='minorroads']  { line-width: @rdz16_min+3; line-color:@bc; }
      [class='service']{ line-width: @rdz16_svc+3; line-color:@bc; }
    }
    ::bf17 {
      [class='motorways']  { line-width: @rdz16_maj; line-color:@road_major; }
      [class='mainroads'] { line-width: @rdz16_med; line-color:@road_medium; }
      [class='minorroads']  { line-width: @rdz16_min; line-color:@road_minor; }
      [class='service']{ line-width: @rdz16_svc; line-color:@road_minor; }
    }
  }
  [z_order=18] {
    ::bc18 {
      [class='motorways']  { line-width: @rdz16_maj+3; line-color:@bc; }
      [class='mainroads'] { line-width: @rdz16_med+3; line-color:@bc; }
      [class='minorroads']  { line-width: @rdz16_min+3; line-color:@bc; }
      [class='service']{ line-width: @rdz16_svc+3; line-color:@bc; }
    }
    ::bf18 {
      [class='motorways']  { line-width: @rdz16_maj; line-color:@road_major; }
      [class='mainroads'] { line-width: @rdz16_med; line-color:@road_medium; }
      [class='minorroads']  { line-width: @rdz16_min; line-color:@road_minor; }
      [class='service']{ line-width: @rdz16_svc; line-color:@road_minor; }
    }
  }
  [z_order=19] {
    ::bc19 {
      [class='motorways']  { line-width: @rdz16_maj+3; line-color:@bc; }
      [class='mainroads'] { line-width: @rdz16_med+3; line-color:@bc; }
      [class='minorroads']  { line-width: @rdz16_min+3; line-color:@bc; }
      [class='service']{ line-width: @rdz16_svc+3; line-color:@bc; }
    }
    ::bf19 {
      [class='motorways']  { line-width: @rdz16_maj; line-color:@road_major; }
      [class='mainroads'] { line-width: @rdz16_med; line-color:@road_medium; }
      [class='minorroads']  { line-width: @rdz16_min; line-color:@road_minor; }
      [class='service']{ line-width: @rdz16_svc; line-color:@road_minor; }
    }
  }
}

/*  ::bc10[z_order<=10],::bc11[z_order=11],::bc12[z_order=12],::bc13[z_order=13],
  ::bc14[z_order=14],::bc15[z_order=15],::bc16[z_order=16],::bc17[z_order=17],
  ::bc18[z_order=18],::bc19[z_order>=19] {
    [class='minorroad'],[class='mainroad'],[class='motorway'] {
      line-cap: butt;
      line-color: darken(@land,2%);
    }
    [zoom=16] {
      [class='motorway'] { line-width: 10 + 4; }
      [class='mainroad'] { line-width: 8 + 4; }
      [class='minorroad'] { line-width: 5 + 4; }
    }
  }
  ::bf10[z_order<=10],::bf11[z_order=11],::bf12[z_order=12],::bf13[z_order=13],
  ::bf14[z_order=14],::bf15[z_order=15],::bf16[z_order=16],::bf17[z_order=17],
  ::bf18[z_order=18],::bf19[z_order>=19] {
    [class='minorroad'],[class='mainroad'],[class='motorway'] {
      line-cap: square;
    }
    [class='minorroad'] { line-color: @road_minor; }
    [class='mainroad'] { line-color: @road_medium; }
    [class='motorway'] { line-color: @road_major; }
    [zoom=16] {
      [class='motorway'] { line-width: 10; }
      [class='mainroad'] { line-width: 8; }
      [class='minorroad'] { line-width: 5; }
    }
  }
}
/*
  [zoom=14] {
    ::c[class='motorway'] { line-width: 4 + 3; }
    ::c[class='mainroad'] { line-width: 2.5 + 3; }
    ::c[class='minorroad'] { line-width: 1.6 + 3; }
    ::f[class='motorway'] { line-width: 4; }
    ::f[class='mainroad'] { line-width: 2.5; }
    ::f[class='minorroad'] { line-width: 1.6; } }
  [zoom=15] {
    ::c[class='motorway'] { line-width: @roads_Z_15_maj + 3; }
    ::c[class='mainroad'] { line-width: @roads_Z_15_med + 3; }
    ::c[class='minorroad'] { line-width: @roads_Z_15_min + 3; }
    ::f[class='motorway'] { line-width: @roads_Z_15_maj; }
    ::f[class='mainroad'] { line-width: @roads_Z_15_med; }
    ::f[class='minorroad'] { line-width: @roads_Z_15_min; } }
  [zoom=16] {
    ::c[class='motorway'] { line-width: 10 + 4; }
    ::c[class='mainroad'] { line-width: 8 + 4; }
    ::c[class='minorroad'] { line-width: 5 + 4; }
    ::f[class='motorway'] { line-width: 10; }
    ::f[class='mainroad'] { line-width: 8; }
    ::f[class='minorroad'] { line-width: 5; } }
  [zoom=17] {
    ::c[class='motorway'] { line-width: 20 + 4; }
    ::c[class='mainroad'] { line-width: 15 + 4; }
    ::c[class='minorroad'] { line-width: 10 + 4; }
    ::f[class='motorway'] { line-width: 20; }
    ::f[class='mainroad'] { line-width: 15; }
    ::f[class='minorroad'] { line-width: 10; } }
  [zoom=18] {
    ::f[class='motorway'] { line-width: 40; }
    ::f[class='mainroad'] { line-width: 30; }
    ::f[class='minorroad'] { line-width: 20; } }
  */


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

#way_label[zoom>=14][class='motorways'] {
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
