{namespace Dev}
CLASS DevBase
    VAR

        Name        : string;
        Description : string;
        ControlMode : eDevControlMode := eDevControlMode#rOff;
    END_VAR

    METHOD public GetName : string
        GetName := Name;
    END_METHOD
    METHOD public GetDescription : string
        GetDescription := Name;
    END_METHOD

   METHOD PROTECTED Init : INT
    VAR_INPUT
        SetName : string;
        SetDescription : String;
    END_VAR

    IF SetName = '' THEN
        Init := 100;
        return;
    END_IF;

    if SetDescription = '' THEN
        init := 100;
        RETURN;
    END_IF;

    Name        := SetName;
    Description := SetDescription;
    END_METHOD

    METHOD PROTECTED Exec : INT
  
        Exec := 0;
        return;
    END_Method
END_CLASS