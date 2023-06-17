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

4. This chapter we make some simple process experiment which include simple process and clock interrupt, user interrupt etc.
    1. First, we make a simple process that can trap into kernel and deal with things and then back to its own user space. This include several aspects:
        1. The process table and GDT. The process table define all the process we have and each process should have a descriptor in the GDT which means they have their own user space seperated from the kernel space and kernel stack.
        2. The process body, or the code we need this process to excute. This means we need an entry in process block.
        3. TSS, this is essential because it record the process when we need to return from kernel. So this also need to be initialized.
    2. Second, we make a simple interrupt -- clock interrupt to make the process can switch from user space to kernel space and even switch to another process to excute.
        1. we need to enable the 8259, which is a interrupt generator or controller.
        2. Then we need to save the context for the process interrupted. This includes the registers and the user stack.
        3. If another interrupt happend when we are processing an interrupt, we have to deal with this situation. So we add a k_reenter to denote weather we are in a interrupt process(or kernel space).
    3. Now we add more process to make it a os supporting multi-process. This means when initial GDT, IDT, interrupt, we need initial for every process.
    4. System call is something user process can't finish. So user processes use the system call to make kernel do those things for them and return the result. In this case, there is no difference between system call and interrupt except where the signal comes from. The interrupt comes from hardware like 8259 which the system call coms from process which is also called soft interrupt. And when we have prepared the parameter in registers like eax, we use instruction like 'int n' in x86 or 'ecall' in riscv to make system call.
    5. Finally, the process schedule is also inportant for a multi-process system. Our solution is use time-slice originally, which means every time an interrupt happens, we switch to next process. But for different process, they may have different priority. So it's necessary to make another schedule algorithm to make it more flexible. There we add an entry to PCB(Process Control Block) which is a priority and decrease every time a time-interrupt happen when it is processing. This means even a high priority process cannot excute all the time. And when it's priority get to 0, we switch to another process.
- to be continue ...
