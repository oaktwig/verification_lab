debImport "-f" "file_list.f"
debLoadSimResult /home/eda/Work/tb_example/verdi_lab1/tb_mem.fsdb
wvCreateWindow
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiSetPrefEnv -bDisplayWelcome "off"
verdiWindowWorkMode -win $_Verdi_1 -hardwareDebug
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {4 8 2 1 1 1}
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 92.447551 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 57.981910 -snap {("G1" 4)}
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 155.033175 -snap {("G2" 0)}
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 22.790663 -snap {("G2" 0)}
wvZoomIn -win $_nWave2
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "55" "14" "735" "548"
verdiWindowResize -win $_Verdi_1 "55" -14 "735" "576"
verdiWindowResize -win $_Verdi_1 "55" -14 "735" "851"
verdiWindowResize -win $_Verdi_1 "55" -4 "735" "841"
verdiWindowResize -win $_Verdi_1 "55" -14 "735" "576"
verdiWindowResize -win $_Verdi_1 "55" -14 "1851" "869"
verdiWindowResize -win $_Verdi_1 "55" -14 "735" "576"
verdiWindowResize -win $_Verdi_1 "55" -14 "1851" "869"
debExit
