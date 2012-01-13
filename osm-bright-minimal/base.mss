/* BASE.MSS CONTENTS
 * 1. Landuse & landcover
 * 2. Water areas
 * 3. Water ways
 * 4. Landuse & landcover labels
 * 5. Water area labels
 * 6. Water way labels
 * 7. Administrative Boundaries
 *
 */

/* == 1. LANDUSE & LANDCOVER ======================================== */

#land[zoom>=0][zoom<6],
#shoreline_300[zoom>=6][zoom<10],
#processed_p[zoom>=10] {
  polygon-fill: @land;
  polygon-gamma: 0.75;
}

#landuse[zoom>12] {
  [type='golf_course'],[type='park'],[type='pitch'] {
    polygon-pattern-file: url(img/grass.png);
  }
  [type='forest'],[type='wood'] {
    polygon-pattern-file: url(img/trees.png);
  }
}

#landuse_gen0[zoom>3][zoom<=9],
#landuse_gen1[zoom>9][zoom<=12],
#landuse[zoom>12] {
/*  [type='cemetery']      { polygon-fill: @cemetery; }
  [type='college']       { polygon-fill: @school; }
  [type='commercial']    { polygon-fill: @industrial; }
  [type='hospital']      { polygon-fill: @hospital; }
  [type='industrial']    { polygon-fill: @industrial; }*/
  [type='parking']       { polygon-fill: @parking; }
  [type='pedestrian']    { polygon-fill: @parking; }
/*  [type='school']        { polygon-fill: @school; } */
  [type='sports_center'] { polygon-fill: @sports; }
  [type='stadium']       { polygon-fill: @sports; }
/*  [type='university']    { polygon-fill: @school; }
  [type='wood']          { polygon-fill: @forest; }*/
}

#landuse_overlays[type='nature_reserve'][zoom>6] {
  line-color: darken(@forest,25%);
  line-opacity:  0.3;
  line-dasharray: 1,1;
  polygon-fill: darken(@forest,25%);
  polygon-opacity: 0.1;
  [zoom=7] { line-width: 0.4; }
  [zoom=8] { line-width: 0.6; }
  [zoom=9] { line-width: 0.8; }
  [zoom=10] { line-width: 1.0; }
  [zoom=11] { line-width: 1.5; }
  [zoom>=12] { line-width: 2.0; }
}

#transport_areas[zoom>3] {
  polygon-fill: @transport;
}

/* == 2. WATER AREAS ================================================ */

Map { background-color: @water; }

#water_gen0[zoom>3][zoom<=9],
#water_gen1[zoom>9][zoom<=12],
#water[zoom>12] {
  polygon-fill: @water;
}

/* == 3. WATER WAYS ================================================= */

#waterway[type='river'][zoom>5] {
  line-color: @water;
  [zoom=6] { line-width: 0.15; }
  [zoom=7] { line-width: 0.25; }
  [zoom=8] { line-width: 0.5; }
  [zoom=9] { line-width: 1; }
  [zoom=10]{ line-width: 1; }
  [zoom>10]{
    line-cap: round;
    line-join: round;
  }
  [zoom=11]{ line-width: 2; }
  [zoom=12]{ line-width: 2; }
  [zoom=13]{ line-width: 3; }
  [zoom=14]{ line-width: 3; }
  [zoom=15]{ line-width: 4; }
  [zoom=16]{ line-width: 5; }
  [zoom=17]{ line-width: 6; }
  [zoom>17]{ line-width: 7; }
}

#waterway[type='stream'][zoom>10] {
  line-color: @water;
  [zoom=11]{ line-width: 0.2; }
  [zoom=12]{ line-width: 0.4; }
  [zoom=13]{ line-width: 0.8; }
  [zoom>13]{
    line-width: 2;
    line-join: round;
    line-cap: round;
  }
}

#waterway[type='canal'][zoom>9] {
  line-color: @water;
  [zoom=10]{ line-width: 0.5; }
  [zoom=11]{ line-width: 0.5; }
  [zoom=12]{ line-width: 1; }
  [zoom=13]{ line-width: 1; }
  [zoom>13]{
    line-cap: round;
    line-join: round;
  } 
  [zoom=14]{ line-width: 2; }
  [zoom=15]{ line-width: 4; }
  [zoom=16]{ line-width: 8; }
  [zoom=17]{ line-width: 16; }
  [zoom>17]{ line-width: 30; }
}




/* ---- CAMPUSES ---- */
/* Note that amenity=school, amenity=hospital, etc are ideally polygons of the
   *campus*, but are occasionally applied to the physical building instead. *
@campus: #ECF;
#campus[zoom>10] {
  polygon-opacity:0.2;
  polygon-fill:@campus;
  [zoom>12] {
    line-opacity:0.4;
    line-color:spin(darken(@land,20),20);
  }
  [zoom=13] { line-width:0.3; }
  [zoom=14] { line-width:0.5; }
  [zoom=15] { line-width:0.7; }
  [zoom=16] { line-width:0.8; }
  [zoom=17] { line-width:0.9; }
  [zoom=18] { line-width:1.0; }
}

/* ---- BUILDINGS ---- */
/* Transparent buildings account for situations where routes go
   in or under them. */
#buildings[zoom>10][zoom<=20] {
  polygon-fill:@building;
  [zoom=11] { polygon-opacity:0.1; }
  [zoom=12] { polygon-opacity:0.2; }
  [zoom=13] { polygon-opacity:0.3; }
  [zoom>13] { polygon-opacity:0.4; }
}

/* == 7. ADMINISTRATIVE BOUNDARIES ================================== */

#admin[admin_level=4][zoom>1] {
  line-color:#333;
  line-width:0.5;
  [zoom=2] { line-opacity: 0.25; }
  [zoom=3] { line-opacity: 0.3; }
  [zoom=4] { line-opacity: 0.4;  line-dasharray: 2,3; }
  [zoom>=5] { line-opacity: 0.5; line-dasharray: 4,2; }
}

/* ****************************************************************** */
