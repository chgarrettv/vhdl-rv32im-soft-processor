
w
Command: %s
53*	vivadotcl2F
2synth_design -top uart_trx -part xc7a35ticsg324-1L2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35ti2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35ti2default:defaultZ17-349h px? 
X
Loading part %s157*device2%
xc7a35ticsg324-1L2default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
_
#Helper process launched with PID %s4824*oasys2
15642default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:06 . Memory (MB): peak = 1035.973 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
uart_trx2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/sources_1/imports/new/uart_trx.vhd2default:default2
232default:default8@Z8-638h px? 
d
%s
*synth2L
8	Parameter g_CYCLE_COUNT bound to: 108 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'638*oasys2
uart_tx2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/sources_1/imports/new/uart_tx.vhd2default:default2
262default:default8@Z8-638h px? 
`
%s
*synth2H
4	Parameter g_BAUD bound to: 115200 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter g_CLK_FREQ bound to: 921600 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter g_BITS bound to: 8 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter g_FLOP_SEND_INPUT bound to: 0 - type: bool 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter g_FLOP_VALID_INPUT bound to: 0 - type: bool 
2default:defaulth p
x
? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	i_tx_send2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/sources_1/imports/new/uart_tx.vhd2default:default2
972default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

i_tx_valid2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/sources_1/imports/new/uart_tx.vhd2default:default2
1122default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
uart_tx2default:default2
12default:default2
12default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/sources_1/imports/new/uart_tx.vhd2default:default2
262default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
uart_rx2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/sources_1/imports/new/uart_rx.vhd2default:default2
212default:default8@Z8-638h px? 
`
%s
*synth2H
4	Parameter g_BAUD bound to: 115200 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter g_CLK_FREQ bound to: 921600 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter g_BITS bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
uart_rx2default:default2
22default:default2
12default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/sources_1/imports/new/uart_rx.vhd2default:default2
212default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
uart_trx2default:default2
32default:default2
12default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/sources_1/imports/new/uart_trx.vhd2default:default2
232default:default8@Z8-256h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:07 . Memory (MB): peak = 1035.973 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:08 . Memory (MB): peak = 1035.973 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:08 . Memory (MB): peak = 1035.973 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1035.9732default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
	select[0]2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
872default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
872default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	select[1]2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
882default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
882default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	select[2]2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
892default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
892default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
segments[0]2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
1032default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
1032default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
segments[1]2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
1042default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
1042default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
segments[2]2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
1052default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
1052default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
segments[3]2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
1062default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
1062default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
segments[4]2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
1072default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
1072default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
segments[5]2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
1082default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
1082default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
segments[6]2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
1092default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
1092default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
segments[7]2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
1102default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
1102default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
refresh2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
2182default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2
2182default:default8@Z17-55h px?
?
Finished Parsing XDC File [%s]
178*designutils2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.srcs/constrs_1/imports/Arty A7 Resources/Arty-A7-35-Master.xdc2default:default2.
.Xil/uart_trx_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1098.5942default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0272default:default2
1098.5942default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:09 ; elapsed = 00:00:15 . Memory (MB): peak = 1098.594 ; gain = 62.621
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Loading part: xc7a35ticsg324-1L
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:15 . Memory (MB): peak = 1098.594 ; gain = 62.621
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:09 ; elapsed = 00:00:15 . Memory (MB): peak = 1098.594 ; gain = 62.621
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
r_tx_sm_reg2default:default2
uart_tx2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
r_rx_sm_reg2default:default2
uart_rx2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  s_idle |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                 s_start |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                 s_write |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                  s_stop |                               11 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
r_tx_sm_reg2default:default2

sequential2default:default2
uart_tx2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  s_idle |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                s_center |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                  s_read |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                  s_stop |                               11 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
r_rx_sm_reg2default:default2

sequential2default:default2
uart_rx2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:15 . Memory (MB): peak = 1098.594 ; gain = 62.621
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 4     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 10    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:11 ; elapsed = 00:00:17 . Memory (MB): peak = 1098.594 ; gain = 62.621
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:24 . Memory (MB): peak = 1098.594 ; gain = 62.621
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:24 . Memory (MB): peak = 1099.676 ; gain = 63.703
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:18 ; elapsed = 00:00:24 . Memory (MB): peak = 1109.512 ; gain = 73.539
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:21 ; elapsed = 00:00:28 . Memory (MB): peak = 1109.512 ; gain = 73.539
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:21 ; elapsed = 00:00:28 . Memory (MB): peak = 1109.512 ; gain = 73.539
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:21 ; elapsed = 00:00:28 . Memory (MB): peak = 1109.512 ; gain = 73.539
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:21 ; elapsed = 00:00:28 . Memory (MB): peak = 1109.512 ; gain = 73.539
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:21 ; elapsed = 00:00:28 . Memory (MB): peak = 1109.512 ; gain = 73.539
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:21 ; elapsed = 00:00:28 . Memory (MB): peak = 1109.512 ; gain = 73.539
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
B
%s*synth2*
|      |Cell |Count |
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
B
%s*synth2*
|1     |BUFG |     1|
2default:defaulth px? 
B
%s*synth2*
|2     |LUT1 |     1|
2default:defaulth px? 
B
%s*synth2*
|3     |LUT2 |     3|
2default:defaulth px? 
B
%s*synth2*
|4     |LUT3 |     4|
2default:defaulth px? 
B
%s*synth2*
|5     |LUT4 |     9|
2default:defaulth px? 
B
%s*synth2*
|6     |LUT5 |     7|
2default:defaulth px? 
B
%s*synth2*
|7     |LUT6 |    20|
2default:defaulth px? 
B
%s*synth2*
|8     |FDRE |    36|
2default:defaulth px? 
B
%s*synth2*
|9     |IBUF |     2|
2default:defaulth px? 
B
%s*synth2*
|10    |OBUF |     6|
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:21 ; elapsed = 00:00:28 . Memory (MB): peak = 1109.512 ; gain = 73.539
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:24 . Memory (MB): peak = 1109.512 ; gain = 10.918
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:21 ; elapsed = 00:00:28 . Memory (MB): peak = 1109.512 ; gain = 73.539
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1109.5122default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1114.8672default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
232default:default2
142default:default2
122default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:262default:default2
00:00:452default:default2
1114.8672default:default2
78.8952default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?F:/Google Drive/Personal Stuff/Programming/Vivado/vhdl-rv32im-soft-processor/vhdl-rv32im-soft-processor.runs/synth_1/uart_trx.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2z
fExecuting : report_utilization -file uart_trx_utilization_synth.rpt -pb uart_trx_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed May  5 15:02:37 20212default:defaultZ17-206h px? 


End Record