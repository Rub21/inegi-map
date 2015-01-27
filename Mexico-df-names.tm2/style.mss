@name: '[nomvial]';  
@text: #fff;
// Fonts //
@sans: 'Source Sans Pro Regular';
@sans_italic: 'Source Sans Pro Italic';
@sans_bold: 'Source Sans Pro Semibold';
#data{
  [zoom >16][nomvial!='N/D'][nomvial!='N/A'][nomvial!='NINGUNO'] {
  text-name: @name;
  text-face-name: @sans;
  text-placement: line; 
  text-fill: @text;
  text-halo-fill:#000;
  text-halo-radius:1;


  [zoom =17] {  text-size: 12;}
  [zoom >=18] {  text-size: 14;}
 //text-dx:-5;
  text-dy:-12;
  text-avoid-edges: true; 
  }
}