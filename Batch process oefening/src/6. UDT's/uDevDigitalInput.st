TYPE hmiDevDigitalInput : 
    STRUCT
        rName           : STRING;
        rDescription    : STRING;

        rIsSimulated    : BOOL;
        rRawValue       : BOOL;
        rValue          : BOOL;
        rwForceValue    : BOOL;
        rwIsInverted    : BOOL;
        
        rwDelayOn       : TIME;
        rwDelayOff      : TIME;
    END_Struct;
END_TYPE
