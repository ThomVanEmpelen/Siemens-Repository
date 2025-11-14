{namespace Dev}
CLASS DevDigitalOutput EXTENDS DevBase
    VAR
        Hmi : hmiDevDigitalInput;
    END_VAR
    
    
    METHOD PROTECTED OVERRIDE Init : INT
        VAR_INPUT
            SetName : STRING;
            SetDescription : STRING;
        END_VAR

        if SUPER.Init(SetName := SetName, SetDescription := SetDescription) > 0 THEN
            Init := 100;
            return;
        END_IF;
    END_METHOD

END_CLASS