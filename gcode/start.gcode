M104 S[nozzle_temperature_initial_layer]
M190 S[bed_temperature_initial_layer_single]
G90
BED_MESH_CLEAR
G28 ;home
; Always pass ADAPTIVE_MARGIN=0 because Orca has already handled adaptive_bed_mesh_margin internally
; Make sure to set ADAPTIVE to 0 otherwise Klipper will use it's own adaptive bed mesh logic

BED_MESH_CALIBRATE mesh_min={adaptive_bed_mesh_min[0]},{adaptive_bed_mesh_min[1]} mesh_max={adaptive_bed_mesh_max[0]},{adaptive_bed_mesh_max[1]} ALGORITHM=[bed_mesh_algo]
PROBE_COUNT={bed_mesh_probe_count[0]},{bed_mesh_probe_count[1]} ADAPTIVE=0 ADAPTIVE_MARGIN=0

start_print  EXTRUDER=[initial_extruder] EXTRUDER_TEMP=[nozzle_temperature_initial_layer] BED_TEMP=[bed_temperature_initial_layer_single]