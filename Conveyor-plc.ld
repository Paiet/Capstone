// This program is written in Ladder Logic, a common language for PLC programming

// Define the input and output signals for the PLC
INPUT start_button;
INPUT stop_button;
INPUT emergency_stop;
OUTPUT conveyor_motor;
OUTPUT warning_light;

// Define variables for tracking the state of the system
VAR conveyor_running : BOOL;
VAR emergency_active : BOOL;

// Define the main program loop
LOOP
    // Check if the emergency stop button has been pressed
    IF emergency_stop THEN
        // If the emergency stop button has been pressed, set the emergency active flag to TRUE
        // and turn off the conveyor motor
        emergency_active := TRUE;
        conveyor_motor := OFF;
    ELSE
        // If the emergency stop button is not pressed, clear the emergency active flag
        emergency_active := FALSE;
    END_IF

    // Check if the start button has been pressed and the emergency stop is not active
    IF start_button AND NOT emergency_active THEN
        // If the start button has been pressed and the emergency stop is not active, set the conveyor running flag to TRUE
        // and turn on the conveyor motor
        conveyor_running := TRUE;
        conveyor_motor := ON;
    END_IF

    // Check if the stop button has been pressed or the emergency stop button has been pressed
    IF stop_button OR emergency_active THEN
        // If the stop button has been pressed or the emergency stop button has been pressed, set the conveyor running flag to FALSE
        // and turn off the conveyor motor
        conveyor_running := FALSE;
        conveyor_motor := OFF;
    END_IF

    // Check if the conveyor is running and the emergency stop is not active
    IF conveyor_running AND NOT emergency_active THEN
        // If the conveyor is running and the emergency stop is not active, turn off the warning light
        warning_light := OFF;
    ELSE
        // If the conveyor is not running or the emergency stop is active, turn on the warning light
        warning_light := ON;
    END_IF
END_LOOP
