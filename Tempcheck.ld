// This code checks the temperature of a process and adjusts a heater accordingly

// Declare variables
VAR
    temperature: REAL; // current temperature
    setpoint: REAL;   // desired temperature
    heater: BOOL;     // status of heater (on or off)

// Read temperature and setpoint from sensors
temperature := READ_TEMPERATURE();
setpoint := READ_SETPOINT();

// If temperature is below setpoint, turn on heater
IF temperature < setpoint THEN
    heater := TRUE;
ELSE
    heater := FALSE;
END_IF

// Write heater status to output
WRITE_HEATER(heater);
