; ORCA SLICER START G-CODE
CLEAR_PAUSE
START_PRINT EXTRUDER_TEMP=[nozzle_temperature_initial_layer] BED_TEMP=[bed_temperature_initial_layer_single]

; Absolute positioning
G90 
; Reset Extruder and load
G92 E0 
G1 X150 Y-12 Z10
G1 E50 F1000
G1 E49 F1000

; Reset Extruder and purge line
G92 E0 
G1 Z0.3 F3000 ; Move bed down
G1 X10 Y13 Z0.2 F15000.0 ; Move to start position
G1 X200 Y13 Z0.2 F1500.0 E10 ; Draw the first line
G1 Z0.5 F3000 E-2 ; Move Bed up and retract

; Reset Extruder and print
G92 E0 
LAST_START_PRINT ; Enable PLR, Encoder etc.







; ORCA SLICER END G-CODE
; Cooldown
TURN_OFF_HEATERS
M106 S26 ; Fan 10%
G91 ; Relative positioning
G1 Z1 ; Raise Z more
G10 ; Firmware Retraction
; Retract a bit slowly
G1 E-2 F2700 
; Retract 3cm and raise
G1 E-30 Z3 F2400
DISABLE_EXTRUDER
M106 S51 ; Fan 20%

; Go to center and cooldown 20
G90 ; Absolute positioning
G1 X150 Y150 F3000 
M18 ; Klipper disables All Motors 
M84 ; Klipper disables All Motors
clear_last_file ; PLR
TIMELAPSE_RENDER  ; Cura

; Coldown 30 and turn off Fans
M106 S77 ; Fan 30%
G4 P10000  ; pause cooldown 
M107 ; Turn-off fan
end_tune ; Beeper

END_PRINT

; total layers count = {total_layer_count}
