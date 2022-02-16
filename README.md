# AudioBox

> FPGA-based audio recorder, player and processing device. It has been developed for the Digital Electronic Systems Design Course

## System characteristics

* It is developed ontop [Digilent Nexys 4DDR FPGA Board](https://digilent.com/reference/programmable-logic/nexys-4-ddr/start "Digilent Nexys 4DDR FPGA Board")
* The board features a [Xilinx Artix-7 series XC7A100T-1CSG324C FPGA](https://www.xilinx.com/support/documentation/data_sheets/ds181_Artix_7_Data_Sheet.pdf "Xilinx Artix-7 series XC7A100T-1CSG324C FPGA").
* The board includes several peripherals (see reference), among them the project uses the following:
	* 8-digit 7-segment display
	* 3 control switches
	* D-pad with 5 buttons
	* RGB LED
	* PDM Stereo microphone
	* Mono audio PWM output

## Features

* Audio recording up to 26.21 seconds
* Audio forward and reverse playback
* Audio playback HPF and LPF filtering via a 4-stage FIR filter
* 20-level volume control and display (via 7-segment display)
* Status indication (via 7-seg display)
* Playing time left and recorded time information (via 7-segment display)
* Low recording memory warning and no free memory error

## Development

1. Clone the repository locally

```shell
git clone git@github.com:margobra8/audiobox.git
```
2. Open the `dsed_audiobox.xpr` project file in [Vivado Design Suite](https://www.xilinx.com/products/design-tools/vivado.html)
3. Synthesise the sources and generate the implementation and bitstream
