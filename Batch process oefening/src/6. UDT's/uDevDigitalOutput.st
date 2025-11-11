TYPE hmiDevDigitalOutput : 
    STRUCT
        rName           : STRING;
        rDescription    : STRING;

        rRawValue       : BOOL;
        rValue          : BOOL;
        rwForceValue    : BOOL;
        rwIsInverted    : BOOL;
        
        rwDelayOn       : TIME;
        rwDelayOff      : TIME;
    END_Struct;
END_TYPE
