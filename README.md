準備一台x86設備，並安裝Ubuntu18.04以上的系統，磁片可用空間大於30G,若使用SDKmanager安裝CUDA等庫，則需要磁片可用空間大於50G
1.	打開https://developer.nvidia.com/embedded/jetson-linux-r3521
2.	下載BSP文件和檔案系統：
    Driver Package (BSP)
    Sample Root Filesystem

4.	解壓下載的Driver Package(BSP)（不需要使用sudo）
5.	在3步解壓的資料夾Linux_for_Tegra/rootfs下解壓Sample Root Filesystem檔（需要加上sudo）
6.	在Linux_for_Tegra下執行sudo ./apply_binaries.sh
7.	拷貝Image內核到Linux_for_Tegra/kernel/下
8.	拷貝tegra234-p3767-0000-p3509-a02.dtb文件到Linux_for_Tegra/kernel/dtb/下
9.	拷貝tegra234-mb2-bct-misc-p3767-0000.dts和tegra234-mb1-bct-pinmux-p3767-hdmi-a03.dtsi文件到Linux_for_Tegra/bootloader/t186ref/BCT/下
10.	在Linux_for_Tegra下執行燒錄命令
3801系列：
重構：sudo ./tools/kernel_flash/l4t_initrd_flash.sh --external-device nvme0n1p1 -c tools/kernel_flash/flash_l4t_external.xml -p "-c bootloader/t186ref/cfg/flash_t234_qspi.xml" --showlogs usb0 p3509-a02+p3767-0000 internal
11.	燒錄完畢後會自動重啟，偶爾會有重啟失敗，可以直接斷電再上電，開機進行基本設置
12.	coeus系統進入桌面後，將alsa-cmd_lout_orinnx.sh放到coeus設備的~/home/下，給許可權，及執行（該步驟是設置audio,如果不需要audio，可以不進行此步操作。）

Audio
1.打開終端執行alsa-cmd_lout_orinnx.sh檔（添加sudo）執行後如下圖結果和命令顯示

![image](https://github.com/mark-nexcom/3801/assets/63223264/f0df987c-995f-475b-a029-eb5ed54dfb72)

2.打開設置

![image](https://github.com/mark-nexcom/3801/assets/63223264/73f2b3d8-f96d-4497-9a72-55deeb930468)

插入耳機，點擊下方測試，可聽到聲音

![image](https://github.com/mark-nexcom/3801/assets/63223264/538be5c7-32ea-42c2-83e1-80068574a4bc)

3.如果没有声音打开终端输入命令：sudo /opt/nvidia/jetson-io/jetson-io.py
将终端窗口放大

![image](https://github.com/mark-nexcom/3801/assets/63223264/fdcc4093-c879-425b-abac-0ec8a6c33f0e)
![image](https://github.com/mark-nexcom/3801/assets/63223264/bf02db3e-4f88-4ff7-80aa-2abeb6594d7f)

4.取消勾選aud i2s2

![image](https://github.com/mark-nexcom/3801/assets/63223264/38b4077b-c831-41e2-9127-a01608027a93)

5.保存退出

![image](https://github.com/mark-nexcom/3801/assets/63223264/c9981529-23c8-4ddb-9a01-723fe3f93fa7)
![image](https://github.com/mark-nexcom/3801/assets/63223264/f87b3aec-b32d-4601-a53f-167327253696)

6.重启后，按照 3->4重新勾选aud i2s2 ->5-> 1-> 2

