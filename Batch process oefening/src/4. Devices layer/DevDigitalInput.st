USING System.Timer;

{namespace Dev}
CLASS DevDigitalInput EXTENDS DevBase
    VAR
        Hmi : hmiDevDigitalInput;

        tonValueTimer   :   OnDelay;
        tofValueTimer   :   OffDelay;
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

        ControlMode := eDevControlMode#rOff;
    END_METHOD

    METHOD PROTECTED Exec : INT
        VAR_INPUT
            iRawValue   :   BOOL;
        END_VAR
        VAR_OUTPUT
            qRawValue   :   BOOL;
            qValue      :   BOOL;
        END_VAR
        VAR_TEMP
            tValue      :   BOOL;
            tValue2     :   BOOL;
        END_VAR
       
        tonValueTimer(signal := iRawValue, output => tValue);
        tofValueTimer(signal := tValue, output => tValue2);

       CASE ControlMode OF
        eDevControlMode#rOff:;


        eDevControlMode#rManual:

            qValue:= hmi.rwForceValue;

        eDevControlMode#rAuto:

            qRawValue := iRawValue;

            

            IF hmi.rwIsInverted THEN
                qValue := NOT tValue2;
            ELSE
                qValue := tValue2;
            END_IF;
       END_CASE;

           
        

        SUPER.Exec();
    END_METHOD

END_CLASS