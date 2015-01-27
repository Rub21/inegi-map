SELECT count(*) as num , tipovial  FROM road_df group by tipovial order by num ;

( SELECT gid,  tipovial, nomvial,geom FROM road_df
    WHERE geom && !bbox!   AND CASE
    WHEN z(!scale_denominator!)>=10  AND tipovial='AVENIDA' THEN TRUE
    WHEN z(!scale_denominator!)>=11  AND (tipovial='AVENIDA' 
    OR tipovial='CERRADA'
     OR tipovial='PRIVADA' 
     OR tipovial='EJE VIAL' 
     OR tipovial='ANDADOR' 
     OR tipovial='CIRCUITO'
     OR tipovial='DIAGONAL'
   OR tipovial='PASAJE'
OR tipovial='AMPLIACIÓN'
OR tipovial='AUTOPISTA'
OR tipovial='PERIFÉRICO'
OR tipovial='VIADUCTO'
OR tipovial='RETORNO'
OR tipovial='CARRETERA'
OR tipovial='PEATONAL'
OR tipovial='BOULEVARD'
OR tipovial='OTRO'
OR tipovial='PROLONGACIÓN'
 ) THEN TRUE
    WHEN z(!scale_denominator!)>=12 AND (tipovial='AVENIDA' OR tipovial='CERRADA' OR tipovial='PRIVADA' OR tipovial='EJE VIAL' OR tipovial='ANDADOR' OR tipovial='CIRCUITO'  OR tipovial='CALLE')  THEN TRUE
    WHEN z(!scale_denominator!)>=113   THEN TRUE 
 END
  ) AS data