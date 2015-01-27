#osm{
    [zoom <= 11] {      
      line-join: round;
      line-cap: round;
      [zoom <= 11] { line-width: 6; comp-op: dst-out;}
      [zoom <= 10] { line-width: 5; comp-op: dst-out;}
      [zoom <= 9] { line-width: 4; comp-op: dst-out;}
      [zoom <= 8] { line-width: 3; comp-op: dst-out;}
      [zoom <= 7] { line-width: 2; comp-op: dst-out;}
      [zoom <= 6] { line-width: .5; comp-op: dst-out;}
      [zoom <= 4] { line-width: .2; comp-op: dst-out;}    
    } 
}
#data {
    line-color: #ffff00;
    line-join: round;
    line-cap: round;
    [zoom>=12] { line-width: 1; }
    [zoom>=13] { line-width: 1; }
    [zoom>=14] { line-width: 1; }
    [zoom>=15] { line-width: 2; }
  } 

