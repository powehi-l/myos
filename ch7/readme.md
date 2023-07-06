Chapter 7 mainly deal with some device like keyboard and screen etc. It's kind of like a module.

There are mainly four parts in chapter 7:
1. keyboard. This part focus on the keyboard input for the operation system. It mainly read through a IO port and read char from 8042. The ports are 0x60 for input buffer and 0x64 for status. Keyboard operation mainly contain the code for different key. Every key on the keyboard has a make key and a break key, which are sent to 8024 when they are press and unpress.
2. Screen. This part deal with simple screen operation in which we can output the char to screen in different color.
3. TTYs. TTY is important for a multi-user environment. For each process, there is a tty assign to them, which corresponds to a display memory. When we change to a specified tty, we actually make the screen start address be the address in that tty. And we must enbale multi-tty to enable multi-process can excute and output at the same time.
4. Printf. tty is a task excute in ring1, and simple process excute in ring3. So when a process need to print something, it need to use a interrupt to let tty to print the string to screen.
