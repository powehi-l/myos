1. a -- boot sector的相关系统信息，AA55结尾
2. b -- 通过中断int13使用bios读取特定的sector，然后进一步判断相应sector中是否包含loader.bin文件，最终如果有得到loader.bin的起始扇区号
3. c -- 在得到初始的序号之后，将相应的