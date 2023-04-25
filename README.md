# this is my os based on orange, which is a operating system created for a newer of operating system

there are several steps to make an operating system. Here is the path i have already walk through.

1. make a boot sector, this is the first sector of the whole disk which means it is read at first. 
    1. Normally, a sector contain 512 Bytes. This Sector mainly contain some information about the disk(including sector size, sector number, cluster ...). 
    2. The rest is the program to load the bootloader from disk to memory. This mean the program need to find the file with specified name in the file system which means different file systems may have different ways to organize the file. So different file systems can have different boot sector.

2. The reason we need bootloader is that 512 Bytes in boot sector is not enough to do so much things like load kernel, entering the protect mode and so on. So we load the bootloader to memory which can have much more memory than 512 Bytes. And there are many kinds of bootloader in which you may have heard about the 'GRUB'.
    1. The first thing bootloader need to do is loading the kernel into memory which is kind of like what boot sector has done.
    2. The second important thing bootloader should do is to enable the protect mode. To be exactly, bootloader should make a GDT table and enter protect mode
    > attention:
    > bootloader is a .bin file which can excute directely but kernel should be a elf file which means we also need know the structure of elf file.
    
    > another things need to be causious is that some space in our memory is not allowed to write or read. So we need to use BIOS to get our memory information and know spaces we can use. To be more, before we enter kernel, many things we need to do is implemented by BIOS interrupt.

3. Now we enter the kernel, before we begin our work, we need to prepare the environment of our oprating system.
    1. First we need to copy the GDT from bootloader to kernel. In fact, they exist in the memory, but we need to kernel has its own GDT
    in its space.
    2. And then we enable the interrupt and exception. We need to make our interrupt descriptor table, including the exception and extraodinary interrupt which we use i8259 to make.

- to be continue ...
