@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim fir_filter_tb_behav -key {Behavioral:sim_1:Functional:fir_filter_tb} -tclbatch fir_filter_tb.tcl -view C:/home/archivos_dsed_lab/dsed_audiobox/dsed_audiobox_wcfg/fsmd_microphone_tb_behav.wcfg -view C:/home/archivos_dsed_lab/dsed_audiobox/dsed_audiobox_wcfg/pwm_tb_behav.wcfg -view C:/home/archivos_dsed_lab/dsed_audiobox/dsed_audiobox_wcfg/audio_interface_tb_behav.wcfg -view C:/home/archivos_dsed_lab/dsed_audiobox/controlador_tb_behav.wcfg -view C:/home/archivos_dsed_lab/dsed_audiobox/data_flux_fir_tb_behav.wcfg -view C:/home/archivos_dsed_lab/dsed_audiobox/fir_filter_tb_behav.wcfg -view C:/home/archivos_dsed_lab/dsed_audiobox/dsed_audiobox_wcfg/ram_tb_behav.wcfg -view C:/home/archivos_dsed_lab/dsed_audiobox/dsed_audiobox_wcfg/main_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
