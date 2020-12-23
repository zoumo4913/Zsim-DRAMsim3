# Zsim-DRAMsim3
This is a repository that builds Zsim simulator with DRAMSim3 into a framework.
Assuming that you have downloaded DRAMsim3 in location "mylocation" and run "make -j4" inside dramsim3 folder(generate libdramsim3.so).
For current version, four interfaces are missed in DRAMsim3, please add 

1. Download zsim_DRAMsim3
2. cd zsim_DRAMsim3
3. sudo sh set.sh (include essential librarys, may need to change apt-get to other commands depending on your system)
4. vi compile.sh
5. edit and change DRAMSIM3PATH to "mylocation"
6. sh compile.sh
7. ./build/opt/zsim tests/simple_dramsim3.cfg (if you use this cfg, please make sure that all parameters related to DRAMsim3 in this file have been changed to "mylocation")
8. Hope you succeed.
