
d
Command: %s
53*	vivadotcl23
write_bitstream -force main.bit2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2#
xc7a100t-csg3242default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2#
xc7a100t-csg3242default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
z
Command: %s
53*	vivadotcl2I
5report_drc (run_mandatory_drcs) for: bitstream_checks2default:defaultZ4-113h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px? 
?
YReport rule limit reached: REQP-1839 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2?
 "?
_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
gmfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[47:0]amfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2?
 "?
dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
lmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[47:0]fmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2?
 "?
cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
kmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[47:0]emfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
emfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[10]emfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[10]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
emfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[12]emfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[12]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
emfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[14]emfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[14]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
emfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[15]emfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[15]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
emfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[16]emfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[16]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
dmfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[6]dmfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[6]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
dmfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[7]dmfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[7]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
imfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[0]imfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[0]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
imfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[1]imfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[1]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
imfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[2]imfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[2]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
imfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[3]imfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[3]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
imfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[4]imfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[4]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
imfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[5]imfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[5]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
imfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[6]imfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[6]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
hmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[0]hmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[0]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
hmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[1]hmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[1]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
hmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[2]hmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[2]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
hmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[3]hmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[3]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
hmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[4]hmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[4]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
hmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[5]hmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[5]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?Asynchronous driver check: DSP %s input pin %s is connected to registers with an asynchronous reset. This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "?
cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2?
 "?
hmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[6]hmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive/C[6]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPIR-1h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[10]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[10]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[10]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[10]2default:default2default:default2^
 "H
mfsmd/addr_d_reg_reg[10]	mfsmd/addr_d_reg_reg[10]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[10]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[10]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[10]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[10]2default:default2default:default2^
 "H
mfsmd/addr_u_reg_reg[10]	mfsmd/addr_u_reg_reg[10]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[10]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[10]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[10]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[10]2default:default2default:default2P
 ":
mfsmd/dir_reg_reg	mfsmd/dir_reg_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[11]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[11]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[11]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[11]2default:default2default:default2^
 "H
mfsmd/addr_d_reg_reg[11]	mfsmd/addr_d_reg_reg[11]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[11]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[11]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[11]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[11]2default:default2default:default2^
 "H
mfsmd/addr_u_reg_reg[11]	mfsmd/addr_u_reg_reg[11]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[11]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[11]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[11]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[11]2default:default2default:default2P
 ":
mfsmd/dir_reg_reg	mfsmd/dir_reg_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[12]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[12]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[12]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[12]2default:default2default:default2^
 "H
mfsmd/addr_d_reg_reg[12]	mfsmd/addr_d_reg_reg[12]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[12]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[12]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[12]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[12]2default:default2default:default2^
 "H
mfsmd/addr_u_reg_reg[12]	mfsmd/addr_u_reg_reg[12]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[12]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[12]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[12]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[12]2default:default2default:default2P
 ":
mfsmd/dir_reg_reg	mfsmd/dir_reg_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[13]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[13]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[13]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[13]2default:default2default:default2^
 "H
mfsmd/addr_d_reg_reg[13]	mfsmd/addr_d_reg_reg[13]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[13]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[13]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[13]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[13]2default:default2default:default2^
 "H
mfsmd/addr_u_reg_reg[13]	mfsmd/addr_u_reg_reg[13]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[13]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[13]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[13]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[13]2default:default2default:default2P
 ":
mfsmd/dir_reg_reg	mfsmd/dir_reg_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[14]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[14]2default:default2default:default2^
 "H
mfsmd/addr_d_reg_reg[14]	mfsmd/addr_d_reg_reg[14]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[14]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[14]2default:default2default:default2^
 "H
mfsmd/addr_u_reg_reg[14]	mfsmd/addr_u_reg_reg[14]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[14]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[14]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[14]2default:default2default:default2P
 ":
mfsmd/dir_reg_reg	mfsmd/dir_reg_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[15]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[15]2default:default2default:default2^
 "H
mfsmd/addr_d_reg_reg[15]	mfsmd/addr_d_reg_reg[15]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[15]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[15]2default:default2default:default2^
 "H
mfsmd/addr_u_reg_reg[15]	mfsmd/addr_u_reg_reg[15]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[15]2default:default2default:default2?
 "?
smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[15]smram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[15]2default:default2default:default2P
 ":
mfsmd/dir_reg_reg	mfsmd/dir_reg_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[9]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[9]2default:default2default:default2?
 "?
rmram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[9]rmram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[9]2default:default2default:default2\
 "F
mfsmd/addr_d_reg_reg[9]	mfsmd/addr_d_reg_reg[9]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B	?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B2default:default2default:default2?
 "?
?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[9]?mram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B/ADDRARDADDR[9]2default:default2default:default2?
 "?
rmram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[9]rmram/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[9]2default:default2default:default2\
 "F
mfsmd/addr_u_reg_reg[9]	mfsmd/addr_u_reg_reg[9]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?enum_USE_MULT_NONE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the Multiplier (USE_MULT = NONE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2?
 "?
_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	_mfsmd/cnt_120k/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-5h px? 
?
?enum_USE_MULT_NONE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the Multiplier (USE_MULT = NONE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2?
 "?
dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	dmfsmd/cseg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-5h px? 
?
?enum_USE_MULT_NONE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the Multiplier (USE_MULT = NONE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2?
 "?
cmfsmd/cseg_rec_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	cmfsmd/cseg_rec_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-5h px? 
?
?enum_USE_MULT_NONE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the Multiplier (USE_MULT = NONE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2?
 "?
cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	cmfsmd/seg_play_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-5h px? 
?
?enum_USE_MULT_NONE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the Multiplier (USE_MULT = NONE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2?
 "?
bmfsmd/seg_rec_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive	bmfsmd/seg_rec_cnt/U0/i_synth/i_baseip.i_xbip_counter/i_dsp48.i_dsp/i_vx7.i_dsp48e_wrap/i_primitive2default:default2default:default2L
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E12default:default8ZAVAL-5h px? 
q
%s completed successfully
29*	vivadotcl23
report_drc (run_mandatory_drcs)2default:defaultZ4-42h px? 
u
DRC finished with %s
1905*	planAhead27
#0 Errors, 46 Warnings, 5 Advisories2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
Q
/Please set project.enableDesignId to be 'true'.457*projectZ1-821h px? 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
[
Writing bitstream %s...
11*	bitstream2

./main.bit2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
?
?WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
872default:default2
672default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:342default:default2
00:00:282default:default2
1673.5662default:default2
345.5042default:defaultZ17-268h px? 


End Record