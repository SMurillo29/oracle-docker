DECLARE
    mi_numero NUMBER(8) := &numero;
BEGIN
    IF ( mi_numero > 10 ) THEN
        dbms_output.put_line('NUMERO '
                             || mi_numero
                             || ' MAYOR');
    ELSE
        dbms_output.put_line('NUMERO '
                             || mi_numero
                             || ' MENOR');
    END IF;
END;