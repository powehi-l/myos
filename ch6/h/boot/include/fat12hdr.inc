;head of FAT12 disk
BS_OEMName      DB 'ForrestY'
BPB_BytsPerSec  DW 512
BPB_SecPerClus  DB 1
BPB_RsvdSecCnt  DW 1
BPB_NumFATs     DB 2
BPB_RootEntCnt  DW 224
BPB_TotSec16    DW 2880
BPB_Media       DB 0xF0
BPB_FATSz16     DW 9
BPB_SecPerTrk   DW 18
BPB_NumHeads    DW 2
BPB_HiddSec     DD 0
BPB_TotSec32    DD 0
BS_DrvNum       DB 0
BS_Reserved1    DB 0
BS_BootSig      DB 29h
BS_VolID        DD 0
BS_VolLab       DB 'OrangeS0.02'
BS_FileSysType  DB 'FAT12   '

FAT_Sz              equ 9
RootDirSectors      equ 14 ;sectors root dir use
SectorNoOfRootDirectory     equ 19 ;first sector of root sector
SectorNoOfFAT1      equ 1
DeltaSectorNo       equ 17
