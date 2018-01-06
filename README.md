# 2D_Segway_LQR_Control
LQR balancing controller of a 2D segway created from a [MinSegShield M1V4 Single Axis kit.](https://minseg.com/collections/minseg-kits/products/minsegshield-m1v3-2-single-axis-minseg-uno-mega-due-compatible) This project was created as part of the Mechatronics course (MANE 4490) at RPI.
## Dependencies
1. [Matlab 2015a 32-bit](https://www.mathworks.com/downloads/web_downloads/download_release?release=R2015a)
2. Simulink
3. [Simulink Arduino Support Package](https://www.mathworks.com/hardware-support/arduino-simulink.html)
4. [Rensselaer Arduino Support Package](https://www.mathworks.com/matlabcentral/fileexchange/62702-rensselaer-arduino-support-package-library--rasplib-)
## Instructions
1. Run the ``` Segway_Setup.m ``` file to set up the LQR matrix and other variables.
2. Run the ``` Segway_Project.slx ``` by pressing the "deploy to hardware" button on simulink. Make sure to hold the segway upright while the code is deploying.
## Project Video
https://goo.gl/YnqnYA
