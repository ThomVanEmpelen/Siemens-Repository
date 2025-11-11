USING Siemens.AX.Quickstart;
CONFIGURATION Application
    TASK Main(Priority := 1, Interval := T#1000ms);
    TASK Simulation (PRIORITY := 2, INTERVAL := t#1000ms);

    PROGRAM tMain WITH Main: cMainclass;
    PROGRAM tSimulation with Simulation : cSimulation;    
        

END_CONFIGURATION
