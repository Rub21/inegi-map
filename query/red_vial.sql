SELECT *  FROM red_vial limit 1000;  
--ALTER TABLE red_vial DROP COLUMN datos 
ALTER TABLE red_vial ADD COLUMN dato text;
CREATE OR REPLACE FUNCTION get_name(_name varchar, _carriles varchar, _velocidad integer) 
RETURNS  varchar
AS $$
DECLARE	
	_n  varchar(254) ;
	BEGIN		
		IF(_name IS NULL OR  _name = 'N/D' OR _name = 'N/A' OR _name='NINGUNO' ) THEN		
			_n = '('|| _carriles || ')' || '-' || _velocidad || 'km/h';
		ELSE
			_n = _name || '('|| _carriles || ')' || '-' || _velocidad || 'km/h';
			
		END IF;
	RETURN _n;		
	END;	
$$ LANGUAGE plpgsql;

UPDATE red_vial SET dato = get_name(nombre,carriles,velocidad);