android_device_rockchip_rk2928sdk
=================================

RK2928 - Iball 6318i--> device tree 

please note :
==============
with present device tree u can build recovery only ..................    main aim fix reboot to system issue and some mount errors 

help needed with this 
======================
need to determine exact partition size                                                                                     

                                                                                                                            
BOARD_BOOTIMAGE_PARTITION_SIZE := ?????(0x01000000)                                                                                      
BOARD_RECOVERYIMAGE_PARTITION_SIZE := ?????(0x02000000)

=======================================================

when building recovery try with both recovery.fstab in device tree 
