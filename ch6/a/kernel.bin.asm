00030400  BC80480300        mov esp,0x34880
00030405  C705804803000000  mov dword [dword 0x34880],0x0
         -0000
0003040F  0F010584480300    sgdt [dword 0x34884]
00030416  6687DB            xchg bx,bx
00030419  E8AE010000        call 0x305cc
0003041E  0F011584480300    lgdt [dword 0x34884]
00030425  0F011DA04C0300    lidt [dword 0x34ca0]
0003042C  EA330403000800    jmp 0x8:0x30433
00030433  31C0              xor eax,eax
00030435  66B82000          mov ax,0x20
00030439  0F00D8            ltr ax
0003043C  E952020000        jmp 0x30693
00030441  90                nop
00030442  90                nop
00030443  90                nop
00030444  90                nop
00030445  90                nop
00030446  90                nop
00030447  90                nop
00030448  90                nop
00030449  90                nop
0003044A  90                nop
0003044B  90                nop
0003044C  90                nop
0003044D  90                nop
0003044E  90                nop
0003044F  90                nop
00030450  6A00              push byte +0x0
00030452  E858040000        call 0x308af
00030457  83C404            add esp,byte +0x4
0003045A  F4                hlt
0003045B  90                nop
0003045C  90                nop
0003045D  90                nop
0003045E  90                nop
0003045F  90                nop
00030460  6A01              push byte +0x1
00030462  E848040000        call 0x308af
00030467  83C404            add esp,byte +0x4
0003046A  F4                hlt
0003046B  90                nop
0003046C  90                nop
0003046D  90                nop
0003046E  90                nop
0003046F  90                nop
00030470  6A02              push byte +0x2
00030472  E838040000        call 0x308af
00030477  83C404            add esp,byte +0x4
0003047A  F4                hlt
0003047B  90                nop
0003047C  90                nop
0003047D  90                nop
0003047E  90                nop
0003047F  90                nop
00030480  6A03              push byte +0x3
00030482  E828040000        call 0x308af
00030487  83C404            add esp,byte +0x4
0003048A  F4                hlt
0003048B  90                nop
0003048C  90                nop
0003048D  90                nop
0003048E  90                nop
0003048F  90                nop
00030490  6A04              push byte +0x4
00030492  E818040000        call 0x308af
00030497  83C404            add esp,byte +0x4
0003049A  F4                hlt
0003049B  90                nop
0003049C  90                nop
0003049D  90                nop
0003049E  90                nop
0003049F  90                nop
000304A0  6A05              push byte +0x5
000304A2  E808040000        call 0x308af
000304A7  83C404            add esp,byte +0x4
000304AA  F4                hlt
000304AB  90                nop
000304AC  90                nop
000304AD  90                nop
000304AE  90                nop
000304AF  90                nop
000304B0  6A06              push byte +0x6
000304B2  E8F8030000        call 0x308af
000304B7  83C404            add esp,byte +0x4
000304BA  F4                hlt
000304BB  90                nop
000304BC  90                nop
000304BD  90                nop
000304BE  90                nop
000304BF  90                nop
000304C0  6A07              push byte +0x7
000304C2  E8E8030000        call 0x308af
000304C7  83C404            add esp,byte +0x4
000304CA  F4                hlt
000304CB  90                nop
000304CC  90                nop
000304CD  90                nop
000304CE  90                nop
000304CF  90                nop
000304D0  6A08              push byte +0x8
000304D2  E8D8030000        call 0x308af
000304D7  83C404            add esp,byte +0x4
000304DA  F4                hlt
000304DB  90                nop
000304DC  90                nop
000304DD  90                nop
000304DE  90                nop
000304DF  90                nop
000304E0  6A09              push byte +0x9
000304E2  E8C8030000        call 0x308af
000304E7  83C404            add esp,byte +0x4
000304EA  F4                hlt
000304EB  90                nop
000304EC  90                nop
000304ED  90                nop
000304EE  90                nop
000304EF  90                nop
000304F0  6A0A              push byte +0xa
000304F2  E8B8030000        call 0x308af
000304F7  83C404            add esp,byte +0x4
000304FA  F4                hlt
000304FB  90                nop
000304FC  90                nop
000304FD  90                nop
000304FE  90                nop
000304FF  90                nop
00030500  6A0B              push byte +0xb
00030502  E8A8030000        call 0x308af
00030507  83C404            add esp,byte +0x4
0003050A  F4                hlt
0003050B  90                nop
0003050C  90                nop
0003050D  90                nop
0003050E  90                nop
0003050F  90                nop
00030510  6A0C              push byte +0xc
00030512  E898030000        call 0x308af
00030517  83C404            add esp,byte +0x4
0003051A  F4                hlt
0003051B  90                nop
0003051C  90                nop
0003051D  90                nop
0003051E  90                nop
0003051F  90                nop
00030520  6A0D              push byte +0xd
00030522  E888030000        call 0x308af
00030527  83C404            add esp,byte +0x4
0003052A  F4                hlt
0003052B  90                nop
0003052C  90                nop
0003052D  90                nop
0003052E  90                nop
0003052F  90                nop
00030530  6A0E              push byte +0xe
00030532  E878030000        call 0x308af
00030537  83C404            add esp,byte +0x4
0003053A  F4                hlt
0003053B  90                nop
0003053C  90                nop
0003053D  90                nop
0003053E  90                nop
0003053F  90                nop
00030540  6A0F              push byte +0xf
00030542  E868030000        call 0x308af
00030547  83C404            add esp,byte +0x4
0003054A  F4                hlt
0003054B  6AFF              push byte -0x1
0003054D  6A00              push byte +0x0
0003054F  EB50              jmp short 0x305a1
00030551  6AFF              push byte -0x1
00030553  6A01              push byte +0x1
00030555  EB4A              jmp short 0x305a1
00030557  6AFF              push byte -0x1
00030559  6A02              push byte +0x2
0003055B  EB44              jmp short 0x305a1
0003055D  6AFF              push byte -0x1
0003055F  6A03              push byte +0x3
00030561  EB3E              jmp short 0x305a1
00030563  6AFF              push byte -0x1
00030565  6A04              push byte +0x4
00030567  EB38              jmp short 0x305a1
00030569  6AFF              push byte -0x1
0003056B  6A05              push byte +0x5
0003056D  EB32              jmp short 0x305a1
0003056F  6AFF              push byte -0x1
00030571  6A06              push byte +0x6
00030573  EB2C              jmp short 0x305a1
00030575  6AFF              push byte -0x1
00030577  6A07              push byte +0x7
00030579  EB26              jmp short 0x305a1
0003057B  6AFF              push byte -0x1
0003057D  6A08              push byte +0x8
0003057F  EB20              jmp short 0x305a1
00030581  6AFF              push byte -0x1
00030583  6A09              push byte +0x9
00030585  EB1A              jmp short 0x305a1
00030587  6A0A              push byte +0xa
00030589  EB16              jmp short 0x305a1
0003058B  6A0B              push byte +0xb
0003058D  EB12              jmp short 0x305a1
0003058F  6A0C              push byte +0xc
00030591  EB0E              jmp short 0x305a1
00030593  6A0D              push byte +0xd
00030595  EB0A              jmp short 0x305a1
00030597  6A0E              push byte +0xe
00030599  EB06              jmp short 0x305a1
0003059B  6AFF              push byte -0x1
0003059D  6A10              push byte +0x10
0003059F  EB00              jmp short 0x305a1
000305A1  E859080000        call 0x30dff
000305A6  83C408            add esp,byte +0x8
000305A9  F4                hlt
000305AA  6687DB            xchg bx,bx
000305AD  8B2528550300      mov esp,[dword 0x35528]
000305B3  0F00542448        lldt [esp+0x48]
000305B8  8D442448          lea eax,[esp+0x48]
000305BC  A3C4540300        mov [0x354c4],eax
000305C1  0FA9              pop gs
000305C3  0FA1              pop fs
000305C5  07                pop es
000305C6  1F                pop ds
000305C7  61                popa
000305C8  83C404            add esp,byte +0x4
000305CB  CF                iret
000305CC  55                push ebp
000305CD  89E5              mov ebp,esp
000305CF  53                push ebx
000305D0  83EC14            sub esp,byte +0x14
000305D3  E8B7000000        call 0x3068f
000305D8  81C3283A0000      add ebx,0x3a28
000305DE  83EC0C            sub esp,byte +0xc
000305E1  8D8300E0FFFF      lea eax,[ebx-0x2000]
000305E7  50                push eax
000305E8  E8B3090000        call 0x30fa0
000305ED  83C410            add esp,byte +0x10
000305F0  C7C084480300      mov eax,0x34884
000305F6  0FB700            movzx eax,word [eax]
000305F9  0FB7C0            movzx eax,ax
000305FC  8D5001            lea edx,[eax+0x1]
000305FF  C7C084480300      mov eax,0x34884
00030605  8D4002            lea eax,[eax+0x2]
00030608  8B00              mov eax,[eax]
0003060A  83EC04            sub esp,byte +0x4
0003060D  52                push edx
0003060E  50                push eax
0003060F  C7C0A0480300      mov eax,0x348a0
00030615  50                push eax
00030616  E835090000        call 0x30f50
0003061B  83C410            add esp,byte +0x10
0003061E  C7C084480300      mov eax,0x34884
00030624  8945E8            mov [ebp-0x18],eax
00030627  C7C084480300      mov eax,0x34884
0003062D  8D4002            lea eax,[eax+0x2]
00030630  8945EC            mov [ebp-0x14],eax
00030633  8B45E8            mov eax,[ebp-0x18]
00030636  66C700FF03        mov word [eax],0x3ff
0003063B  C7C0A0480300      mov eax,0x348a0
00030641  89C2              mov edx,eax
00030643  8B45EC            mov eax,[ebp-0x14]
00030646  8910              mov [eax],edx
00030648  C7C0A04C0300      mov eax,0x34ca0
0003064E  8945F0            mov [ebp-0x10],eax
00030651  C7C0A04C0300      mov eax,0x34ca0
00030657  8D4002            lea eax,[eax+0x2]
0003065A  8945F4            mov [ebp-0xc],eax
0003065D  8B45F0            mov eax,[ebp-0x10]
00030660  66C700FF07        mov word [eax],0x7ff
00030665  C7C0C04C0300      mov eax,0x34cc0
0003066B  89C2              mov edx,eax
0003066D  8B45F4            mov eax,[ebp-0xc]
00030670  8910              mov [eax],edx
00030672  E882020000        call 0x308f9
00030677  83EC0C            sub esp,byte +0xc
0003067A  8D832CE0FFFF      lea eax,[ebx-0x1fd4]
00030680  50                push eax
00030681  E81A090000        call 0x30fa0
00030686  83C410            add esp,byte +0x10
00030689  90                nop
0003068A  8B5DFC            mov ebx,[ebp-0x4]
0003068D  C9                leave
0003068E  C3                ret
0003068F  8B1C24            mov ebx,[esp]
00030692  C3                ret
00030693  55                push ebp
00030694  89E5              mov ebp,esp
00030696  53                push ebx
00030697  83EC14            sub esp,byte +0x14
0003069A  E8F0FFFFFF        call 0x3068f
0003069F  81C361390000      add ebx,0x3961
000306A5  83EC0C            sub esp,byte +0xc
000306A8  8D8350E0FFFF      lea eax,[ebx-0x1fb0]
000306AE  50                push eax
000306AF  E8EC080000        call 0x30fa0
000306B4  83C410            add esp,byte +0x10
000306B7  C7C040550300      mov eax,0x35540
000306BD  8945F4            mov [ebp-0xc],eax
000306C0  8B45F4            mov eax,[ebp-0xc]
000306C3  66C740482800      mov word [eax+0x48],0x28
000306C9  8B45F4            mov eax,[ebp-0xc]
000306CC  8D504A            lea edx,[eax+0x4a]
000306CF  83EC04            sub esp,byte +0x4
000306D2  6A08              push byte +0x8
000306D4  C7C0A0480300      mov eax,0x348a0
000306DA  8D4008            lea eax,[eax+0x8]
000306DD  50                push eax
000306DE  52                push edx
000306DF  E86C080000        call 0x30f50
000306E4  83C410            add esp,byte +0x10
000306E7  8B45F4            mov eax,[ebp-0xc]
000306EA  C6404FB8          mov byte [eax+0x4f],0xb8
000306EE  8B45F4            mov eax,[ebp-0xc]
000306F1  8D5052            lea edx,[eax+0x52]
000306F4  83EC04            sub esp,byte +0x4
000306F7  6A08              push byte +0x8
000306F9  C7C0A0480300      mov eax,0x348a0
000306FF  8D4010            lea eax,[eax+0x10]
00030702  50                push eax
00030703  52                push edx
00030704  E847080000        call 0x30f50
00030709  83C410            add esp,byte +0x10
0003070C  8B45F4            mov eax,[ebp-0xc]
0003070F  C64057B2          mov byte [eax+0x57],0xb2
00030713  8B45F4            mov eax,[ebp-0xc]
00030716  C7403805000000    mov dword [eax+0x38],0x5
0003071D  8B45F4            mov eax,[ebp-0xc]
00030720  C7400C0D000000    mov dword [eax+0xc],0xd
00030727  8B45F4            mov eax,[ebp-0xc]
0003072A  C740080D000000    mov dword [eax+0x8],0xd
00030731  8B45F4            mov eax,[ebp-0xc]
00030734  C740040D000000    mov dword [eax+0x4],0xd
0003073B  8B45F4            mov eax,[ebp-0xc]
0003073E  C740440D000000    mov dword [eax+0x44],0xd
00030745  8B45F4            mov eax,[ebp-0xc]
00030748  C70019000000      mov dword [eax],0x19
0003074E  8D938BC7FFFF      lea edx,[ebx-0x3875]
00030754  8B45F4            mov eax,[ebp-0xc]
00030757  895034            mov [eax+0x34],edx
0003075A  C7C0C0550300      mov eax,0x355c0
00030760  8D9000800000      lea edx,[eax+0x8000]
00030766  8B45F4            mov eax,[ebp-0xc]
00030769  895040            mov [eax+0x40],edx
0003076C  8B45F4            mov eax,[ebp-0xc]
0003076F  C7403C02120000    mov dword [eax+0x3c],0x1202
00030776  C7C028550300      mov eax,0x35528
0003077C  C7C240550300      mov edx,0x35540
00030782  8910              mov [eax],edx
00030784  E821FEFFFF        call 0x305aa
00030789  EBFE              jmp short 0x30789
0003078B  55                push ebp
0003078C  89E5              mov ebp,esp
0003078E  53                push ebx
0003078F  83EC14            sub esp,byte +0x14
00030792  E8F8FEFFFF        call 0x3068f
00030797  81C369380000      add ebx,0x3869
0003079D  C745F400000000    mov dword [ebp-0xc],0x0
000307A4  83EC0C            sub esp,byte +0xc
000307A7  8D8370E0FFFF      lea eax,[ebx-0x1f90]
000307AD  50                push eax
000307AE  E8ED070000        call 0x30fa0
000307B3  83C410            add esp,byte +0x10
000307B6  8B45F4            mov eax,[ebp-0xc]
000307B9  8D5001            lea edx,[eax+0x1]
000307BC  8955F4            mov [ebp-0xc],edx
000307BF  83EC0C            sub esp,byte +0xc
000307C2  50                push eax
000307C3  E82C090000        call 0x310f4
000307C8  83C410            add esp,byte +0x10
000307CB  83EC0C            sub esp,byte +0xc
000307CE  8D8372E0FFFF      lea eax,[ebx-0x1f8e]
000307D4  50                push eax
000307D5  E8C6070000        call 0x30fa0
000307DA  83C410            add esp,byte +0x10
000307DD  83EC0C            sub esp,byte +0xc
000307E0  6A01              push byte +0x1
000307E2  E843090000        call 0x3112a
000307E7  83C410            add esp,byte +0x10
000307EA  EBB8              jmp short 0x307a4
000307EC  55                push ebp
000307ED  89E5              mov ebp,esp
000307EF  53                push ebx
000307F0  83EC04            sub esp,byte +0x4
000307F3  E897FEFFFF        call 0x3068f
000307F8  81C308380000      add ebx,0x3808
000307FE  83EC08            sub esp,byte +0x8
00030801  6A11              push byte +0x11
00030803  6A20              push byte +0x20
00030805  E81F080000        call 0x31029
0003080A  83C410            add esp,byte +0x10
0003080D  83EC08            sub esp,byte +0x8
00030810  6A11              push byte +0x11
00030812  68A0000000        push dword 0xa0
00030817  E80D080000        call 0x31029
0003081C  83C410            add esp,byte +0x10
0003081F  83EC08            sub esp,byte +0x8
00030822  6A20              push byte +0x20
00030824  6A21              push byte +0x21
00030826  E8FE070000        call 0x31029
0003082B  83C410            add esp,byte +0x10
0003082E  83EC08            sub esp,byte +0x8
00030831  6A28              push byte +0x28
00030833  68A1000000        push dword 0xa1
00030838  E8EC070000        call 0x31029
0003083D  83C410            add esp,byte +0x10
00030840  83EC08            sub esp,byte +0x8
00030843  6A04              push byte +0x4
00030845  6A21              push byte +0x21
00030847  E8DD070000        call 0x31029
0003084C  83C410            add esp,byte +0x10
0003084F  83EC08            sub esp,byte +0x8
00030852  6A02              push byte +0x2
00030854  68A1000000        push dword 0xa1
00030859  E8CB070000        call 0x31029
0003085E  83C410            add esp,byte +0x10
00030861  83EC08            sub esp,byte +0x8
00030864  6A01              push byte +0x1
00030866  6A21              push byte +0x21
00030868  E8BC070000        call 0x31029
0003086D  83C410            add esp,byte +0x10
00030870  83EC08            sub esp,byte +0x8
00030873  6A01              push byte +0x1
00030875  68A1000000        push dword 0xa1
0003087A  E8AA070000        call 0x31029
0003087F  83C410            add esp,byte +0x10
00030882  83EC08            sub esp,byte +0x8
00030885  68FD000000        push dword 0xfd
0003088A  6A21              push byte +0x21
0003088C  E898070000        call 0x31029
00030891  83C410            add esp,byte +0x10
00030894  83EC08            sub esp,byte +0x8
00030897  68FF000000        push dword 0xff
0003089C  68A1000000        push dword 0xa1
000308A1  E883070000        call 0x31029
000308A6  83C410            add esp,byte +0x10
000308A9  90                nop
000308AA  8B5DFC            mov ebx,[ebp-0x4]
000308AD  C9                leave
000308AE  C3                ret
000308AF  55                push ebp
000308B0  89E5              mov ebp,esp
000308B2  53                push ebx
000308B3  83EC04            sub esp,byte +0x4
000308B6  E8D4FDFFFF        call 0x3068f
000308BB  81C345370000      add ebx,0x3745
000308C1  83EC0C            sub esp,byte +0xc
000308C4  8D8374E0FFFF      lea eax,[ebx-0x1f8c]
000308CA  50                push eax
000308CB  E8D0060000        call 0x30fa0
000308D0  83C410            add esp,byte +0x10
000308D3  83EC0C            sub esp,byte +0xc
000308D6  FF7508            push dword [ebp+0x8]
000308D9  E816080000        call 0x310f4
000308DE  83C410            add esp,byte +0x10
000308E1  83EC0C            sub esp,byte +0xc
000308E4  8D8383E0FFFF      lea eax,[ebx-0x1f7d]
000308EA  50                push eax
000308EB  E8B0060000        call 0x30fa0
000308F0  83C410            add esp,byte +0x10
000308F3  90                nop
000308F4  8B5DFC            mov ebx,[ebp-0x4]
000308F7  C9                leave
000308F8  C3                ret
000308F9  55                push ebp
000308FA  89E5              mov ebp,esp
000308FC  53                push ebx
000308FD  83EC04            sub esp,byte +0x4
00030900  E88AFDFFFF        call 0x3068f
00030905  81C3FB360000      add ebx,0x36fb
0003090B  E8DCFEFFFF        call 0x307ec
00030910  6A00              push byte +0x0
00030912  C7C04B050300      mov eax,0x3054b
00030918  50                push eax
00030919  688E000000        push dword 0x8e
0003091E  6A00              push byte +0x0
00030920  E885030000        call 0x30caa
00030925  83C410            add esp,byte +0x10
00030928  6A00              push byte +0x0
0003092A  C7C051050300      mov eax,0x30551
00030930  50                push eax
00030931  688E000000        push dword 0x8e
00030936  6A01              push byte +0x1
00030938  E86D030000        call 0x30caa
0003093D  83C410            add esp,byte +0x10
00030940  6A00              push byte +0x0
00030942  C7C057050300      mov eax,0x30557
00030948  50                push eax
00030949  688E000000        push dword 0x8e
0003094E  6A02              push byte +0x2
00030950  E855030000        call 0x30caa
00030955  83C410            add esp,byte +0x10
00030958  6A03              push byte +0x3
0003095A  C7C05D050300      mov eax,0x3055d
00030960  50                push eax
00030961  688E000000        push dword 0x8e
00030966  6A03              push byte +0x3
00030968  E83D030000        call 0x30caa
0003096D  83C410            add esp,byte +0x10
00030970  6A03              push byte +0x3
00030972  C7C063050300      mov eax,0x30563
00030978  50                push eax
00030979  688E000000        push dword 0x8e
0003097E  6A04              push byte +0x4
00030980  E825030000        call 0x30caa
00030985  83C410            add esp,byte +0x10
00030988  6A00              push byte +0x0
0003098A  C7C069050300      mov eax,0x30569
00030990  50                push eax
00030991  688E000000        push dword 0x8e
00030996  6A05              push byte +0x5
00030998  E80D030000        call 0x30caa
0003099D  83C410            add esp,byte +0x10
000309A0  6A00              push byte +0x0
000309A2  C7C06F050300      mov eax,0x3056f
000309A8  50                push eax
000309A9  688E000000        push dword 0x8e
000309AE  6A06              push byte +0x6
000309B0  E8F5020000        call 0x30caa
000309B5  83C410            add esp,byte +0x10
000309B8  6A00              push byte +0x0
000309BA  C7C075050300      mov eax,0x30575
000309C0  50                push eax
000309C1  688E000000        push dword 0x8e
000309C6  6A07              push byte +0x7
000309C8  E8DD020000        call 0x30caa
000309CD  83C410            add esp,byte +0x10
000309D0  6A00              push byte +0x0
000309D2  C7C07B050300      mov eax,0x3057b
000309D8  50                push eax
000309D9  688E000000        push dword 0x8e
000309DE  6A08              push byte +0x8
000309E0  E8C5020000        call 0x30caa
000309E5  83C410            add esp,byte +0x10
000309E8  6A00              push byte +0x0
000309EA  C7C081050300      mov eax,0x30581
000309F0  50                push eax
000309F1  688E000000        push dword 0x8e
000309F6  6A09              push byte +0x9
000309F8  E8AD020000        call 0x30caa
000309FD  83C410            add esp,byte +0x10
00030A00  6A00              push byte +0x0
00030A02  C7C087050300      mov eax,0x30587
00030A08  50                push eax
00030A09  688E000000        push dword 0x8e
00030A0E  6A0A              push byte +0xa
00030A10  E895020000        call 0x30caa
00030A15  83C410            add esp,byte +0x10
00030A18  6A00              push byte +0x0
00030A1A  C7C08B050300      mov eax,0x3058b
00030A20  50                push eax
00030A21  688E000000        push dword 0x8e
00030A26  6A0B              push byte +0xb
00030A28  E87D020000        call 0x30caa
00030A2D  83C410            add esp,byte +0x10
00030A30  6A00              push byte +0x0
00030A32  C7C08F050300      mov eax,0x3058f
00030A38  50                push eax
00030A39  688E000000        push dword 0x8e
00030A3E  6A0C              push byte +0xc
00030A40  E865020000        call 0x30caa
00030A45  83C410            add esp,byte +0x10
00030A48  6A00              push byte +0x0
00030A4A  C7C093050300      mov eax,0x30593
00030A50  50                push eax
00030A51  688E000000        push dword 0x8e
00030A56  6A0D              push byte +0xd
00030A58  E84D020000        call 0x30caa
00030A5D  83C410            add esp,byte +0x10
00030A60  6A00              push byte +0x0
00030A62  C7C097050300      mov eax,0x30597
00030A68  50                push eax
00030A69  688E000000        push dword 0x8e
00030A6E  6A0E              push byte +0xe
00030A70  E835020000        call 0x30caa
00030A75  83C410            add esp,byte +0x10
00030A78  6A00              push byte +0x0
00030A7A  C7C09B050300      mov eax,0x3059b
00030A80  50                push eax
00030A81  688E000000        push dword 0x8e
00030A86  6A10              push byte +0x10
00030A88  E81D020000        call 0x30caa
00030A8D  83C410            add esp,byte +0x10
00030A90  6A00              push byte +0x0
00030A92  C7C050040300      mov eax,0x30450
00030A98  50                push eax
00030A99  688E000000        push dword 0x8e
00030A9E  6A20              push byte +0x20
00030AA0  E805020000        call 0x30caa
00030AA5  83C410            add esp,byte +0x10
00030AA8  6A00              push byte +0x0
00030AAA  C7C060040300      mov eax,0x30460
00030AB0  50                push eax
00030AB1  688E000000        push dword 0x8e
00030AB6  6A21              push byte +0x21
00030AB8  E8ED010000        call 0x30caa
00030ABD  83C410            add esp,byte +0x10
00030AC0  6A00              push byte +0x0
00030AC2  C7C070040300      mov eax,0x30470
00030AC8  50                push eax
00030AC9  688E000000        push dword 0x8e
00030ACE  6A22              push byte +0x22
00030AD0  E8D5010000        call 0x30caa
00030AD5  83C410            add esp,byte +0x10
00030AD8  6A00              push byte +0x0
00030ADA  C7C080040300      mov eax,0x30480
00030AE0  50                push eax
00030AE1  688E000000        push dword 0x8e
00030AE6  6A23              push byte +0x23
00030AE8  E8BD010000        call 0x30caa
00030AED  83C410            add esp,byte +0x10
00030AF0  6A00              push byte +0x0
00030AF2  C7C090040300      mov eax,0x30490
00030AF8  50                push eax
00030AF9  688E000000        push dword 0x8e
00030AFE  6A24              push byte +0x24
00030B00  E8A5010000        call 0x30caa
00030B05  83C410            add esp,byte +0x10
00030B08  6A00              push byte +0x0
00030B0A  C7C0A0040300      mov eax,0x304a0
00030B10  50                push eax
00030B11  688E000000        push dword 0x8e
00030B16  6A25              push byte +0x25
00030B18  E88D010000        call 0x30caa
00030B1D  83C410            add esp,byte +0x10
00030B20  6A00              push byte +0x0
00030B22  C7C0B0040300      mov eax,0x304b0
00030B28  50                push eax
00030B29  688E000000        push dword 0x8e
00030B2E  6A26              push byte +0x26
00030B30  E875010000        call 0x30caa
00030B35  83C410            add esp,byte +0x10
00030B38  6A00              push byte +0x0
00030B3A  C7C0C0040300      mov eax,0x304c0
00030B40  50                push eax
00030B41  688E000000        push dword 0x8e
00030B46  6A27              push byte +0x27
00030B48  E85D010000        call 0x30caa
00030B4D  83C410            add esp,byte +0x10
00030B50  6A00              push byte +0x0
00030B52  C7C0D0040300      mov eax,0x304d0
00030B58  50                push eax
00030B59  688E000000        push dword 0x8e
00030B5E  6A28              push byte +0x28
00030B60  E845010000        call 0x30caa
00030B65  83C410            add esp,byte +0x10
00030B68  6A00              push byte +0x0
00030B6A  C7C0E0040300      mov eax,0x304e0
00030B70  50                push eax
00030B71  688E000000        push dword 0x8e
00030B76  6A29              push byte +0x29
00030B78  E82D010000        call 0x30caa
00030B7D  83C410            add esp,byte +0x10
00030B80  6A00              push byte +0x0
00030B82  C7C0F0040300      mov eax,0x304f0
00030B88  50                push eax
00030B89  688E000000        push dword 0x8e
00030B8E  6A2A              push byte +0x2a
00030B90  E815010000        call 0x30caa
00030B95  83C410            add esp,byte +0x10
00030B98  6A00              push byte +0x0
00030B9A  C7C000050300      mov eax,0x30500
00030BA0  50                push eax
00030BA1  688E000000        push dword 0x8e
00030BA6  6A2B              push byte +0x2b
00030BA8  E8FD000000        call 0x30caa
00030BAD  83C410            add esp,byte +0x10
00030BB0  6A00              push byte +0x0
00030BB2  C7C010050300      mov eax,0x30510
00030BB8  50                push eax
00030BB9  688E000000        push dword 0x8e
00030BBE  6A2C              push byte +0x2c
00030BC0  E8E5000000        call 0x30caa
00030BC5  83C410            add esp,byte +0x10
00030BC8  6A00              push byte +0x0
00030BCA  C7C020050300      mov eax,0x30520
00030BD0  50                push eax
00030BD1  688E000000        push dword 0x8e
00030BD6  6A2D              push byte +0x2d
00030BD8  E8CD000000        call 0x30caa
00030BDD  83C410            add esp,byte +0x10
00030BE0  6A00              push byte +0x0
00030BE2  C7C030050300      mov eax,0x30530
00030BE8  50                push eax
00030BE9  688E000000        push dword 0x8e
00030BEE  6A2E              push byte +0x2e
00030BF0  E8B5000000        call 0x30caa
00030BF5  83C410            add esp,byte +0x10
00030BF8  6A00              push byte +0x0
00030BFA  C7C040050300      mov eax,0x30540
00030C00  50                push eax
00030C01  688E000000        push dword 0x8e
00030C06  6A2F              push byte +0x2f
00030C08  E89D000000        call 0x30caa
00030C0D  83C410            add esp,byte +0x10
00030C10  83EC04            sub esp,byte +0x4
00030C13  6A68              push byte +0x68
00030C15  6A00              push byte +0x0
00030C17  C7C0C0540300      mov eax,0x354c0
00030C1D  50                push eax
00030C1E  E856030000        call 0x30f79
00030C23  83C410            add esp,byte +0x10
00030C26  C7C0C0540300      mov eax,0x354c0
00030C2C  C7400810000000    mov dword [eax+0x8],0x10
00030C33  83EC0C            sub esp,byte +0xc
00030C36  6A10              push byte +0x10
00030C38  E8EF000000        call 0x30d2c
00030C3D  83C410            add esp,byte +0x10
00030C40  89C2              mov edx,eax
00030C42  C7C0C0540300      mov eax,0x354c0
00030C48  01D0              add eax,edx
00030C4A  6889000000        push dword 0x89
00030C4F  6A67              push byte +0x67
00030C51  50                push eax
00030C52  C7C0A0480300      mov eax,0x348a0
00030C58  8D4020            lea eax,[eax+0x20]
00030C5B  50                push eax
00030C5C  E827010000        call 0x30d88
00030C61  83C410            add esp,byte +0x10
00030C64  C7C0C0540300      mov eax,0x354c0
00030C6A  66C740666800      mov word [eax+0x66],0x68
00030C70  83EC0C            sub esp,byte +0xc
00030C73  6A10              push byte +0x10
00030C75  E8B2000000        call 0x30d2c
00030C7A  83C410            add esp,byte +0x10
00030C7D  89C2              mov edx,eax
00030C7F  C7C040550300      mov eax,0x35540
00030C85  8D404A            lea eax,[eax+0x4a]
00030C88  01D0              add eax,edx
00030C8A  6882000000        push dword 0x82
00030C8F  6A0F              push byte +0xf
00030C91  50                push eax
00030C92  C7C0A0480300      mov eax,0x348a0
00030C98  8D4028            lea eax,[eax+0x28]
00030C9B  50                push eax
00030C9C  E8E7000000        call 0x30d88
00030CA1  83C410            add esp,byte +0x10
00030CA4  90                nop
00030CA5  8B5DFC            mov ebx,[ebp-0x4]
00030CA8  C9                leave
00030CA9  C3                ret
00030CAA  55                push ebp
00030CAB  89E5              mov ebp,esp
00030CAD  53                push ebx
00030CAE  83EC1C            sub esp,byte +0x1c
00030CB1  E893020000        call 0x30f49
00030CB6  054A330000        add eax,0x334a
00030CBB  8B5D08            mov ebx,[ebp+0x8]
00030CBE  8B4D0C            mov ecx,[ebp+0xc]
00030CC1  8B5514            mov edx,[ebp+0x14]
00030CC4  885DE8            mov [ebp-0x18],bl
00030CC7  884DE4            mov [ebp-0x1c],cl
00030CCA  8855E0            mov [ebp-0x20],dl
00030CCD  0FB655E8          movzx edx,byte [ebp-0x18]
00030CD1  C1E203            shl edx,byte 0x3
00030CD4  C7C0C04C0300      mov eax,0x34cc0
00030CDA  01D0              add eax,edx
00030CDC  8945F8            mov [ebp-0x8],eax
00030CDF  8B4510            mov eax,[ebp+0x10]
00030CE2  8945F4            mov [ebp-0xc],eax
00030CE5  8B45F4            mov eax,[ebp-0xc]
00030CE8  89C2              mov edx,eax
00030CEA  8B45F8            mov eax,[ebp-0x8]
00030CED  668910            mov [eax],dx
00030CF0  8B45F8            mov eax,[ebp-0x8]
00030CF3  66C740020800      mov word [eax+0x2],0x8
00030CF9  8B45F8            mov eax,[ebp-0x8]
00030CFC  C6400400          mov byte [eax+0x4],0x0
00030D00  0FB645E0          movzx eax,byte [ebp-0x20]
00030D04  C1E005            shl eax,byte 0x5
00030D07  89C2              mov edx,eax
00030D09  0FB645E4          movzx eax,byte [ebp-0x1c]
00030D0D  09D0              or eax,edx
00030D0F  89C2              mov edx,eax
00030D11  8B45F8            mov eax,[ebp-0x8]
00030D14  885005            mov [eax+0x5],dl
00030D17  8B45F4            mov eax,[ebp-0xc]
00030D1A  C1E810            shr eax,byte 0x10
00030D1D  89C2              mov edx,eax
00030D1F  8B45F8            mov eax,[ebp-0x8]
00030D22  66895006          mov [eax+0x6],dx
00030D26  90                nop
00030D27  8B5DFC            mov ebx,[ebp-0x4]
00030D2A  C9                leave
00030D2B  C3                ret
00030D2C  55                push ebp
00030D2D  89E5              mov ebp,esp
00030D2F  83EC14            sub esp,byte +0x14
00030D32  E812020000        call 0x30f49
00030D37  05C9320000        add eax,0x32c9
00030D3C  8B5508            mov edx,[ebp+0x8]
00030D3F  668955EC          mov [ebp-0x14],dx
00030D43  0FB755EC          movzx edx,word [ebp-0x14]
00030D47  66C1EA03          shr dx,byte 0x3
00030D4B  0FB7D2            movzx edx,dx
00030D4E  C1E203            shl edx,byte 0x3
00030D51  C7C0A0480300      mov eax,0x348a0
00030D57  01D0              add eax,edx
00030D59  8945FC            mov [ebp-0x4],eax
00030D5C  8B45FC            mov eax,[ebp-0x4]
00030D5F  0FB64007          movzx eax,byte [eax+0x7]
00030D63  0FB6C0            movzx eax,al
00030D66  C1E018            shl eax,byte 0x18
00030D69  89C2              mov edx,eax
00030D6B  8B45FC            mov eax,[ebp-0x4]
00030D6E  0FB64004          movzx eax,byte [eax+0x4]
00030D72  0FB6C0            movzx eax,al
00030D75  C1E010            shl eax,byte 0x10
00030D78  09C2              or edx,eax
00030D7A  8B45FC            mov eax,[ebp-0x4]
00030D7D  0FB74002          movzx eax,word [eax+0x2]
00030D81  0FB7C0            movzx eax,ax
00030D84  09D0              or eax,edx
00030D86  C9                leave
00030D87  C3                ret
00030D88  55                push ebp
00030D89  89E5              mov ebp,esp
00030D8B  83EC04            sub esp,byte +0x4
00030D8E  E8B6010000        call 0x30f49
00030D93  056D320000        add eax,0x326d
00030D98  8B4514            mov eax,[ebp+0x14]
00030D9B  668945FC          mov [ebp-0x4],ax
00030D9F  8B4510            mov eax,[ebp+0x10]
00030DA2  89C2              mov edx,eax
00030DA4  8B4508            mov eax,[ebp+0x8]
00030DA7  668910            mov [eax],dx
00030DAA  8B450C            mov eax,[ebp+0xc]
00030DAD  89C2              mov edx,eax
00030DAF  8B4508            mov eax,[ebp+0x8]
00030DB2  66895002          mov [eax+0x2],dx
00030DB6  8B450C            mov eax,[ebp+0xc]
00030DB9  C1E810            shr eax,byte 0x10
00030DBC  89C2              mov edx,eax
00030DBE  8B4508            mov eax,[ebp+0x8]
00030DC1  885004            mov [eax+0x4],dl
00030DC4  0FB745FC          movzx eax,word [ebp-0x4]
00030DC8  89C2              mov edx,eax
00030DCA  8B4508            mov eax,[ebp+0x8]
00030DCD  885005            mov [eax+0x5],dl
00030DD0  8B4510            mov eax,[ebp+0x10]
00030DD3  C1E810            shr eax,byte 0x10
00030DD6  83E00F            and eax,byte +0xf
00030DD9  89C2              mov edx,eax
00030DDB  0FB745FC          movzx eax,word [ebp-0x4]
00030DDF  66C1E808          shr ax,byte 0x8
00030DE3  83E0F0            and eax,byte -0x10
00030DE6  09C2              or edx,eax
00030DE8  8B4508            mov eax,[ebp+0x8]
00030DEB  885006            mov [eax+0x6],dl
00030DEE  8B450C            mov eax,[ebp+0xc]
00030DF1  C1E818            shr eax,byte 0x18
00030DF4  89C2              mov edx,eax
00030DF6  8B4508            mov eax,[ebp+0x8]
00030DF9  885007            mov [eax+0x7],dl
00030DFC  90                nop
00030DFD  C9                leave
00030DFE  C3                ret
00030DFF  55                push ebp
00030E00  89E5              mov ebp,esp
00030E02  57                push edi
00030E03  56                push esi
00030E04  53                push ebx
00030E05  83EC6C            sub esp,byte +0x6c
00030E08  E882F8FFFF        call 0x3068f
00030E0D  81C3F3310000      add ebx,0x31f3
00030E13  C745E074000000    mov dword [ebp-0x20],0x74
00030E1A  8D4590            lea eax,[ebp-0x70]
00030E1D  8D9320000000      lea edx,[ebx+0x20]
00030E23  B914000000        mov ecx,0x14
00030E28  89C7              mov edi,eax
00030E2A  89D6              mov esi,edx
00030E2C  F3A5              rep movsd
00030E2E  C7C080480300      mov eax,0x34880
00030E34  C70000000000      mov dword [eax],0x0
00030E3A  C745E400000000    mov dword [ebp-0x1c],0x0
00030E41  EB16              jmp short 0x30e59
00030E43  83EC0C            sub esp,byte +0xc
00030E46  8D8388E0FFFF      lea eax,[ebx-0x1f78]
00030E4C  50                push eax
00030E4D  E84E010000        call 0x30fa0
00030E52  83C410            add esp,byte +0x10
00030E55  8345E401          add dword [ebp-0x1c],byte +0x1
00030E59  817DE48F010000    cmp dword [ebp-0x1c],0x18f
00030E60  7EE1              jng 0x30e43
00030E62  C7C080480300      mov eax,0x34880
00030E68  C70000000000      mov dword [eax],0x0
00030E6E  83EC08            sub esp,byte +0x8
00030E71  FF75E0            push dword [ebp-0x20]
00030E74  8D838AE0FFFF      lea eax,[ebx-0x1f76]
00030E7A  50                push eax
00030E7B  E864010000        call 0x30fe4
00030E80  83C410            add esp,byte +0x10
00030E83  8B4508            mov eax,[ebp+0x8]
00030E86  8B448590          mov eax,[ebp+eax*4-0x70]
00030E8A  83EC08            sub esp,byte +0x8
00030E8D  FF75E0            push dword [ebp-0x20]
00030E90  50                push eax
00030E91  E84E010000        call 0x30fe4
00030E96  83C410            add esp,byte +0x10
00030E99  83EC08            sub esp,byte +0x8
00030E9C  FF75E0            push dword [ebp-0x20]
00030E9F  8D839AE0FFFF      lea eax,[ebx-0x1f66]
00030EA5  50                push eax
00030EA6  E839010000        call 0x30fe4
00030EAB  83C410            add esp,byte +0x10
00030EAE  83EC08            sub esp,byte +0x8
00030EB1  FF75E0            push dword [ebp-0x20]
00030EB4  8D839DE0FFFF      lea eax,[ebx-0x1f63]
00030EBA  50                push eax
00030EBB  E824010000        call 0x30fe4
00030EC0  83C410            add esp,byte +0x10
00030EC3  83EC0C            sub esp,byte +0xc
00030EC6  FF7518            push dword [ebp+0x18]
00030EC9  E826020000        call 0x310f4
00030ECE  83C410            add esp,byte +0x10
00030ED1  83EC08            sub esp,byte +0x8
00030ED4  FF75E0            push dword [ebp-0x20]
00030ED7  8D83A5E0FFFF      lea eax,[ebx-0x1f5b]
00030EDD  50                push eax
00030EDE  E801010000        call 0x30fe4
00030EE3  83C410            add esp,byte +0x10
00030EE6  83EC0C            sub esp,byte +0xc
00030EE9  FF7514            push dword [ebp+0x14]
00030EEC  E803020000        call 0x310f4
00030EF1  83C410            add esp,byte +0x10
00030EF4  83EC08            sub esp,byte +0x8
00030EF7  FF75E0            push dword [ebp-0x20]
00030EFA  8D83A9E0FFFF      lea eax,[ebx-0x1f57]
00030F00  50                push eax
00030F01  E8DE000000        call 0x30fe4
00030F06  83C410            add esp,byte +0x10
00030F09  83EC0C            sub esp,byte +0xc
00030F0C  FF7510            push dword [ebp+0x10]
00030F0F  E8E0010000        call 0x310f4
00030F14  83C410            add esp,byte +0x10
00030F17  837D0CFF          cmp dword [ebp+0xc],byte -0x1
00030F1B  7423              jz 0x30f40
00030F1D  83EC08            sub esp,byte +0x8
00030F20  FF75E0            push dword [ebp-0x20]
00030F23  8D83AEE0FFFF      lea eax,[ebx-0x1f52]
00030F29  50                push eax
00030F2A  E8B5000000        call 0x30fe4
00030F2F  83C410            add esp,byte +0x10
00030F32  83EC0C            sub esp,byte +0xc
00030F35  FF750C            push dword [ebp+0xc]
00030F38  E8B7010000        call 0x310f4
00030F3D  83C410            add esp,byte +0x10
00030F40  90                nop
00030F41  8D65F4            lea esp,[ebp-0xc]
00030F44  5B                pop ebx
00030F45  5E                pop esi
00030F46  5F                pop edi
00030F47  5D                pop ebp
00030F48  C3                ret
00030F49  8B0424            mov eax,[esp]
00030F4C  C3                ret
00030F4D  6690              xchg ax,ax
00030F4F  90                nop
00030F50  55                push ebp
00030F51  89E5              mov ebp,esp
00030F53  56                push esi
00030F54  57                push edi
00030F55  51                push ecx
00030F56  8B7D08            mov edi,[ebp+0x8]
00030F59  8B750C            mov esi,[ebp+0xc]
00030F5C  8B4D10            mov ecx,[ebp+0x10]
00030F5F  83F900            cmp ecx,byte +0x0
00030F62  740B              jz 0x30f6f
00030F64  3E8A06            mov al,[ds:esi]
00030F67  46                inc esi
00030F68  268807            mov [es:edi],al
00030F6B  47                inc edi
00030F6C  49                dec ecx
00030F6D  EBF0              jmp short 0x30f5f
00030F6F  8B4508            mov eax,[ebp+0x8]
00030F72  59                pop ecx
00030F73  5F                pop edi
00030F74  5E                pop esi
00030F75  89EC              mov esp,ebp
00030F77  5D                pop ebp
00030F78  C3                ret
00030F79  55                push ebp
00030F7A  89E5              mov ebp,esp
00030F7C  56                push esi
00030F7D  57                push edi
00030F7E  53                push ebx
00030F7F  8B7D08            mov edi,[ebp+0x8]
00030F82  8B550C            mov edx,[ebp+0xc]
00030F85  8B4D10            mov ecx,[ebp+0x10]
00030F88  83F900            cmp ecx,byte +0x0
00030F8B  7406              jz 0x30f93
00030F8D  8817              mov [edi],dl
00030F8F  47                inc edi
00030F90  49                dec ecx
00030F91  EBF5              jmp short 0x30f88
00030F93  59                pop ecx
00030F94  5F                pop edi
00030F95  5E                pop esi
00030F96  89EC              mov esp,ebp
00030F98  5D                pop ebp
00030F99  C3                ret
00030F9A  6690              xchg ax,ax
00030F9C  6690              xchg ax,ax
00030F9E  6690              xchg ax,ax
00030FA0  55                push ebp
00030FA1  89E5              mov ebp,esp
00030FA3  53                push ebx
00030FA4  56                push esi
00030FA5  57                push edi
00030FA6  8B7508            mov esi,[ebp+0x8]
00030FA9  8B3D80480300      mov edi,[dword 0x34880]
00030FAF  B40F              mov ah,0xf
00030FB1  AC                lodsb
00030FB2  84C0              test al,al
00030FB4  7423              jz 0x30fd9
00030FB6  3C0A              cmp al,0xa
00030FB8  7516              jnz 0x30fd0
00030FBA  50                push eax
00030FBB  89F8              mov eax,edi
00030FBD  B3A0              mov bl,0xa0
00030FBF  F6F3              div bl
00030FC1  25FF000000        and eax,0xff
00030FC6  40                inc eax
00030FC7  B3A0              mov bl,0xa0
00030FC9  F6E3              mul bl
00030FCB  89C7              mov edi,eax
00030FCD  58                pop eax
00030FCE  EBE1              jmp short 0x30fb1
00030FD0  65668907          mov [gs:edi],ax
00030FD4  83C702            add edi,byte +0x2
00030FD7  EBD8              jmp short 0x30fb1
00030FD9  893D80480300      mov [dword 0x34880],edi
00030FDF  5F                pop edi
00030FE0  5E                pop esi
00030FE1  5B                pop ebx
00030FE2  5D                pop ebp
00030FE3  C3                ret
00030FE4  55                push ebp
00030FE5  89E5              mov ebp,esp
00030FE7  53                push ebx
00030FE8  56                push esi
00030FE9  57                push edi
00030FEA  8B7508            mov esi,[ebp+0x8]
00030FED  8B3D80480300      mov edi,[dword 0x34880]
00030FF3  8A650C            mov ah,[ebp+0xc]
00030FF6  AC                lodsb
00030FF7  84C0              test al,al
00030FF9  7423              jz 0x3101e
00030FFB  3C0A              cmp al,0xa
00030FFD  7516              jnz 0x31015
00030FFF  50                push eax
00031000  89F8              mov eax,edi
00031002  B3A0              mov bl,0xa0
00031004  F6F3              div bl
00031006  25FF000000        and eax,0xff
0003100B  40                inc eax
0003100C  B3A0              mov bl,0xa0
0003100E  F6E3              mul bl
00031010  89C7              mov edi,eax
00031012  58                pop eax
00031013  EBE1              jmp short 0x30ff6
00031015  65668907          mov [gs:edi],ax
00031019  83C702            add edi,byte +0x2
0003101C  EBD8              jmp short 0x30ff6
0003101E  893D80480300      mov [dword 0x34880],edi
00031024  5F                pop edi
00031025  5E                pop esi
00031026  5B                pop ebx
00031027  5D                pop ebp
00031028  C3                ret
00031029  8B542404          mov edx,[esp+0x4]
0003102D  8A442408          mov al,[esp+0x8]
00031031  EE                out dx,al
00031032  90                nop
00031033  90                nop
00031034  C3                ret
00031035  8B542404          mov edx,[esp+0x4]
00031039  31C0              xor eax,eax
0003103B  EC                in al,dx
0003103C  90                nop
0003103D  90                nop
0003103E  C3                ret
0003103F  55                push ebp
00031040  89E5              mov ebp,esp
00031042  83EC10            sub esp,byte +0x10
00031045  E8FFFEFFFF        call 0x30f49
0003104A  05B62F0000        add eax,0x2fb6
0003104F  8B4508            mov eax,[ebp+0x8]
00031052  8945FC            mov [ebp-0x4],eax
00031055  C745F000000000    mov dword [ebp-0x10],0x0
0003105C  8B45FC            mov eax,[ebp-0x4]
0003105F  8D5001            lea edx,[eax+0x1]
00031062  8955FC            mov [ebp-0x4],edx
00031065  C60030            mov byte [eax],0x30
00031068  8B45FC            mov eax,[ebp-0x4]
0003106B  8D5001            lea edx,[eax+0x1]
0003106E  8955FC            mov [ebp-0x4],edx
00031071  C60078            mov byte [eax],0x78
00031074  837D0C00          cmp dword [ebp+0xc],byte +0x0
00031078  750E              jnz 0x31088
0003107A  8B45FC            mov eax,[ebp-0x4]
0003107D  8D5001            lea edx,[eax+0x1]
00031080  8955FC            mov [ebp-0x4],edx
00031083  C60030            mov byte [eax],0x30
00031086  EB61              jmp short 0x310e9
00031088  C745F41C000000    mov dword [ebp-0xc],0x1c
0003108F  EB52              jmp short 0x310e3
00031091  8B45F4            mov eax,[ebp-0xc]
00031094  8B550C            mov edx,[ebp+0xc]
00031097  89C1              mov ecx,eax
00031099  D3FA              sar edx,cl
0003109B  89D0              mov eax,edx
0003109D  83E00F            and eax,byte +0xf
000310A0  8845FB            mov [ebp-0x5],al
000310A3  837DF000          cmp dword [ebp-0x10],byte +0x0
000310A7  7506              jnz 0x310af
000310A9  807DFB00          cmp byte [ebp-0x5],0x0
000310AD  7E30              jng 0x310df
000310AF  C745F001000000    mov dword [ebp-0x10],0x1
000310B6  0FB645FB          movzx eax,byte [ebp-0x5]
000310BA  83C030            add eax,byte +0x30
000310BD  8845FB            mov [ebp-0x5],al
000310C0  807DFB39          cmp byte [ebp-0x5],0x39
000310C4  7E0A              jng 0x310d0
000310C6  0FB645FB          movzx eax,byte [ebp-0x5]
000310CA  83C007            add eax,byte +0x7
000310CD  8845FB            mov [ebp-0x5],al
000310D0  8B45FC            mov eax,[ebp-0x4]
000310D3  8D5001            lea edx,[eax+0x1]
000310D6  8955FC            mov [ebp-0x4],edx
000310D9  0FB655FB          movzx edx,byte [ebp-0x5]
000310DD  8810              mov [eax],dl
000310DF  836DF404          sub dword [ebp-0xc],byte +0x4
000310E3  837DF400          cmp dword [ebp-0xc],byte +0x0
000310E7  79A8              jns 0x31091
000310E9  8B45FC            mov eax,[ebp-0x4]
000310EC  C60000            mov byte [eax],0x0
000310EF  8B4508            mov eax,[ebp+0x8]
000310F2  C9                leave
000310F3  C3                ret
000310F4  55                push ebp
000310F5  89E5              mov ebp,esp
000310F7  53                push ebx
000310F8  83EC14            sub esp,byte +0x14
000310FB  E88FF5FFFF        call 0x3068f
00031100  81C3002F0000      add ebx,0x2f00
00031106  FF7508            push dword [ebp+0x8]
00031109  8D45E8            lea eax,[ebp-0x18]
0003110C  50                push eax
0003110D  E82DFFFFFF        call 0x3103f
00031112  83C408            add esp,byte +0x8
00031115  83EC0C            sub esp,byte +0xc
00031118  8D45E8            lea eax,[ebp-0x18]
0003111B  50                push eax
0003111C  E87FFEFFFF        call 0x30fa0
00031121  83C410            add esp,byte +0x10
00031124  90                nop
00031125  8B5DFC            mov ebx,[ebp-0x4]
00031128  C9                leave
00031129  C3                ret
0003112A  55                push ebp
0003112B  89E5              mov ebp,esp
0003112D  83EC10            sub esp,byte +0x10
00031130  E814FEFFFF        call 0x30f49
00031135  05CB2E0000        add eax,0x2ecb
0003113A  C745F400000000    mov dword [ebp-0xc],0x0
00031141  EB2D              jmp short 0x31170
00031143  C745FC00000000    mov dword [ebp-0x4],0x0
0003114A  EB1A              jmp short 0x31166
0003114C  C745F800000000    mov dword [ebp-0x8],0x0
00031153  EB04              jmp short 0x31159
00031155  8345F801          add dword [ebp-0x8],byte +0x1
00031159  817DF80F270000    cmp dword [ebp-0x8],0x270f
00031160  7EF3              jng 0x31155
00031162  8345FC01          add dword [ebp-0x4],byte +0x1
00031166  837DFC09          cmp dword [ebp-0x4],byte +0x9
0003116A  7EE0              jng 0x3114c
0003116C  8345F401          add dword [ebp-0xc],byte +0x1
00031170  8B45F4            mov eax,[ebp-0xc]
00031173  3B4508            cmp eax,[ebp+0x8]
00031176  7CCB              jl 0x31143
00031178  90                nop
00031179  90                nop
0003117A  C9                leave
0003117B  C3                ret
0003117C  0000              add [eax],al
0003117E  0000              add [eax],al
00031180  0000              add [eax],al
00031182  0000              add [eax],al
00031184  0000              add [eax],al
00031186  0000              add [eax],al
00031188  0000              add [eax],al
0003118A  0000              add [eax],al
0003118C  0000              add [eax],al
0003118E  0000              add [eax],al
00031190  0000              add [eax],al
00031192  0000              add [eax],al
00031194  0000              add [eax],al
00031196  0000              add [eax],al
00031198  0000              add [eax],al
0003119A  0000              add [eax],al
0003119C  0000              add [eax],al
0003119E  0000              add [eax],al
000311A0  0000              add [eax],al
000311A2  0000              add [eax],al
000311A4  0000              add [eax],al
000311A6  0000              add [eax],al
000311A8  0000              add [eax],al
000311AA  0000              add [eax],al
000311AC  0000              add [eax],al
000311AE  0000              add [eax],al
000311B0  0000              add [eax],al
000311B2  0000              add [eax],al
000311B4  0000              add [eax],al
000311B6  0000              add [eax],al
000311B8  0000              add [eax],al
000311BA  0000              add [eax],al
000311BC  0000              add [eax],al
000311BE  0000              add [eax],al
000311C0  0000              add [eax],al
000311C2  0000              add [eax],al
000311C4  0000              add [eax],al
000311C6  0000              add [eax],al
000311C8  0000              add [eax],al
000311CA  0000              add [eax],al
000311CC  0000              add [eax],al
000311CE  0000              add [eax],al
000311D0  0000              add [eax],al
000311D2  0000              add [eax],al
000311D4  0000              add [eax],al
000311D6  0000              add [eax],al
000311D8  0000              add [eax],al
000311DA  0000              add [eax],al
000311DC  0000              add [eax],al
000311DE  0000              add [eax],al
000311E0  0000              add [eax],al
000311E2  0000              add [eax],al
000311E4  0000              add [eax],al
000311E6  0000              add [eax],al
000311E8  0000              add [eax],al
000311EA  0000              add [eax],al
000311EC  0000              add [eax],al
000311EE  0000              add [eax],al
000311F0  0000              add [eax],al
000311F2  0000              add [eax],al
000311F4  0000              add [eax],al
000311F6  0000              add [eax],al
000311F8  0000              add [eax],al
000311FA  0000              add [eax],al
000311FC  0000              add [eax],al
000311FE  0000              add [eax],al
00031200  0000              add [eax],al
00031202  0000              add [eax],al
00031204  0000              add [eax],al
00031206  0000              add [eax],al
00031208  0000              add [eax],al
0003120A  0000              add [eax],al
0003120C  0000              add [eax],al
0003120E  0000              add [eax],al
00031210  0000              add [eax],al
00031212  0000              add [eax],al
00031214  0000              add [eax],al
00031216  0000              add [eax],al
00031218  0000              add [eax],al
0003121A  0000              add [eax],al
0003121C  0000              add [eax],al
0003121E  0000              add [eax],al
00031220  0000              add [eax],al
00031222  0000              add [eax],al
00031224  0000              add [eax],al
00031226  0000              add [eax],al
00031228  0000              add [eax],al
0003122A  0000              add [eax],al
0003122C  0000              add [eax],al
0003122E  0000              add [eax],al
00031230  0000              add [eax],al
00031232  0000              add [eax],al
00031234  0000              add [eax],al
00031236  0000              add [eax],al
00031238  0000              add [eax],al
0003123A  0000              add [eax],al
0003123C  0000              add [eax],al
0003123E  0000              add [eax],al
00031240  0000              add [eax],al
00031242  0000              add [eax],al
00031244  0000              add [eax],al
00031246  0000              add [eax],al
00031248  0000              add [eax],al
0003124A  0000              add [eax],al
0003124C  0000              add [eax],al
0003124E  0000              add [eax],al
00031250  0000              add [eax],al
00031252  0000              add [eax],al
00031254  0000              add [eax],al
00031256  0000              add [eax],al
00031258  0000              add [eax],al
0003125A  0000              add [eax],al
0003125C  0000              add [eax],al
0003125E  0000              add [eax],al
00031260  0000              add [eax],al
00031262  0000              add [eax],al
00031264  0000              add [eax],al
00031266  0000              add [eax],al
00031268  0000              add [eax],al
0003126A  0000              add [eax],al
0003126C  0000              add [eax],al
0003126E  0000              add [eax],al
00031270  0000              add [eax],al
00031272  0000              add [eax],al
00031274  0000              add [eax],al
00031276  0000              add [eax],al
00031278  0000              add [eax],al
0003127A  0000              add [eax],al
0003127C  0000              add [eax],al
0003127E  0000              add [eax],al
00031280  0000              add [eax],al
00031282  0000              add [eax],al
00031284  0000              add [eax],al
00031286  0000              add [eax],al
00031288  0000              add [eax],al
0003128A  0000              add [eax],al
0003128C  0000              add [eax],al
0003128E  0000              add [eax],al
00031290  0000              add [eax],al
00031292  0000              add [eax],al
00031294  0000              add [eax],al
00031296  0000              add [eax],al
00031298  0000              add [eax],al
0003129A  0000              add [eax],al
0003129C  0000              add [eax],al
0003129E  0000              add [eax],al
000312A0  0000              add [eax],al
000312A2  0000              add [eax],al
000312A4  0000              add [eax],al
000312A6  0000              add [eax],al
000312A8  0000              add [eax],al
000312AA  0000              add [eax],al
000312AC  0000              add [eax],al
000312AE  0000              add [eax],al
000312B0  0000              add [eax],al
000312B2  0000              add [eax],al
000312B4  0000              add [eax],al
000312B6  0000              add [eax],al
000312B8  0000              add [eax],al
000312BA  0000              add [eax],al
000312BC  0000              add [eax],al
000312BE  0000              add [eax],al
000312C0  0000              add [eax],al
000312C2  0000              add [eax],al
000312C4  0000              add [eax],al
000312C6  0000              add [eax],al
000312C8  0000              add [eax],al
000312CA  0000              add [eax],al
000312CC  0000              add [eax],al
000312CE  0000              add [eax],al
000312D0  0000              add [eax],al
000312D2  0000              add [eax],al
000312D4  0000              add [eax],al
000312D6  0000              add [eax],al
000312D8  0000              add [eax],al
000312DA  0000              add [eax],al
000312DC  0000              add [eax],al
000312DE  0000              add [eax],al
000312E0  0000              add [eax],al
000312E2  0000              add [eax],al
000312E4  0000              add [eax],al
000312E6  0000              add [eax],al
000312E8  0000              add [eax],al
000312EA  0000              add [eax],al
000312EC  0000              add [eax],al
000312EE  0000              add [eax],al
000312F0  0000              add [eax],al
000312F2  0000              add [eax],al
000312F4  0000              add [eax],al
000312F6  0000              add [eax],al
000312F8  0000              add [eax],al
000312FA  0000              add [eax],al
000312FC  0000              add [eax],al
000312FE  0000              add [eax],al
00031300  0000              add [eax],al
00031302  0000              add [eax],al
00031304  0000              add [eax],al
00031306  0000              add [eax],al
00031308  0000              add [eax],al
0003130A  0000              add [eax],al
0003130C  0000              add [eax],al
0003130E  0000              add [eax],al
00031310  0000              add [eax],al
00031312  0000              add [eax],al
00031314  0000              add [eax],al
00031316  0000              add [eax],al
00031318  0000              add [eax],al
0003131A  0000              add [eax],al
0003131C  0000              add [eax],al
0003131E  0000              add [eax],al
00031320  0000              add [eax],al
00031322  0000              add [eax],al
00031324  0000              add [eax],al
00031326  0000              add [eax],al
00031328  0000              add [eax],al
0003132A  0000              add [eax],al
0003132C  0000              add [eax],al
0003132E  0000              add [eax],al
00031330  0000              add [eax],al
00031332  0000              add [eax],al
00031334  0000              add [eax],al
00031336  0000              add [eax],al
00031338  0000              add [eax],al
0003133A  0000              add [eax],al
0003133C  0000              add [eax],al
0003133E  0000              add [eax],al
00031340  0000              add [eax],al
00031342  0000              add [eax],al
00031344  0000              add [eax],al
00031346  0000              add [eax],al
00031348  0000              add [eax],al
0003134A  0000              add [eax],al
0003134C  0000              add [eax],al
0003134E  0000              add [eax],al
00031350  0000              add [eax],al
00031352  0000              add [eax],al
00031354  0000              add [eax],al
00031356  0000              add [eax],al
00031358  0000              add [eax],al
0003135A  0000              add [eax],al
0003135C  0000              add [eax],al
0003135E  0000              add [eax],al
00031360  0000              add [eax],al
00031362  0000              add [eax],al
00031364  0000              add [eax],al
00031366  0000              add [eax],al
00031368  0000              add [eax],al
0003136A  0000              add [eax],al
0003136C  0000              add [eax],al
0003136E  0000              add [eax],al
00031370  0000              add [eax],al
00031372  0000              add [eax],al
00031374  0000              add [eax],al
00031376  0000              add [eax],al
00031378  0000              add [eax],al
0003137A  0000              add [eax],al
0003137C  0000              add [eax],al
0003137E  0000              add [eax],al
00031380  0000              add [eax],al
00031382  0000              add [eax],al
00031384  0000              add [eax],al
00031386  0000              add [eax],al
00031388  0000              add [eax],al
0003138A  0000              add [eax],al
0003138C  0000              add [eax],al
0003138E  0000              add [eax],al
00031390  0000              add [eax],al
00031392  0000              add [eax],al
00031394  0000              add [eax],al
00031396  0000              add [eax],al
00031398  0000              add [eax],al
0003139A  0000              add [eax],al
0003139C  0000              add [eax],al
0003139E  0000              add [eax],al
000313A0  0000              add [eax],al
000313A2  0000              add [eax],al
000313A4  0000              add [eax],al
000313A6  0000              add [eax],al
000313A8  0000              add [eax],al
000313AA  0000              add [eax],al
000313AC  0000              add [eax],al
000313AE  0000              add [eax],al
000313B0  0000              add [eax],al
000313B2  0000              add [eax],al
000313B4  0000              add [eax],al
000313B6  0000              add [eax],al
000313B8  0000              add [eax],al
000313BA  0000              add [eax],al
000313BC  0000              add [eax],al
000313BE  0000              add [eax],al
000313C0  0000              add [eax],al
000313C2  0000              add [eax],al
000313C4  0000              add [eax],al
000313C6  0000              add [eax],al
000313C8  0000              add [eax],al
000313CA  0000              add [eax],al
000313CC  0000              add [eax],al
000313CE  0000              add [eax],al
000313D0  0000              add [eax],al
000313D2  0000              add [eax],al
000313D4  0000              add [eax],al
000313D6  0000              add [eax],al
000313D8  0000              add [eax],al
000313DA  0000              add [eax],al
000313DC  0000              add [eax],al
000313DE  0000              add [eax],al
000313E0  0000              add [eax],al
000313E2  0000              add [eax],al
000313E4  0000              add [eax],al
000313E6  0000              add [eax],al
000313E8  0000              add [eax],al
000313EA  0000              add [eax],al
000313EC  0000              add [eax],al
000313EE  0000              add [eax],al
000313F0  0000              add [eax],al
000313F2  0000              add [eax],al
000313F4  0000              add [eax],al
000313F6  0000              add [eax],al
000313F8  0000              add [eax],al
000313FA  0000              add [eax],al
000313FC  0000              add [eax],al
000313FE  0000              add [eax],al
00031400  0000              add [eax],al
00031402  0000              add [eax],al
00031404  0000              add [eax],al
00031406  0000              add [eax],al
00031408  0000              add [eax],al
0003140A  0000              add [eax],al
0003140C  0000              add [eax],al
0003140E  0000              add [eax],al
00031410  0000              add [eax],al
00031412  0000              add [eax],al
00031414  0000              add [eax],al
00031416  0000              add [eax],al
00031418  0000              add [eax],al
0003141A  0000              add [eax],al
0003141C  0000              add [eax],al
0003141E  0000              add [eax],al
00031420  0000              add [eax],al
00031422  0000              add [eax],al
00031424  0000              add [eax],al
00031426  0000              add [eax],al
00031428  0000              add [eax],al
0003142A  0000              add [eax],al
0003142C  0000              add [eax],al
0003142E  0000              add [eax],al
00031430  0000              add [eax],al
00031432  0000              add [eax],al
00031434  0000              add [eax],al
00031436  0000              add [eax],al
00031438  0000              add [eax],al
0003143A  0000              add [eax],al
0003143C  0000              add [eax],al
0003143E  0000              add [eax],al
00031440  0000              add [eax],al
00031442  0000              add [eax],al
00031444  0000              add [eax],al
00031446  0000              add [eax],al
00031448  0000              add [eax],al
0003144A  0000              add [eax],al
0003144C  0000              add [eax],al
0003144E  0000              add [eax],al
00031450  0000              add [eax],al
00031452  0000              add [eax],al
00031454  0000              add [eax],al
00031456  0000              add [eax],al
00031458  0000              add [eax],al
0003145A  0000              add [eax],al
0003145C  0000              add [eax],al
0003145E  0000              add [eax],al
00031460  0000              add [eax],al
00031462  0000              add [eax],al
00031464  0000              add [eax],al
00031466  0000              add [eax],al
00031468  0000              add [eax],al
0003146A  0000              add [eax],al
0003146C  0000              add [eax],al
0003146E  0000              add [eax],al
00031470  0000              add [eax],al
00031472  0000              add [eax],al
00031474  0000              add [eax],al
00031476  0000              add [eax],al
00031478  0000              add [eax],al
0003147A  0000              add [eax],al
0003147C  0000              add [eax],al
0003147E  0000              add [eax],al
00031480  0000              add [eax],al
00031482  0000              add [eax],al
00031484  0000              add [eax],al
00031486  0000              add [eax],al
00031488  0000              add [eax],al
0003148A  0000              add [eax],al
0003148C  0000              add [eax],al
0003148E  0000              add [eax],al
00031490  0000              add [eax],al
00031492  0000              add [eax],al
00031494  0000              add [eax],al
00031496  0000              add [eax],al
00031498  0000              add [eax],al
0003149A  0000              add [eax],al
0003149C  0000              add [eax],al
0003149E  0000              add [eax],al
000314A0  0000              add [eax],al
000314A2  0000              add [eax],al
000314A4  0000              add [eax],al
000314A6  0000              add [eax],al
000314A8  0000              add [eax],al
000314AA  0000              add [eax],al
000314AC  0000              add [eax],al
000314AE  0000              add [eax],al
000314B0  0000              add [eax],al
000314B2  0000              add [eax],al
000314B4  0000              add [eax],al
000314B6  0000              add [eax],al
000314B8  0000              add [eax],al
000314BA  0000              add [eax],al
000314BC  0000              add [eax],al
000314BE  0000              add [eax],al
000314C0  0000              add [eax],al
000314C2  0000              add [eax],al
000314C4  0000              add [eax],al
000314C6  0000              add [eax],al
000314C8  0000              add [eax],al
000314CA  0000              add [eax],al
000314CC  0000              add [eax],al
000314CE  0000              add [eax],al
000314D0  0000              add [eax],al
000314D2  0000              add [eax],al
000314D4  0000              add [eax],al
000314D6  0000              add [eax],al
000314D8  0000              add [eax],al
000314DA  0000              add [eax],al
000314DC  0000              add [eax],al
000314DE  0000              add [eax],al
000314E0  0000              add [eax],al
000314E2  0000              add [eax],al
000314E4  0000              add [eax],al
000314E6  0000              add [eax],al
000314E8  0000              add [eax],al
000314EA  0000              add [eax],al
000314EC  0000              add [eax],al
000314EE  0000              add [eax],al
000314F0  0000              add [eax],al
000314F2  0000              add [eax],al
000314F4  0000              add [eax],al
000314F6  0000              add [eax],al
000314F8  0000              add [eax],al
000314FA  0000              add [eax],al
000314FC  0000              add [eax],al
000314FE  0000              add [eax],al
00031500  0000              add [eax],al
00031502  0000              add [eax],al
00031504  0000              add [eax],al
00031506  0000              add [eax],al
00031508  0000              add [eax],al
0003150A  0000              add [eax],al
0003150C  0000              add [eax],al
0003150E  0000              add [eax],al
00031510  0000              add [eax],al
00031512  0000              add [eax],al
00031514  0000              add [eax],al
00031516  0000              add [eax],al
00031518  0000              add [eax],al
0003151A  0000              add [eax],al
0003151C  0000              add [eax],al
0003151E  0000              add [eax],al
00031520  0000              add [eax],al
00031522  0000              add [eax],al
00031524  0000              add [eax],al
00031526  0000              add [eax],al
00031528  0000              add [eax],al
0003152A  0000              add [eax],al
0003152C  0000              add [eax],al
0003152E  0000              add [eax],al
00031530  0000              add [eax],al
00031532  0000              add [eax],al
00031534  0000              add [eax],al
00031536  0000              add [eax],al
00031538  0000              add [eax],al
0003153A  0000              add [eax],al
0003153C  0000              add [eax],al
0003153E  0000              add [eax],al
00031540  0000              add [eax],al
00031542  0000              add [eax],al
00031544  0000              add [eax],al
00031546  0000              add [eax],al
00031548  0000              add [eax],al
0003154A  0000              add [eax],al
0003154C  0000              add [eax],al
0003154E  0000              add [eax],al
00031550  0000              add [eax],al
00031552  0000              add [eax],al
00031554  0000              add [eax],al
00031556  0000              add [eax],al
00031558  0000              add [eax],al
0003155A  0000              add [eax],al
0003155C  0000              add [eax],al
0003155E  0000              add [eax],al
00031560  0000              add [eax],al
00031562  0000              add [eax],al
00031564  0000              add [eax],al
00031566  0000              add [eax],al
00031568  0000              add [eax],al
0003156A  0000              add [eax],al
0003156C  0000              add [eax],al
0003156E  0000              add [eax],al
00031570  0000              add [eax],al
00031572  0000              add [eax],al
00031574  0000              add [eax],al
00031576  0000              add [eax],al
00031578  0000              add [eax],al
0003157A  0000              add [eax],al
0003157C  0000              add [eax],al
0003157E  0000              add [eax],al
00031580  0000              add [eax],al
00031582  0000              add [eax],al
00031584  0000              add [eax],al
00031586  0000              add [eax],al
00031588  0000              add [eax],al
0003158A  0000              add [eax],al
0003158C  0000              add [eax],al
0003158E  0000              add [eax],al
00031590  0000              add [eax],al
00031592  0000              add [eax],al
00031594  0000              add [eax],al
00031596  0000              add [eax],al
00031598  0000              add [eax],al
0003159A  0000              add [eax],al
0003159C  0000              add [eax],al
0003159E  0000              add [eax],al
000315A0  0000              add [eax],al
000315A2  0000              add [eax],al
000315A4  0000              add [eax],al
000315A6  0000              add [eax],al
000315A8  0000              add [eax],al
000315AA  0000              add [eax],al
000315AC  0000              add [eax],al
000315AE  0000              add [eax],al
000315B0  0000              add [eax],al
000315B2  0000              add [eax],al
000315B4  0000              add [eax],al
000315B6  0000              add [eax],al
000315B8  0000              add [eax],al
000315BA  0000              add [eax],al
000315BC  0000              add [eax],al
000315BE  0000              add [eax],al
000315C0  0000              add [eax],al
000315C2  0000              add [eax],al
000315C4  0000              add [eax],al
000315C6  0000              add [eax],al
000315C8  0000              add [eax],al
000315CA  0000              add [eax],al
000315CC  0000              add [eax],al
000315CE  0000              add [eax],al
000315D0  0000              add [eax],al
000315D2  0000              add [eax],al
000315D4  0000              add [eax],al
000315D6  0000              add [eax],al
000315D8  0000              add [eax],al
000315DA  0000              add [eax],al
000315DC  0000              add [eax],al
000315DE  0000              add [eax],al
000315E0  0000              add [eax],al
000315E2  0000              add [eax],al
000315E4  0000              add [eax],al
000315E6  0000              add [eax],al
000315E8  0000              add [eax],al
000315EA  0000              add [eax],al
000315EC  0000              add [eax],al
000315EE  0000              add [eax],al
000315F0  0000              add [eax],al
000315F2  0000              add [eax],al
000315F4  0000              add [eax],al
000315F6  0000              add [eax],al
000315F8  0000              add [eax],al
000315FA  0000              add [eax],al
000315FC  0000              add [eax],al
000315FE  0000              add [eax],al
00031600  0000              add [eax],al
00031602  0000              add [eax],al
00031604  0000              add [eax],al
00031606  0000              add [eax],al
00031608  0000              add [eax],al
0003160A  0000              add [eax],al
0003160C  0000              add [eax],al
0003160E  0000              add [eax],al
00031610  0000              add [eax],al
00031612  0000              add [eax],al
00031614  0000              add [eax],al
00031616  0000              add [eax],al
00031618  0000              add [eax],al
0003161A  0000              add [eax],al
0003161C  0000              add [eax],al
0003161E  0000              add [eax],al
00031620  0000              add [eax],al
00031622  0000              add [eax],al
00031624  0000              add [eax],al
00031626  0000              add [eax],al
00031628  0000              add [eax],al
0003162A  0000              add [eax],al
0003162C  0000              add [eax],al
0003162E  0000              add [eax],al
00031630  0000              add [eax],al
00031632  0000              add [eax],al
00031634  0000              add [eax],al
00031636  0000              add [eax],al
00031638  0000              add [eax],al
0003163A  0000              add [eax],al
0003163C  0000              add [eax],al
0003163E  0000              add [eax],al
00031640  0000              add [eax],al
00031642  0000              add [eax],al
00031644  0000              add [eax],al
00031646  0000              add [eax],al
00031648  0000              add [eax],al
0003164A  0000              add [eax],al
0003164C  0000              add [eax],al
0003164E  0000              add [eax],al
00031650  0000              add [eax],al
00031652  0000              add [eax],al
00031654  0000              add [eax],al
00031656  0000              add [eax],al
00031658  0000              add [eax],al
0003165A  0000              add [eax],al
0003165C  0000              add [eax],al
0003165E  0000              add [eax],al
00031660  0000              add [eax],al
00031662  0000              add [eax],al
00031664  0000              add [eax],al
00031666  0000              add [eax],al
00031668  0000              add [eax],al
0003166A  0000              add [eax],al
0003166C  0000              add [eax],al
0003166E  0000              add [eax],al
00031670  0000              add [eax],al
00031672  0000              add [eax],al
00031674  0000              add [eax],al
00031676  0000              add [eax],al
00031678  0000              add [eax],al
0003167A  0000              add [eax],al
0003167C  0000              add [eax],al
0003167E  0000              add [eax],al
00031680  0000              add [eax],al
00031682  0000              add [eax],al
00031684  0000              add [eax],al
00031686  0000              add [eax],al
00031688  0000              add [eax],al
0003168A  0000              add [eax],al
0003168C  0000              add [eax],al
0003168E  0000              add [eax],al
00031690  0000              add [eax],al
00031692  0000              add [eax],al
00031694  0000              add [eax],al
00031696  0000              add [eax],al
00031698  0000              add [eax],al
0003169A  0000              add [eax],al
0003169C  0000              add [eax],al
0003169E  0000              add [eax],al
000316A0  0000              add [eax],al
000316A2  0000              add [eax],al
000316A4  0000              add [eax],al
000316A6  0000              add [eax],al
000316A8  0000              add [eax],al
000316AA  0000              add [eax],al
000316AC  0000              add [eax],al
000316AE  0000              add [eax],al
000316B0  0000              add [eax],al
000316B2  0000              add [eax],al
000316B4  0000              add [eax],al
000316B6  0000              add [eax],al
000316B8  0000              add [eax],al
000316BA  0000              add [eax],al
000316BC  0000              add [eax],al
000316BE  0000              add [eax],al
000316C0  0000              add [eax],al
000316C2  0000              add [eax],al
000316C4  0000              add [eax],al
000316C6  0000              add [eax],al
000316C8  0000              add [eax],al
000316CA  0000              add [eax],al
000316CC  0000              add [eax],al
000316CE  0000              add [eax],al
000316D0  0000              add [eax],al
000316D2  0000              add [eax],al
000316D4  0000              add [eax],al
000316D6  0000              add [eax],al
000316D8  0000              add [eax],al
000316DA  0000              add [eax],al
000316DC  0000              add [eax],al
000316DE  0000              add [eax],al
000316E0  0000              add [eax],al
000316E2  0000              add [eax],al
000316E4  0000              add [eax],al
000316E6  0000              add [eax],al
000316E8  0000              add [eax],al
000316EA  0000              add [eax],al
000316EC  0000              add [eax],al
000316EE  0000              add [eax],al
000316F0  0000              add [eax],al
000316F2  0000              add [eax],al
000316F4  0000              add [eax],al
000316F6  0000              add [eax],al
000316F8  0000              add [eax],al
000316FA  0000              add [eax],al
000316FC  0000              add [eax],al
000316FE  0000              add [eax],al
00031700  0000              add [eax],al
00031702  0000              add [eax],al
00031704  0000              add [eax],al
00031706  0000              add [eax],al
00031708  0000              add [eax],al
0003170A  0000              add [eax],al
0003170C  0000              add [eax],al
0003170E  0000              add [eax],al
00031710  0000              add [eax],al
00031712  0000              add [eax],al
00031714  0000              add [eax],al
00031716  0000              add [eax],al
00031718  0000              add [eax],al
0003171A  0000              add [eax],al
0003171C  0000              add [eax],al
0003171E  0000              add [eax],al
00031720  0000              add [eax],al
00031722  0000              add [eax],al
00031724  0000              add [eax],al
00031726  0000              add [eax],al
00031728  0000              add [eax],al
0003172A  0000              add [eax],al
0003172C  0000              add [eax],al
0003172E  0000              add [eax],al
00031730  0000              add [eax],al
00031732  0000              add [eax],al
00031734  0000              add [eax],al
00031736  0000              add [eax],al
00031738  0000              add [eax],al
0003173A  0000              add [eax],al
0003173C  0000              add [eax],al
0003173E  0000              add [eax],al
00031740  0000              add [eax],al
00031742  0000              add [eax],al
00031744  0000              add [eax],al
00031746  0000              add [eax],al
00031748  0000              add [eax],al
0003174A  0000              add [eax],al
0003174C  0000              add [eax],al
0003174E  0000              add [eax],al
00031750  0000              add [eax],al
00031752  0000              add [eax],al
00031754  0000              add [eax],al
00031756  0000              add [eax],al
00031758  0000              add [eax],al
0003175A  0000              add [eax],al
0003175C  0000              add [eax],al
0003175E  0000              add [eax],al
00031760  0000              add [eax],al
00031762  0000              add [eax],al
00031764  0000              add [eax],al
00031766  0000              add [eax],al
00031768  0000              add [eax],al
0003176A  0000              add [eax],al
0003176C  0000              add [eax],al
0003176E  0000              add [eax],al
00031770  0000              add [eax],al
00031772  0000              add [eax],al
00031774  0000              add [eax],al
00031776  0000              add [eax],al
00031778  0000              add [eax],al
0003177A  0000              add [eax],al
0003177C  0000              add [eax],al
0003177E  0000              add [eax],al
00031780  0000              add [eax],al
00031782  0000              add [eax],al
00031784  0000              add [eax],al
00031786  0000              add [eax],al
00031788  0000              add [eax],al
0003178A  0000              add [eax],al
0003178C  0000              add [eax],al
0003178E  0000              add [eax],al
00031790  0000              add [eax],al
00031792  0000              add [eax],al
00031794  0000              add [eax],al
00031796  0000              add [eax],al
00031798  0000              add [eax],al
0003179A  0000              add [eax],al
0003179C  0000              add [eax],al
0003179E  0000              add [eax],al
000317A0  0000              add [eax],al
000317A2  0000              add [eax],al
000317A4  0000              add [eax],al
000317A6  0000              add [eax],al
000317A8  0000              add [eax],al
000317AA  0000              add [eax],al
000317AC  0000              add [eax],al
000317AE  0000              add [eax],al
000317B0  0000              add [eax],al
000317B2  0000              add [eax],al
000317B4  0000              add [eax],al
000317B6  0000              add [eax],al
000317B8  0000              add [eax],al
000317BA  0000              add [eax],al
000317BC  0000              add [eax],al
000317BE  0000              add [eax],al
000317C0  0000              add [eax],al
000317C2  0000              add [eax],al
000317C4  0000              add [eax],al
000317C6  0000              add [eax],al
000317C8  0000              add [eax],al
000317CA  0000              add [eax],al
000317CC  0000              add [eax],al
000317CE  0000              add [eax],al
000317D0  0000              add [eax],al
000317D2  0000              add [eax],al
000317D4  0000              add [eax],al
000317D6  0000              add [eax],al
000317D8  0000              add [eax],al
000317DA  0000              add [eax],al
000317DC  0000              add [eax],al
000317DE  0000              add [eax],al
000317E0  0000              add [eax],al
000317E2  0000              add [eax],al
000317E4  0000              add [eax],al
000317E6  0000              add [eax],al
000317E8  0000              add [eax],al
000317EA  0000              add [eax],al
000317EC  0000              add [eax],al
000317EE  0000              add [eax],al
000317F0  0000              add [eax],al
000317F2  0000              add [eax],al
000317F4  0000              add [eax],al
000317F6  0000              add [eax],al
000317F8  0000              add [eax],al
000317FA  0000              add [eax],al
000317FC  0000              add [eax],al
000317FE  0000              add [eax],al
00031800  0000              add [eax],al
00031802  0000              add [eax],al
00031804  0000              add [eax],al
00031806  0000              add [eax],al
00031808  0000              add [eax],al
0003180A  0000              add [eax],al
0003180C  0000              add [eax],al
0003180E  0000              add [eax],al
00031810  0000              add [eax],al
00031812  0000              add [eax],al
00031814  0000              add [eax],al
00031816  0000              add [eax],al
00031818  0000              add [eax],al
0003181A  0000              add [eax],al
0003181C  0000              add [eax],al
0003181E  0000              add [eax],al
00031820  0000              add [eax],al
00031822  0000              add [eax],al
00031824  0000              add [eax],al
00031826  0000              add [eax],al
00031828  0000              add [eax],al
0003182A  0000              add [eax],al
0003182C  0000              add [eax],al
0003182E  0000              add [eax],al
00031830  0000              add [eax],al
00031832  0000              add [eax],al
00031834  0000              add [eax],al
00031836  0000              add [eax],al
00031838  0000              add [eax],al
0003183A  0000              add [eax],al
0003183C  0000              add [eax],al
0003183E  0000              add [eax],al
00031840  0000              add [eax],al
00031842  0000              add [eax],al
00031844  0000              add [eax],al
00031846  0000              add [eax],al
00031848  0000              add [eax],al
0003184A  0000              add [eax],al
0003184C  0000              add [eax],al
0003184E  0000              add [eax],al
00031850  0000              add [eax],al
00031852  0000              add [eax],al
00031854  0000              add [eax],al
00031856  0000              add [eax],al
00031858  0000              add [eax],al
0003185A  0000              add [eax],al
0003185C  0000              add [eax],al
0003185E  0000              add [eax],al
00031860  0000              add [eax],al
00031862  0000              add [eax],al
00031864  0000              add [eax],al
00031866  0000              add [eax],al
00031868  0000              add [eax],al
0003186A  0000              add [eax],al
0003186C  0000              add [eax],al
0003186E  0000              add [eax],al
00031870  0000              add [eax],al
00031872  0000              add [eax],al
00031874  0000              add [eax],al
00031876  0000              add [eax],al
00031878  0000              add [eax],al
0003187A  0000              add [eax],al
0003187C  0000              add [eax],al
0003187E  0000              add [eax],al
00031880  0000              add [eax],al
00031882  0000              add [eax],al
00031884  0000              add [eax],al
00031886  0000              add [eax],al
00031888  0000              add [eax],al
0003188A  0000              add [eax],al
0003188C  0000              add [eax],al
0003188E  0000              add [eax],al
00031890  0000              add [eax],al
00031892  0000              add [eax],al
00031894  0000              add [eax],al
00031896  0000              add [eax],al
00031898  0000              add [eax],al
0003189A  0000              add [eax],al
0003189C  0000              add [eax],al
0003189E  0000              add [eax],al
000318A0  0000              add [eax],al
000318A2  0000              add [eax],al
000318A4  0000              add [eax],al
000318A6  0000              add [eax],al
000318A8  0000              add [eax],al
000318AA  0000              add [eax],al
000318AC  0000              add [eax],al
000318AE  0000              add [eax],al
000318B0  0000              add [eax],al
000318B2  0000              add [eax],al
000318B4  0000              add [eax],al
000318B6  0000              add [eax],al
000318B8  0000              add [eax],al
000318BA  0000              add [eax],al
000318BC  0000              add [eax],al
000318BE  0000              add [eax],al
000318C0  0000              add [eax],al
000318C2  0000              add [eax],al
000318C4  0000              add [eax],al
000318C6  0000              add [eax],al
000318C8  0000              add [eax],al
000318CA  0000              add [eax],al
000318CC  0000              add [eax],al
000318CE  0000              add [eax],al
000318D0  0000              add [eax],al
000318D2  0000              add [eax],al
000318D4  0000              add [eax],al
000318D6  0000              add [eax],al
000318D8  0000              add [eax],al
000318DA  0000              add [eax],al
000318DC  0000              add [eax],al
000318DE  0000              add [eax],al
000318E0  0000              add [eax],al
000318E2  0000              add [eax],al
000318E4  0000              add [eax],al
000318E6  0000              add [eax],al
000318E8  0000              add [eax],al
000318EA  0000              add [eax],al
000318EC  0000              add [eax],al
000318EE  0000              add [eax],al
000318F0  0000              add [eax],al
000318F2  0000              add [eax],al
000318F4  0000              add [eax],al
000318F6  0000              add [eax],al
000318F8  0000              add [eax],al
000318FA  0000              add [eax],al
000318FC  0000              add [eax],al
000318FE  0000              add [eax],al
00031900  0000              add [eax],al
00031902  0000              add [eax],al
00031904  0000              add [eax],al
00031906  0000              add [eax],al
00031908  0000              add [eax],al
0003190A  0000              add [eax],al
0003190C  0000              add [eax],al
0003190E  0000              add [eax],al
00031910  0000              add [eax],al
00031912  0000              add [eax],al
00031914  0000              add [eax],al
00031916  0000              add [eax],al
00031918  0000              add [eax],al
0003191A  0000              add [eax],al
0003191C  0000              add [eax],al
0003191E  0000              add [eax],al
00031920  0000              add [eax],al
00031922  0000              add [eax],al
00031924  0000              add [eax],al
00031926  0000              add [eax],al
00031928  0000              add [eax],al
0003192A  0000              add [eax],al
0003192C  0000              add [eax],al
0003192E  0000              add [eax],al
00031930  0000              add [eax],al
00031932  0000              add [eax],al
00031934  0000              add [eax],al
00031936  0000              add [eax],al
00031938  0000              add [eax],al
0003193A  0000              add [eax],al
0003193C  0000              add [eax],al
0003193E  0000              add [eax],al
00031940  0000              add [eax],al
00031942  0000              add [eax],al
00031944  0000              add [eax],al
00031946  0000              add [eax],al
00031948  0000              add [eax],al
0003194A  0000              add [eax],al
0003194C  0000              add [eax],al
0003194E  0000              add [eax],al
00031950  0000              add [eax],al
00031952  0000              add [eax],al
00031954  0000              add [eax],al
00031956  0000              add [eax],al
00031958  0000              add [eax],al
0003195A  0000              add [eax],al
0003195C  0000              add [eax],al
0003195E  0000              add [eax],al
00031960  0000              add [eax],al
00031962  0000              add [eax],al
00031964  0000              add [eax],al
00031966  0000              add [eax],al
00031968  0000              add [eax],al
0003196A  0000              add [eax],al
0003196C  0000              add [eax],al
0003196E  0000              add [eax],al
00031970  0000              add [eax],al
00031972  0000              add [eax],al
00031974  0000              add [eax],al
00031976  0000              add [eax],al
00031978  0000              add [eax],al
0003197A  0000              add [eax],al
0003197C  0000              add [eax],al
0003197E  0000              add [eax],al
00031980  0000              add [eax],al
00031982  0000              add [eax],al
00031984  0000              add [eax],al
00031986  0000              add [eax],al
00031988  0000              add [eax],al
0003198A  0000              add [eax],al
0003198C  0000              add [eax],al
0003198E  0000              add [eax],al
00031990  0000              add [eax],al
00031992  0000              add [eax],al
00031994  0000              add [eax],al
00031996  0000              add [eax],al
00031998  0000              add [eax],al
0003199A  0000              add [eax],al
0003199C  0000              add [eax],al
0003199E  0000              add [eax],al
000319A0  0000              add [eax],al
000319A2  0000              add [eax],al
000319A4  0000              add [eax],al
000319A6  0000              add [eax],al
000319A8  0000              add [eax],al
000319AA  0000              add [eax],al
000319AC  0000              add [eax],al
000319AE  0000              add [eax],al
000319B0  0000              add [eax],al
000319B2  0000              add [eax],al
000319B4  0000              add [eax],al
000319B6  0000              add [eax],al
000319B8  0000              add [eax],al
000319BA  0000              add [eax],al
000319BC  0000              add [eax],al
000319BE  0000              add [eax],al
000319C0  0000              add [eax],al
000319C2  0000              add [eax],al
000319C4  0000              add [eax],al
000319C6  0000              add [eax],al
000319C8  0000              add [eax],al
000319CA  0000              add [eax],al
000319CC  0000              add [eax],al
000319CE  0000              add [eax],al
000319D0  0000              add [eax],al
000319D2  0000              add [eax],al
000319D4  0000              add [eax],al
000319D6  0000              add [eax],al
000319D8  0000              add [eax],al
000319DA  0000              add [eax],al
000319DC  0000              add [eax],al
000319DE  0000              add [eax],al
000319E0  0000              add [eax],al
000319E2  0000              add [eax],al
000319E4  0000              add [eax],al
000319E6  0000              add [eax],al
000319E8  0000              add [eax],al
000319EA  0000              add [eax],al
000319EC  0000              add [eax],al
000319EE  0000              add [eax],al
000319F0  0000              add [eax],al
000319F2  0000              add [eax],al
000319F4  0000              add [eax],al
000319F6  0000              add [eax],al
000319F8  0000              add [eax],al
000319FA  0000              add [eax],al
000319FC  0000              add [eax],al
000319FE  0000              add [eax],al
00031A00  0000              add [eax],al
00031A02  0000              add [eax],al
00031A04  0000              add [eax],al
00031A06  0000              add [eax],al
00031A08  0000              add [eax],al
00031A0A  0000              add [eax],al
00031A0C  0000              add [eax],al
00031A0E  0000              add [eax],al
00031A10  0000              add [eax],al
00031A12  0000              add [eax],al
00031A14  0000              add [eax],al
00031A16  0000              add [eax],al
00031A18  0000              add [eax],al
00031A1A  0000              add [eax],al
00031A1C  0000              add [eax],al
00031A1E  0000              add [eax],al
00031A20  0000              add [eax],al
00031A22  0000              add [eax],al
00031A24  0000              add [eax],al
00031A26  0000              add [eax],al
00031A28  0000              add [eax],al
00031A2A  0000              add [eax],al
00031A2C  0000              add [eax],al
00031A2E  0000              add [eax],al
00031A30  0000              add [eax],al
00031A32  0000              add [eax],al
00031A34  0000              add [eax],al
00031A36  0000              add [eax],al
00031A38  0000              add [eax],al
00031A3A  0000              add [eax],al
00031A3C  0000              add [eax],al
00031A3E  0000              add [eax],al
00031A40  0000              add [eax],al
00031A42  0000              add [eax],al
00031A44  0000              add [eax],al
00031A46  0000              add [eax],al
00031A48  0000              add [eax],al
00031A4A  0000              add [eax],al
00031A4C  0000              add [eax],al
00031A4E  0000              add [eax],al
00031A50  0000              add [eax],al
00031A52  0000              add [eax],al
00031A54  0000              add [eax],al
00031A56  0000              add [eax],al
00031A58  0000              add [eax],al
00031A5A  0000              add [eax],al
00031A5C  0000              add [eax],al
00031A5E  0000              add [eax],al
00031A60  0000              add [eax],al
00031A62  0000              add [eax],al
00031A64  0000              add [eax],al
00031A66  0000              add [eax],al
00031A68  0000              add [eax],al
00031A6A  0000              add [eax],al
00031A6C  0000              add [eax],al
00031A6E  0000              add [eax],al
00031A70  0000              add [eax],al
00031A72  0000              add [eax],al
00031A74  0000              add [eax],al
00031A76  0000              add [eax],al
00031A78  0000              add [eax],al
00031A7A  0000              add [eax],al
00031A7C  0000              add [eax],al
00031A7E  0000              add [eax],al
00031A80  0000              add [eax],al
00031A82  0000              add [eax],al
00031A84  0000              add [eax],al
00031A86  0000              add [eax],al
00031A88  0000              add [eax],al
00031A8A  0000              add [eax],al
00031A8C  0000              add [eax],al
00031A8E  0000              add [eax],al
00031A90  0000              add [eax],al
00031A92  0000              add [eax],al
00031A94  0000              add [eax],al
00031A96  0000              add [eax],al
00031A98  0000              add [eax],al
00031A9A  0000              add [eax],al
00031A9C  0000              add [eax],al
00031A9E  0000              add [eax],al
00031AA0  0000              add [eax],al
00031AA2  0000              add [eax],al
00031AA4  0000              add [eax],al
00031AA6  0000              add [eax],al
00031AA8  0000              add [eax],al
00031AAA  0000              add [eax],al
00031AAC  0000              add [eax],al
00031AAE  0000              add [eax],al
00031AB0  0000              add [eax],al
00031AB2  0000              add [eax],al
00031AB4  0000              add [eax],al
00031AB6  0000              add [eax],al
00031AB8  0000              add [eax],al
00031ABA  0000              add [eax],al
00031ABC  0000              add [eax],al
00031ABE  0000              add [eax],al
00031AC0  0000              add [eax],al
00031AC2  0000              add [eax],al
00031AC4  0000              add [eax],al
00031AC6  0000              add [eax],al
00031AC8  0000              add [eax],al
00031ACA  0000              add [eax],al
00031ACC  0000              add [eax],al
00031ACE  0000              add [eax],al
00031AD0  0000              add [eax],al
00031AD2  0000              add [eax],al
00031AD4  0000              add [eax],al
00031AD6  0000              add [eax],al
00031AD8  0000              add [eax],al
00031ADA  0000              add [eax],al
00031ADC  0000              add [eax],al
00031ADE  0000              add [eax],al
00031AE0  0000              add [eax],al
00031AE2  0000              add [eax],al
00031AE4  0000              add [eax],al
00031AE6  0000              add [eax],al
00031AE8  0000              add [eax],al
00031AEA  0000              add [eax],al
00031AEC  0000              add [eax],al
00031AEE  0000              add [eax],al
00031AF0  0000              add [eax],al
00031AF2  0000              add [eax],al
00031AF4  0000              add [eax],al
00031AF6  0000              add [eax],al
00031AF8  0000              add [eax],al
00031AFA  0000              add [eax],al
00031AFC  0000              add [eax],al
00031AFE  0000              add [eax],al
00031B00  0000              add [eax],al
00031B02  0000              add [eax],al
00031B04  0000              add [eax],al
00031B06  0000              add [eax],al
00031B08  0000              add [eax],al
00031B0A  0000              add [eax],al
00031B0C  0000              add [eax],al
00031B0E  0000              add [eax],al
00031B10  0000              add [eax],al
00031B12  0000              add [eax],al
00031B14  0000              add [eax],al
00031B16  0000              add [eax],al
00031B18  0000              add [eax],al
00031B1A  0000              add [eax],al
00031B1C  0000              add [eax],al
00031B1E  0000              add [eax],al
00031B20  0000              add [eax],al
00031B22  0000              add [eax],al
00031B24  0000              add [eax],al
00031B26  0000              add [eax],al
00031B28  0000              add [eax],al
00031B2A  0000              add [eax],al
00031B2C  0000              add [eax],al
00031B2E  0000              add [eax],al
00031B30  0000              add [eax],al
00031B32  0000              add [eax],al
00031B34  0000              add [eax],al
00031B36  0000              add [eax],al
00031B38  0000              add [eax],al
00031B3A  0000              add [eax],al
00031B3C  0000              add [eax],al
00031B3E  0000              add [eax],al
00031B40  0000              add [eax],al
00031B42  0000              add [eax],al
00031B44  0000              add [eax],al
00031B46  0000              add [eax],al
00031B48  0000              add [eax],al
00031B4A  0000              add [eax],al
00031B4C  0000              add [eax],al
00031B4E  0000              add [eax],al
00031B50  0000              add [eax],al
00031B52  0000              add [eax],al
00031B54  0000              add [eax],al
00031B56  0000              add [eax],al
00031B58  0000              add [eax],al
00031B5A  0000              add [eax],al
00031B5C  0000              add [eax],al
00031B5E  0000              add [eax],al
00031B60  0000              add [eax],al
00031B62  0000              add [eax],al
00031B64  0000              add [eax],al
00031B66  0000              add [eax],al
00031B68  0000              add [eax],al
00031B6A  0000              add [eax],al
00031B6C  0000              add [eax],al
00031B6E  0000              add [eax],al
00031B70  0000              add [eax],al
00031B72  0000              add [eax],al
00031B74  0000              add [eax],al
00031B76  0000              add [eax],al
00031B78  0000              add [eax],al
00031B7A  0000              add [eax],al
00031B7C  0000              add [eax],al
00031B7E  0000              add [eax],al
00031B80  0000              add [eax],al
00031B82  0000              add [eax],al
00031B84  0000              add [eax],al
00031B86  0000              add [eax],al
00031B88  0000              add [eax],al
00031B8A  0000              add [eax],al
00031B8C  0000              add [eax],al
00031B8E  0000              add [eax],al
00031B90  0000              add [eax],al
00031B92  0000              add [eax],al
00031B94  0000              add [eax],al
00031B96  0000              add [eax],al
00031B98  0000              add [eax],al
00031B9A  0000              add [eax],al
00031B9C  0000              add [eax],al
00031B9E  0000              add [eax],al
00031BA0  0000              add [eax],al
00031BA2  0000              add [eax],al
00031BA4  0000              add [eax],al
00031BA6  0000              add [eax],al
00031BA8  0000              add [eax],al
00031BAA  0000              add [eax],al
00031BAC  0000              add [eax],al
00031BAE  0000              add [eax],al
00031BB0  0000              add [eax],al
00031BB2  0000              add [eax],al
00031BB4  0000              add [eax],al
00031BB6  0000              add [eax],al
00031BB8  0000              add [eax],al
00031BBA  0000              add [eax],al
00031BBC  0000              add [eax],al
00031BBE  0000              add [eax],al
00031BC0  0000              add [eax],al
00031BC2  0000              add [eax],al
00031BC4  0000              add [eax],al
00031BC6  0000              add [eax],al
00031BC8  0000              add [eax],al
00031BCA  0000              add [eax],al
00031BCC  0000              add [eax],al
00031BCE  0000              add [eax],al
00031BD0  0000              add [eax],al
00031BD2  0000              add [eax],al
00031BD4  0000              add [eax],al
00031BD6  0000              add [eax],al
00031BD8  0000              add [eax],al
00031BDA  0000              add [eax],al
00031BDC  0000              add [eax],al
00031BDE  0000              add [eax],al
00031BE0  0000              add [eax],al
00031BE2  0000              add [eax],al
00031BE4  0000              add [eax],al
00031BE6  0000              add [eax],al
00031BE8  0000              add [eax],al
00031BEA  0000              add [eax],al
00031BEC  0000              add [eax],al
00031BEE  0000              add [eax],al
00031BF0  0000              add [eax],al
00031BF2  0000              add [eax],al
00031BF4  0000              add [eax],al
00031BF6  0000              add [eax],al
00031BF8  0000              add [eax],al
00031BFA  0000              add [eax],al
00031BFC  0000              add [eax],al
00031BFE  0000              add [eax],al
00031C00  0000              add [eax],al
00031C02  0000              add [eax],al
00031C04  0000              add [eax],al
00031C06  0000              add [eax],al
00031C08  0000              add [eax],al
00031C0A  0000              add [eax],al
00031C0C  0000              add [eax],al
00031C0E  0000              add [eax],al
00031C10  0000              add [eax],al
00031C12  0000              add [eax],al
00031C14  0000              add [eax],al
00031C16  0000              add [eax],al
00031C18  0000              add [eax],al
00031C1A  0000              add [eax],al
00031C1C  0000              add [eax],al
00031C1E  0000              add [eax],al
00031C20  0000              add [eax],al
00031C22  0000              add [eax],al
00031C24  0000              add [eax],al
00031C26  0000              add [eax],al
00031C28  0000              add [eax],al
00031C2A  0000              add [eax],al
00031C2C  0000              add [eax],al
00031C2E  0000              add [eax],al
00031C30  0000              add [eax],al
00031C32  0000              add [eax],al
00031C34  0000              add [eax],al
00031C36  0000              add [eax],al
00031C38  0000              add [eax],al
00031C3A  0000              add [eax],al
00031C3C  0000              add [eax],al
00031C3E  0000              add [eax],al
00031C40  0000              add [eax],al
00031C42  0000              add [eax],al
00031C44  0000              add [eax],al
00031C46  0000              add [eax],al
00031C48  0000              add [eax],al
00031C4A  0000              add [eax],al
00031C4C  0000              add [eax],al
00031C4E  0000              add [eax],al
00031C50  0000              add [eax],al
00031C52  0000              add [eax],al
00031C54  0000              add [eax],al
00031C56  0000              add [eax],al
00031C58  0000              add [eax],al
00031C5A  0000              add [eax],al
00031C5C  0000              add [eax],al
00031C5E  0000              add [eax],al
00031C60  0000              add [eax],al
00031C62  0000              add [eax],al
00031C64  0000              add [eax],al
00031C66  0000              add [eax],al
00031C68  0000              add [eax],al
00031C6A  0000              add [eax],al
00031C6C  0000              add [eax],al
00031C6E  0000              add [eax],al
00031C70  0000              add [eax],al
00031C72  0000              add [eax],al
00031C74  0000              add [eax],al
00031C76  0000              add [eax],al
00031C78  0000              add [eax],al
00031C7A  0000              add [eax],al
00031C7C  0000              add [eax],al
00031C7E  0000              add [eax],al
00031C80  0000              add [eax],al
00031C82  0000              add [eax],al
00031C84  0000              add [eax],al
00031C86  0000              add [eax],al
00031C88  0000              add [eax],al
00031C8A  0000              add [eax],al
00031C8C  0000              add [eax],al
00031C8E  0000              add [eax],al
00031C90  0000              add [eax],al
00031C92  0000              add [eax],al
00031C94  0000              add [eax],al
00031C96  0000              add [eax],al
00031C98  0000              add [eax],al
00031C9A  0000              add [eax],al
00031C9C  0000              add [eax],al
00031C9E  0000              add [eax],al
00031CA0  0000              add [eax],al
00031CA2  0000              add [eax],al
00031CA4  0000              add [eax],al
00031CA6  0000              add [eax],al
00031CA8  0000              add [eax],al
00031CAA  0000              add [eax],al
00031CAC  0000              add [eax],al
00031CAE  0000              add [eax],al
00031CB0  0000              add [eax],al
00031CB2  0000              add [eax],al
00031CB4  0000              add [eax],al
00031CB6  0000              add [eax],al
00031CB8  0000              add [eax],al
00031CBA  0000              add [eax],al
00031CBC  0000              add [eax],al
00031CBE  0000              add [eax],al
00031CC0  0000              add [eax],al
00031CC2  0000              add [eax],al
00031CC4  0000              add [eax],al
00031CC6  0000              add [eax],al
00031CC8  0000              add [eax],al
00031CCA  0000              add [eax],al
00031CCC  0000              add [eax],al
00031CCE  0000              add [eax],al
00031CD0  0000              add [eax],al
00031CD2  0000              add [eax],al
00031CD4  0000              add [eax],al
00031CD6  0000              add [eax],al
00031CD8  0000              add [eax],al
00031CDA  0000              add [eax],al
00031CDC  0000              add [eax],al
00031CDE  0000              add [eax],al
00031CE0  0000              add [eax],al
00031CE2  0000              add [eax],al
00031CE4  0000              add [eax],al
00031CE6  0000              add [eax],al
00031CE8  0000              add [eax],al
00031CEA  0000              add [eax],al
00031CEC  0000              add [eax],al
00031CEE  0000              add [eax],al
00031CF0  0000              add [eax],al
00031CF2  0000              add [eax],al
00031CF4  0000              add [eax],al
00031CF6  0000              add [eax],al
00031CF8  0000              add [eax],al
00031CFA  0000              add [eax],al
00031CFC  0000              add [eax],al
00031CFE  0000              add [eax],al
00031D00  0000              add [eax],al
00031D02  0000              add [eax],al
00031D04  0000              add [eax],al
00031D06  0000              add [eax],al
00031D08  0000              add [eax],al
00031D0A  0000              add [eax],al
00031D0C  0000              add [eax],al
00031D0E  0000              add [eax],al
00031D10  0000              add [eax],al
00031D12  0000              add [eax],al
00031D14  0000              add [eax],al
00031D16  0000              add [eax],al
00031D18  0000              add [eax],al
00031D1A  0000              add [eax],al
00031D1C  0000              add [eax],al
00031D1E  0000              add [eax],al
00031D20  0000              add [eax],al
00031D22  0000              add [eax],al
00031D24  0000              add [eax],al
00031D26  0000              add [eax],al
00031D28  0000              add [eax],al
00031D2A  0000              add [eax],al
00031D2C  0000              add [eax],al
00031D2E  0000              add [eax],al
00031D30  0000              add [eax],al
00031D32  0000              add [eax],al
00031D34  0000              add [eax],al
00031D36  0000              add [eax],al
00031D38  0000              add [eax],al
00031D3A  0000              add [eax],al
00031D3C  0000              add [eax],al
00031D3E  0000              add [eax],al
00031D40  0000              add [eax],al
00031D42  0000              add [eax],al
00031D44  0000              add [eax],al
00031D46  0000              add [eax],al
00031D48  0000              add [eax],al
00031D4A  0000              add [eax],al
00031D4C  0000              add [eax],al
00031D4E  0000              add [eax],al
00031D50  0000              add [eax],al
00031D52  0000              add [eax],al
00031D54  0000              add [eax],al
00031D56  0000              add [eax],al
00031D58  0000              add [eax],al
00031D5A  0000              add [eax],al
00031D5C  0000              add [eax],al
00031D5E  0000              add [eax],al
00031D60  0000              add [eax],al
00031D62  0000              add [eax],al
00031D64  0000              add [eax],al
00031D66  0000              add [eax],al
00031D68  0000              add [eax],al
00031D6A  0000              add [eax],al
00031D6C  0000              add [eax],al
00031D6E  0000              add [eax],al
00031D70  0000              add [eax],al
00031D72  0000              add [eax],al
00031D74  0000              add [eax],al
00031D76  0000              add [eax],al
00031D78  0000              add [eax],al
00031D7A  0000              add [eax],al
00031D7C  0000              add [eax],al
00031D7E  0000              add [eax],al
00031D80  0000              add [eax],al
00031D82  0000              add [eax],al
00031D84  0000              add [eax],al
00031D86  0000              add [eax],al
00031D88  0000              add [eax],al
00031D8A  0000              add [eax],al
00031D8C  0000              add [eax],al
00031D8E  0000              add [eax],al
00031D90  0000              add [eax],al
00031D92  0000              add [eax],al
00031D94  0000              add [eax],al
00031D96  0000              add [eax],al
00031D98  0000              add [eax],al
00031D9A  0000              add [eax],al
00031D9C  0000              add [eax],al
00031D9E  0000              add [eax],al
00031DA0  0000              add [eax],al
00031DA2  0000              add [eax],al
00031DA4  0000              add [eax],al
00031DA6  0000              add [eax],al
00031DA8  0000              add [eax],al
00031DAA  0000              add [eax],al
00031DAC  0000              add [eax],al
00031DAE  0000              add [eax],al
00031DB0  0000              add [eax],al
00031DB2  0000              add [eax],al
00031DB4  0000              add [eax],al
00031DB6  0000              add [eax],al
00031DB8  0000              add [eax],al
00031DBA  0000              add [eax],al
00031DBC  0000              add [eax],al
00031DBE  0000              add [eax],al
00031DC0  0000              add [eax],al
00031DC2  0000              add [eax],al
00031DC4  0000              add [eax],al
00031DC6  0000              add [eax],al
00031DC8  0000              add [eax],al
00031DCA  0000              add [eax],al
00031DCC  0000              add [eax],al
00031DCE  0000              add [eax],al
00031DD0  0000              add [eax],al
00031DD2  0000              add [eax],al
00031DD4  0000              add [eax],al
00031DD6  0000              add [eax],al
00031DD8  0000              add [eax],al
00031DDA  0000              add [eax],al
00031DDC  0000              add [eax],al
00031DDE  0000              add [eax],al
00031DE0  0000              add [eax],al
00031DE2  0000              add [eax],al
00031DE4  0000              add [eax],al
00031DE6  0000              add [eax],al
00031DE8  0000              add [eax],al
00031DEA  0000              add [eax],al
00031DEC  0000              add [eax],al
00031DEE  0000              add [eax],al
00031DF0  0000              add [eax],al
00031DF2  0000              add [eax],al
00031DF4  0000              add [eax],al
00031DF6  0000              add [eax],al
00031DF8  0000              add [eax],al
00031DFA  0000              add [eax],al
00031DFC  0000              add [eax],al
00031DFE  0000              add [eax],al
00031E00  0000              add [eax],al
00031E02  0000              add [eax],al
00031E04  0000              add [eax],al
00031E06  0000              add [eax],al
00031E08  0000              add [eax],al
00031E0A  0000              add [eax],al
00031E0C  0000              add [eax],al
00031E0E  0000              add [eax],al
00031E10  0000              add [eax],al
00031E12  0000              add [eax],al
00031E14  0000              add [eax],al
00031E16  0000              add [eax],al
00031E18  0000              add [eax],al
00031E1A  0000              add [eax],al
00031E1C  0000              add [eax],al
00031E1E  0000              add [eax],al
00031E20  0000              add [eax],al
00031E22  0000              add [eax],al
00031E24  0000              add [eax],al
00031E26  0000              add [eax],al
00031E28  0000              add [eax],al
00031E2A  0000              add [eax],al
00031E2C  0000              add [eax],al
00031E2E  0000              add [eax],al
00031E30  0000              add [eax],al
00031E32  0000              add [eax],al
00031E34  0000              add [eax],al
00031E36  0000              add [eax],al
00031E38  0000              add [eax],al
00031E3A  0000              add [eax],al
00031E3C  0000              add [eax],al
00031E3E  0000              add [eax],al
00031E40  0000              add [eax],al
00031E42  0000              add [eax],al
00031E44  0000              add [eax],al
00031E46  0000              add [eax],al
00031E48  0000              add [eax],al
00031E4A  0000              add [eax],al
00031E4C  0000              add [eax],al
00031E4E  0000              add [eax],al
00031E50  0000              add [eax],al
00031E52  0000              add [eax],al
00031E54  0000              add [eax],al
00031E56  0000              add [eax],al
00031E58  0000              add [eax],al
00031E5A  0000              add [eax],al
00031E5C  0000              add [eax],al
00031E5E  0000              add [eax],al
00031E60  0000              add [eax],al
00031E62  0000              add [eax],al
00031E64  0000              add [eax],al
00031E66  0000              add [eax],al
00031E68  0000              add [eax],al
00031E6A  0000              add [eax],al
00031E6C  0000              add [eax],al
00031E6E  0000              add [eax],al
00031E70  0000              add [eax],al
00031E72  0000              add [eax],al
00031E74  0000              add [eax],al
00031E76  0000              add [eax],al
00031E78  0000              add [eax],al
00031E7A  0000              add [eax],al
00031E7C  0000              add [eax],al
00031E7E  0000              add [eax],al
00031E80  0000              add [eax],al
00031E82  0000              add [eax],al
00031E84  0000              add [eax],al
00031E86  0000              add [eax],al
00031E88  0000              add [eax],al
00031E8A  0000              add [eax],al
00031E8C  0000              add [eax],al
00031E8E  0000              add [eax],al
00031E90  0000              add [eax],al
00031E92  0000              add [eax],al
00031E94  0000              add [eax],al
00031E96  0000              add [eax],al
00031E98  0000              add [eax],al
00031E9A  0000              add [eax],al
00031E9C  0000              add [eax],al
00031E9E  0000              add [eax],al
00031EA0  0000              add [eax],al
00031EA2  0000              add [eax],al
00031EA4  0000              add [eax],al
00031EA6  0000              add [eax],al
00031EA8  0000              add [eax],al
00031EAA  0000              add [eax],al
00031EAC  0000              add [eax],al
00031EAE  0000              add [eax],al
00031EB0  0000              add [eax],al
00031EB2  0000              add [eax],al
00031EB4  0000              add [eax],al
00031EB6  0000              add [eax],al
00031EB8  0000              add [eax],al
00031EBA  0000              add [eax],al
00031EBC  0000              add [eax],al
00031EBE  0000              add [eax],al
00031EC0  0000              add [eax],al
00031EC2  0000              add [eax],al
00031EC4  0000              add [eax],al
00031EC6  0000              add [eax],al
00031EC8  0000              add [eax],al
00031ECA  0000              add [eax],al
00031ECC  0000              add [eax],al
00031ECE  0000              add [eax],al
00031ED0  0000              add [eax],al
00031ED2  0000              add [eax],al
00031ED4  0000              add [eax],al
00031ED6  0000              add [eax],al
00031ED8  0000              add [eax],al
00031EDA  0000              add [eax],al
00031EDC  0000              add [eax],al
00031EDE  0000              add [eax],al
00031EE0  0000              add [eax],al
00031EE2  0000              add [eax],al
00031EE4  0000              add [eax],al
00031EE6  0000              add [eax],al
00031EE8  0000              add [eax],al
00031EEA  0000              add [eax],al
00031EEC  0000              add [eax],al
00031EEE  0000              add [eax],al
00031EF0  0000              add [eax],al
00031EF2  0000              add [eax],al
00031EF4  0000              add [eax],al
00031EF6  0000              add [eax],al
00031EF8  0000              add [eax],al
00031EFA  0000              add [eax],al
00031EFC  0000              add [eax],al
00031EFE  0000              add [eax],al
00031F00  0000              add [eax],al
00031F02  0000              add [eax],al
00031F04  0000              add [eax],al
00031F06  0000              add [eax],al
00031F08  0000              add [eax],al
00031F0A  0000              add [eax],al
00031F0C  0000              add [eax],al
00031F0E  0000              add [eax],al
00031F10  0000              add [eax],al
00031F12  0000              add [eax],al
00031F14  0000              add [eax],al
00031F16  0000              add [eax],al
00031F18  0000              add [eax],al
00031F1A  0000              add [eax],al
00031F1C  0000              add [eax],al
00031F1E  0000              add [eax],al
00031F20  0000              add [eax],al
00031F22  0000              add [eax],al
00031F24  0000              add [eax],al
00031F26  0000              add [eax],al
00031F28  0000              add [eax],al
00031F2A  0000              add [eax],al
00031F2C  0000              add [eax],al
00031F2E  0000              add [eax],al
00031F30  0000              add [eax],al
00031F32  0000              add [eax],al
00031F34  0000              add [eax],al
00031F36  0000              add [eax],al
00031F38  0000              add [eax],al
00031F3A  0000              add [eax],al
00031F3C  0000              add [eax],al
00031F3E  0000              add [eax],al
00031F40  0000              add [eax],al
00031F42  0000              add [eax],al
00031F44  0000              add [eax],al
00031F46  0000              add [eax],al
00031F48  0000              add [eax],al
00031F4A  0000              add [eax],al
00031F4C  0000              add [eax],al
00031F4E  0000              add [eax],al
00031F50  0000              add [eax],al
00031F52  0000              add [eax],al
00031F54  0000              add [eax],al
00031F56  0000              add [eax],al
00031F58  0000              add [eax],al
00031F5A  0000              add [eax],al
00031F5C  0000              add [eax],al
00031F5E  0000              add [eax],al
00031F60  0000              add [eax],al
00031F62  0000              add [eax],al
00031F64  0000              add [eax],al
00031F66  0000              add [eax],al
00031F68  0000              add [eax],al
00031F6A  0000              add [eax],al
00031F6C  0000              add [eax],al
00031F6E  0000              add [eax],al
00031F70  0000              add [eax],al
00031F72  0000              add [eax],al
00031F74  0000              add [eax],al
00031F76  0000              add [eax],al
00031F78  0000              add [eax],al
00031F7A  0000              add [eax],al
00031F7C  0000              add [eax],al
00031F7E  0000              add [eax],al
00031F80  0000              add [eax],al
00031F82  0000              add [eax],al
00031F84  0000              add [eax],al
00031F86  0000              add [eax],al
00031F88  0000              add [eax],al
00031F8A  0000              add [eax],al
00031F8C  0000              add [eax],al
00031F8E  0000              add [eax],al
00031F90  0000              add [eax],al
00031F92  0000              add [eax],al
00031F94  0000              add [eax],al
00031F96  0000              add [eax],al
00031F98  0000              add [eax],al
00031F9A  0000              add [eax],al
00031F9C  0000              add [eax],al
00031F9E  0000              add [eax],al
00031FA0  0000              add [eax],al
00031FA2  0000              add [eax],al
00031FA4  0000              add [eax],al
00031FA6  0000              add [eax],al
00031FA8  0000              add [eax],al
00031FAA  0000              add [eax],al
00031FAC  0000              add [eax],al
00031FAE  0000              add [eax],al
00031FB0  0000              add [eax],al
00031FB2  0000              add [eax],al
00031FB4  0000              add [eax],al
00031FB6  0000              add [eax],al
00031FB8  0000              add [eax],al
00031FBA  0000              add [eax],al
00031FBC  0000              add [eax],al
00031FBE  0000              add [eax],al
00031FC0  0000              add [eax],al
00031FC2  0000              add [eax],al
00031FC4  0000              add [eax],al
00031FC6  0000              add [eax],al
00031FC8  0000              add [eax],al
00031FCA  0000              add [eax],al
00031FCC  0000              add [eax],al
00031FCE  0000              add [eax],al
00031FD0  0000              add [eax],al
00031FD2  0000              add [eax],al
00031FD4  0000              add [eax],al
00031FD6  0000              add [eax],al
00031FD8  0000              add [eax],al
00031FDA  0000              add [eax],al
00031FDC  0000              add [eax],al
00031FDE  0000              add [eax],al
00031FE0  0000              add [eax],al
00031FE2  0000              add [eax],al
00031FE4  0000              add [eax],al
00031FE6  0000              add [eax],al
00031FE8  0000              add [eax],al
00031FEA  0000              add [eax],al
00031FEC  0000              add [eax],al
00031FEE  0000              add [eax],al
00031FF0  0000              add [eax],al
00031FF2  0000              add [eax],al
00031FF4  0000              add [eax],al
00031FF6  0000              add [eax],al
00031FF8  0000              add [eax],al
00031FFA  0000              add [eax],al
00031FFC  0000              add [eax],al
00031FFE  0000              add [eax],al
00032000  0A0A              or cl,[edx]
00032002  0A0A              or cl,[edx]
00032004  0A0A              or cl,[edx]
00032006  0A0A              or cl,[edx]
00032008  0A0A              or cl,[edx]
0003200A  0A0A              or cl,[edx]
0003200C  0A0A              or cl,[edx]
0003200E  0A0A              or cl,[edx]
00032010  0A2D2D2D2D2D      or ch,[dword 0x2d2d2d2d]
00032016  226373            and ah,[ebx+0x73]
00032019  7461              jz 0x3207c
0003201B  7274              jc 0x32091
0003201D  2220              and ah,[eax]
0003201F  626567            bound esp,[ebp+0x67]
00032022  696E732D2D2D2D    imul ebp,[esi+0x73],dword 0x2d2d2d2d
00032029  2D0A002D2D        sub eax,0x2d2d000a
0003202E  2D2D2D2D2D        sub eax,0x2d2d2d2d
00032033  2D2D2D2D2D        sub eax,0x2d2d2d2d
00032038  226374            and ah,[ebx+0x74]
0003203B  7361              jnc 0x3209e
0003203D  7274              jc 0x320b3
0003203F  2220              and ah,[eax]
00032041  656E              gs outsb
00032043  64202D2D2D2D2D    and [dword fs:0x2d2d2d2d],ch
0003204A  2D2D2D0A00        sub eax,0xa2d2d
0003204F  002D2D2D2D2D      add [dword 0x2d2d2d2d],ch
00032055  226B65            and ch,[ebx+0x65]
00032058  726E              jc 0x320c8
0003205A  656C              gs insb
0003205C  5F                pop edi
0003205D  6D                insd
0003205E  61                popa
0003205F  696E2220626567    imul ebp,[esi+0x22],dword 0x67656220
00032066  696E732D2D2D2D    imul ebp,[esi+0x73],dword 0x2d2d2d2d
0003206D  2D0A004100        sub eax,0x41000a
00032072  2E007370          add [cs:ebx+0x70],dh
00032076  7572              jnz 0x320ea
00032078  696F75735F6972    imul ebp,[edi+0x75],dword 0x72695f73
0003207F  713A              jno 0x320bb
00032081  2000              and [eax],al
00032083  0A00              or al,[eax]
00032085  0000              add [eax],al
00032087  0020              add [eax],ah
00032089  004578            add [ebp+0x78],al
0003208C  636570            arpl [ebp+0x70],sp
0003208F  7469              jz 0x320fa
00032091  6F                outsd
00032092  6E                outsb
00032093  2120              and [eax],esp
00032095  2D2D3E2000        sub eax,0x203e2d
0003209A  0A0A              or cl,[edx]
0003209C  004546            add [ebp+0x46],al
0003209F  4C                dec esp
000320A0  41                inc ecx
000320A1  47                inc edi
000320A2  53                push ebx
000320A3  3A00              cmp al,[eax]
000320A5  43                inc ebx
000320A6  53                push ebx
000320A7  3A00              cmp al,[eax]
000320A9  45                inc ebp
000320AA  49                dec ecx
000320AB  50                push eax
000320AC  3A00              cmp al,[eax]
000320AE  45                inc ebp
000320AF  7272              jc 0x32123
000320B1  6F                outsd
000320B2  7220              jc 0x320d4
000320B4  636F64            arpl [edi+0x64],bp
000320B7  653A00            cmp al,[gs:eax]
000320BA  23444520          and eax,[ebp+eax*2+0x20]
000320BE  44                inc esp
000320BF  69766964652045    imul esi,[esi+0x69],dword 0x45206564
000320C6  7272              jc 0x3213a
000320C8  6F                outsd
000320C9  7200              jc 0x320cb
000320CB  23444220          and eax,[edx+eax*2+0x20]
000320CF  52                push edx
000320D0  45                inc ebp
000320D1  53                push ebx
000320D2  45                inc ebp
000320D3  52                push edx
000320D4  56                push esi
000320D5  45                inc ebp
000320D6  44                inc esp
000320D7  002D2D20204E      add [dword 0x4e20202d],ch
000320DD  4D                dec ebp
000320DE  49                dec ecx
000320DF  20496E            and [ecx+0x6e],cl
000320E2  7465              jz 0x32149
000320E4  7272              jc 0x32158
000320E6  7570              jnz 0x32158
000320E8  7400              jz 0x320ea
000320EA  234250            and eax,[edx+0x50]
000320ED  204272            and [edx+0x72],al
000320F0  6561              gs popa
000320F2  6B706F69          imul esi,[eax+0x6f],byte +0x69
000320F6  6E                outsb
000320F7  7400              jz 0x320f9
000320F9  234F46            and ecx,[edi+0x46]
000320FC  204F76            and [edi+0x76],cl
000320FF  657266            gs jc 0x32168
00032102  6C                insb
00032103  6F                outsd
00032104  7700              ja 0x32106
00032106  234252            and eax,[edx+0x52]
00032109  20424F            and [edx+0x4f],al
0003210C  55                push ebp
0003210D  4E                dec esi
0003210E  44                inc esp
0003210F  205261            and [edx+0x61],dl
00032112  6E                outsb
00032113  6765204578        and [gs:di+0x78],al
00032118  636565            arpl [ebp+0x65],sp
0003211B  6465640000        add [fs:eax],al
00032120  235544            and edx,[ebp+0x44]
00032123  20496E            and [ecx+0x6e],cl
00032126  7661              jna 0x32189
00032128  6C                insb
00032129  6964204F70636F64  imul esp,[eax+0x4f],dword 0x646f6370
00032131  652028            and [gs:eax],ch
00032134  55                push ebp
00032135  6E                outsb
00032136  646566696E656420  imul bp,[gs:esi+0x65],word 0x2064
0003213E  4F                dec edi
0003213F  7063              jo 0x321a4
00032141  6F                outsd
00032142  64652900          sub [gs:eax],eax
00032146  0000              add [eax],al
00032148  234E4D            and ecx,[esi+0x4d]
0003214B  20446576          and [ebp+0x76],al
0003214F  696365204E6F74    imul esp,[ebx+0x65],dword 0x746f4e20
00032156  204176            and [ecx+0x76],al
00032159  61                popa
0003215A  696C61626C652028  imul ebp,[ecx+0x62],dword 0x2820656c
00032162  4E                dec esi
00032163  6F                outsd
00032164  204D61            and [ebp+0x61],cl
00032167  7468              jz 0x321d1
00032169  20436F            and [ebx+0x6f],al
0003216C  7072              jo 0x321e0
0003216E  6F                outsd
0003216F  636573            arpl [ebp+0x73],sp
00032172  736F              jnc 0x321e3
00032174  7229              jc 0x3219f
00032176  0023              add [ebx],ah
00032178  44                inc esp
00032179  46                inc esi
0003217A  20446F75          and [edi+ebp*2+0x75],al
0003217E  626C6520          bound ebp,[ebp+0x20]
00032182  46                inc esi
00032183  61                popa
00032184  756C              jnz 0x321f2
00032186  7400              jz 0x32188
00032188  2020              and [eax],ah
0003218A  2020              and [eax],ah
0003218C  43                inc ebx
0003218D  6F                outsd
0003218E  7270              jc 0x32200
00032190  726F              jc 0x32201
00032192  636573            arpl [ebp+0x73],sp
00032195  736F              jnc 0x32206
00032197  7220              jc 0x321b9
00032199  53                push ebx
0003219A  65676D            gs a16 insd
0003219D  656E              gs outsb
0003219F  7420              jz 0x321c1
000321A1  4F                dec edi
000321A2  7665              jna 0x32209
000321A4  7272              jc 0x32218
000321A6  756E              jnz 0x32216
000321A8  2028              and [eax],ch
000321AA  7265              jc 0x32211
000321AC  7365              jnc 0x32213
000321AE  7276              jc 0x32226
000321B0  65642900          sub [fs:eax],eax
000321B4  23545320          and edx,[ebx+edx*2+0x20]
000321B8  49                dec ecx
000321B9  6E                outsb
000321BA  7661              jna 0x3221d
000321BC  6C                insb
000321BD  6420545353        and [fs:ebx+edx*2+0x53],dl
000321C2  0023              add [ebx],ah
000321C4  4E                dec esi
000321C5  50                push eax
000321C6  205365            and [ebx+0x65],dl
000321C9  676D              a16 insd
000321CB  656E              gs outsb
000321CD  7420              jz 0x321ef
000321CF  4E                dec esi
000321D0  6F                outsd
000321D1  7420              jz 0x321f3
000321D3  50                push eax
000321D4  7265              jc 0x3223b
000321D6  7365              jnc 0x3223d
000321D8  6E                outsb
000321D9  7400              jz 0x321db
000321DB  235353            and edx,[ebx+0x53]
000321DE  205374            and [ebx+0x74],dl
000321E1  61                popa
000321E2  636B2D            arpl [ebx+0x2d],bp
000321E5  53                push ebx
000321E6  65676D            gs a16 insd
000321E9  656E              gs outsb
000321EB  7420              jz 0x3220d
000321ED  46                inc esi
000321EE  61                popa
000321EF  756C              jnz 0x3225d
000321F1  7400              jz 0x321f3
000321F3  234750            and eax,[edi+0x50]
000321F6  204765            and [edi+0x65],al
000321F9  6E                outsb
000321FA  657261            gs jc 0x3225e
000321FD  6C                insb
000321FE  205072            and [eax+0x72],dl
00032201  6F                outsd
00032202  7465              jz 0x32269
00032204  6374696F          arpl [ecx+ebp*2+0x6f],si
00032208  6E                outsb
00032209  0023              add [ebx],ah
0003220B  50                push eax
0003220C  46                inc esi
0003220D  205061            and [eax+0x61],dl
00032210  6765204661        and [gs:bp+0x61],al
00032215  756C              jnz 0x32283
00032217  7400              jz 0x32219
00032219  0000              add [eax],al
0003221B  002D2D202028      add [dword 0x2820202d],ch
00032221  49                dec ecx
00032222  6E                outsb
00032223  7465              jz 0x3228a
00032225  6C                insb
00032226  207265            and [edx+0x65],dh
00032229  7365              jnc 0x32290
0003222B  7276              jc 0x322a3
0003222D  65642E20446F20    and [cs:edi+ebp*2+0x20],al
00032234  6E                outsb
00032235  6F                outsd
00032236  7420              jz 0x32258
00032238  7573              jnz 0x322ad
0003223A  652E2900          sub [cs:eax],eax
0003223E  0000              add [eax],al
00032240  234D46            and ecx,[ebp+0x46]
00032243  207838            and [eax+0x38],bh
00032246  37                aaa
00032247  204650            and [esi+0x50],al
0003224A  55                push ebp
0003224B  20466C            and [esi+0x6c],al
0003224E  6F                outsd
0003224F  61                popa
00032250  7469              jz 0x322bb
00032252  6E                outsb
00032253  672D506F696E      sub eax,0x6e696f50
00032259  7420              jz 0x3227b
0003225B  45                inc ebp
0003225C  7272              jc 0x322d0
0003225E  6F                outsd
0003225F  7220              jc 0x32281
00032261  284D61            sub [ebp+0x61],cl
00032264  7468              jz 0x322ce
00032266  204661            and [esi+0x61],al
00032269  756C              jnz 0x322d7
0003226B  7429              jz 0x32296
0003226D  0023              add [ebx],ah
0003226F  41                inc ecx
00032270  43                inc ebx
00032271  20416C            and [ecx+0x6c],al
00032274  69676E6D656E74    imul esp,[edi+0x6e],dword 0x746e656d
0003227B  204368            and [ebx+0x68],al
0003227E  65636B00          arpl [gs:ebx+0x0],bp
00032282  234D43            and ecx,[ebp+0x43]
00032285  204D61            and [ebp+0x61],cl
00032288  636869            arpl [eax+0x69],bp
0003228B  6E                outsb
0003228C  65204368          and [gs:ebx+0x68],al
00032290  65636B00          arpl [gs:ebx+0x0],bp
00032294  235846            and ebx,[eax+0x46]
00032297  205349            and [ebx+0x49],dl
0003229A  4D                dec ebp
0003229B  44                inc esp
0003229C  20466C            and [esi+0x6c],al
0003229F  6F                outsd
000322A0  61                popa
000322A1  7469              jz 0x3230c
000322A3  6E                outsb
000322A4  672D506F696E      sub eax,0x6e696f50
000322AA  7420              jz 0x322cc
000322AC  45                inc ebp
000322AD  7863              js 0x32312
000322AF  657074            gs jo 0x32326
000322B2  696F6E00000014    imul ebp,[edi+0x6e],dword 0x14000000
000322B9  0000              add [eax],al
000322BB  0000              add [eax],al
000322BD  0000              add [eax],al
000322BF  0001              add [ecx],al
000322C1  7A52              jpe 0x32315
000322C3  0001              add [ecx],al
000322C5  7C08              jl 0x322cf
000322C7  011B              add [ebx],ebx
000322C9  0C04              or al,0x4
000322CB  0488              add al,0x88
000322CD  0100              add [eax],eax
000322CF  0020              add [eax],ah
000322D1  0000              add [eax],al
000322D3  001C00            add [eax+eax],bl
000322D6  0000              add [eax],al
000322D8  F4                hlt
000322D9  E2FF              loop 0x322da
000322DB  FFC3              inc ebx
000322DD  0000              add [eax],al
000322DF  0000              add [eax],al
000322E1  41                inc ecx
000322E2  0E                push cs
000322E3  088502420D05      or [ebp+0x50d4202],al
000322E9  44                inc esp
000322EA  830302            add dword [ebx],byte +0x2
000322ED  BBC5C30C04        mov ebx,0x40cc3c5
000322F2  0400              add al,0x0
000322F4  1000              adc [eax],al
000322F6  0000              add [eax],al
000322F8  40                inc eax
000322F9  0000              add [eax],al
000322FB  0093E3FFFF04      add [ebx+0x4ffffe3],dl
00032301  0000              add [eax],al
00032303  0000              add [eax],al
00032305  0000              add [eax],al
00032307  0018              add [eax],bl
00032309  0000              add [eax],al
0003230B  00540000          add [eax+eax+0x0],dl
0003230F  0083E3FFFFF8      add [ebx-0x700001d],al
00032315  0000              add [eax],al
00032317  0000              add [eax],al
00032319  41                inc ecx
0003231A  0E                push cs
0003231B  088502420D05      or [ebp+0x50d4202],al
00032321  44                inc esp
00032322  830318            add dword [ebx],byte +0x18
00032325  0000              add [eax],al
00032327  007000            add [eax+0x0],dh
0003232A  0000              add [eax],al
0003232C  5F                pop edi
0003232D  E4FF              in al,0xff
0003232F  FF6100            jmp [ecx+0x0]
00032332  0000              add [eax],al
00032334  00410E            add [ecx+0xe],al
00032337  088502420D05      or [ebp+0x50d4202],al
0003233D  44                inc esp
0003233E  830320            add dword [ebx],byte +0x20
00032341  0000              add [eax],al
00032343  008C000000A4E4    add [eax+eax-0x1b5c0000],cl
0003234A  FF                db 0xff
0003234B  FFC3              inc ebx
0003234D  0000              add [eax],al
0003234F  0000              add [eax],al
00032351  41                inc ecx
00032352  0E                push cs
00032353  088502420D05      or [ebp+0x50d4202],al
00032359  44                inc esp
0003235A  830302            add dword [ebx],byte +0x2
0003235D  BBC5C30C04        mov ebx,0x40cc3c5
00032362  0400              add al,0x0
00032364  2000              and [eax],al
00032366  0000              add [eax],al
00032368  B000              mov al,0x0
0003236A  0000              add [eax],al
0003236C  43                inc ebx
0003236D  E5FF              in eax,0xff
0003236F  FF4A00            dec dword [edx+0x0]
00032372  0000              add [eax],al
00032374  00410E            add [ecx+0xe],al
00032377  088502420D05      or [ebp+0x50d4202],al
0003237D  44                inc esp
0003237E  830302            add dword [ebx],byte +0x2
00032381  42                inc edx
00032382  C5                db 0xc5
00032383  C3                ret
00032384  0C04              or al,0x4
00032386  0400              add al,0x0
00032388  2000              and [eax],al
0003238A  0000              add [eax],al
0003238C  D400              aam 0x0
0003238E  0000              add [eax],al
00032390  69E5FFFFB103      imul esp,ebp,dword 0x3b1ffff
00032396  0000              add [eax],al
00032398  00410E            add [ecx+0xe],al
0003239B  088502420D05      or [ebp+0x50d4202],al
000323A1  44                inc esp
000323A2  830303            add dword [ebx],byte +0x3
000323A5  A903C5C30C        test eax,0xcc3c503
000323AA  0404              add al,0x4
000323AC  2000              and [eax],al
000323AE  0000              add [eax],al
000323B0  F8                clc
000323B1  0000              add [eax],al
000323B3  00F6              add dh,dh
000323B5  E8FFFF8200        call 0x8623b9
000323BA  0000              add [eax],al
000323BC  00410E            add [ecx+0xe],al
000323BF  088502420D05      or [ebp+0x50d4202],al
000323C5  44                inc esp
000323C6  830302            add dword [ebx],byte +0x2
000323C9  7AC5              jpe 0x32390
000323CB  C3                ret
000323CC  0C04              or al,0x4
000323CE  0400              add al,0x0
000323D0  1C00              sbb al,0x0
000323D2  0000              add [eax],al
000323D4  1C01              sbb al,0x1
000323D6  0000              add [eax],al
000323D8  54                push esp
000323D9  E9FFFF5C00        jmp 0x6023dd
000323DE  0000              add [eax],al
000323E0  00410E            add [ecx+0xe],al
000323E3  088502420D05      or [ebp+0x50d4202],al
000323E9  0258C5            add bl,[eax-0x3b]
000323EC  0C04              or al,0x4
000323EE  0400              add al,0x0
000323F0  1C00              sbb al,0x0
000323F2  0000              add [eax],al
000323F4  3C01              cmp al,0x1
000323F6  0000              add [eax],al
000323F8  90                nop
000323F9  E9FFFF7700        jmp 0x7b23fd
000323FE  0000              add [eax],al
00032400  00410E            add [ecx+0xe],al
00032403  088502420D05      or [ebp+0x50d4202],al
00032409  0273C5            add dh,[ebx-0x3b]
0003240C  0C04              or al,0x4
0003240E  0400              add al,0x0
00032410  2C00              sub al,0x0
00032412  0000              add [eax],al
00032414  5C                pop esp
00032415  0100              add [eax],eax
00032417  00E7              add bh,ah
00032419  E9FFFF4A01        jmp 0x14e241d
0003241E  0000              add [eax],al
00032420  00410E            add [ecx+0xe],al
00032423  088502420D05      or [ebp+0x50d4202],al
00032429  46                inc esi
0003242A  8703              xchg eax,[ebx]
0003242C  860483            xchg al,[ebx+eax*4]
0003242F  05033D01C3        add eax,0xc3013d03
00032434  41                inc ecx
00032435  C641C741          mov byte [ecx-0x39],0x41
00032439  C50C04            lds ecx,[esp+eax]
0003243C  0400              add al,0x0
0003243E  0000              add [eax],al
00032440  1000              adc [eax],al
00032442  0000              add [eax],al
00032444  8C01              mov [ecx],es
00032446  0000              add [eax],al
00032448  01EB              add ebx,ebp
0003244A  FF                db 0xff
0003244B  FF0400            inc dword [eax+eax]
0003244E  0000              add [eax],al
00032450  0000              add [eax],al
00032452  0000              add [eax],al
00032454  1C00              sbb al,0x0
00032456  0000              add [eax],al
00032458  A0010000E3        mov al,[0xe3000001]
0003245D  EBFF              jmp short 0x3245e
0003245F  FFB500000000      push dword [ebp+0x0]
00032465  41                inc ecx
00032466  0E                push cs
00032467  088502420D05      or [ebp+0x50d4202],al
0003246D  02B1C50C0404      add dh,[ecx+0x4040cc5]
00032473  0020              add [eax],ah
00032475  0000              add [eax],al
00032477  00C0              add al,al
00032479  0100              add [eax],eax
0003247B  0078EC            add [eax-0x14],bh
0003247E  FF                db 0xff
0003247F  FF36              push dword [esi]
00032481  0000              add [eax],al
00032483  0000              add [eax],al
00032485  41                inc ecx
00032486  0E                push cs
00032487  088502420D05      or [ebp+0x50d4202],al
0003248D  44                inc esp
0003248E  83036E            add dword [ebx],byte +0x6e
00032491  C5                db 0xc5
00032492  C3                ret
00032493  0C04              or al,0x4
00032495  0400              add al,0x0
00032497  001C00            add [eax+eax],bl
0003249A  0000              add [eax],al
0003249C  E401              in al,0x1
0003249E  0000              add [eax],al
000324A0  8AEC              mov ch,ah
000324A2  FF                db 0xff
000324A3  FF5200            call [edx+0x0]
000324A6  0000              add [eax],al
000324A8  00410E            add [ecx+0xe],al
000324AB  088502420D05      or [ebp+0x50d4202],al
000324B1  024EC5            add cl,[esi-0x3b]
000324B4  0C04              or al,0x4
000324B6  0400              add al,0x0
000324B8  0000              add [eax],al
000324BA  0000              add [eax],al
000324BC  0000              add [eax],al
000324BE  0000              add [eax],al
000324C0  0000              add [eax],al
000324C2  0000              add [eax],al
000324C4  0000              add [eax],al
000324C6  0000              add [eax],al
000324C8  0000              add [eax],al
000324CA  0000              add [eax],al
000324CC  0000              add [eax],al
000324CE  0000              add [eax],al
000324D0  0000              add [eax],al
000324D2  0000              add [eax],al
000324D4  0000              add [eax],al
000324D6  0000              add [eax],al
000324D8  0000              add [eax],al
000324DA  0000              add [eax],al
000324DC  0000              add [eax],al
000324DE  0000              add [eax],al
000324E0  0000              add [eax],al
000324E2  0000              add [eax],al
000324E4  0000              add [eax],al
000324E6  0000              add [eax],al
000324E8  0000              add [eax],al
000324EA  0000              add [eax],al
000324EC  0000              add [eax],al
000324EE  0000              add [eax],al
000324F0  0000              add [eax],al
000324F2  0000              add [eax],al
000324F4  0000              add [eax],al
000324F6  0000              add [eax],al
000324F8  0000              add [eax],al
000324FA  0000              add [eax],al
000324FC  0000              add [eax],al
000324FE  0000              add [eax],al
00032500  0000              add [eax],al
00032502  0000              add [eax],al
00032504  0000              add [eax],al
00032506  0000              add [eax],al
00032508  0000              add [eax],al
0003250A  0000              add [eax],al
0003250C  0000              add [eax],al
0003250E  0000              add [eax],al
00032510  0000              add [eax],al
00032512  0000              add [eax],al
00032514  0000              add [eax],al
00032516  0000              add [eax],al
00032518  0000              add [eax],al
0003251A  0000              add [eax],al
0003251C  0000              add [eax],al
0003251E  0000              add [eax],al
00032520  0000              add [eax],al
00032522  0000              add [eax],al
00032524  0000              add [eax],al
00032526  0000              add [eax],al
00032528  0000              add [eax],al
0003252A  0000              add [eax],al
0003252C  0000              add [eax],al
0003252E  0000              add [eax],al
00032530  0000              add [eax],al
00032532  0000              add [eax],al
00032534  0000              add [eax],al
00032536  0000              add [eax],al
00032538  0000              add [eax],al
0003253A  0000              add [eax],al
0003253C  0000              add [eax],al
0003253E  0000              add [eax],al
00032540  0000              add [eax],al
00032542  0000              add [eax],al
00032544  0000              add [eax],al
00032546  0000              add [eax],al
00032548  0000              add [eax],al
0003254A  0000              add [eax],al
0003254C  0000              add [eax],al
0003254E  0000              add [eax],al
00032550  0000              add [eax],al
00032552  0000              add [eax],al
00032554  0000              add [eax],al
00032556  0000              add [eax],al
00032558  0000              add [eax],al
0003255A  0000              add [eax],al
0003255C  0000              add [eax],al
0003255E  0000              add [eax],al
00032560  0000              add [eax],al
00032562  0000              add [eax],al
00032564  0000              add [eax],al
00032566  0000              add [eax],al
00032568  0000              add [eax],al
0003256A  0000              add [eax],al
0003256C  0000              add [eax],al
0003256E  0000              add [eax],al
00032570  0000              add [eax],al
00032572  0000              add [eax],al
00032574  0000              add [eax],al
00032576  0000              add [eax],al
00032578  0000              add [eax],al
0003257A  0000              add [eax],al
0003257C  0000              add [eax],al
0003257E  0000              add [eax],al
00032580  0000              add [eax],al
00032582  0000              add [eax],al
00032584  0000              add [eax],al
00032586  0000              add [eax],al
00032588  0000              add [eax],al
0003258A  0000              add [eax],al
0003258C  0000              add [eax],al
0003258E  0000              add [eax],al
00032590  0000              add [eax],al
00032592  0000              add [eax],al
00032594  0000              add [eax],al
00032596  0000              add [eax],al
00032598  0000              add [eax],al
0003259A  0000              add [eax],al
0003259C  0000              add [eax],al
0003259E  0000              add [eax],al
000325A0  0000              add [eax],al
000325A2  0000              add [eax],al
000325A4  0000              add [eax],al
000325A6  0000              add [eax],al
000325A8  0000              add [eax],al
000325AA  0000              add [eax],al
000325AC  0000              add [eax],al
000325AE  0000              add [eax],al
000325B0  0000              add [eax],al
000325B2  0000              add [eax],al
000325B4  0000              add [eax],al
000325B6  0000              add [eax],al
000325B8  0000              add [eax],al
000325BA  0000              add [eax],al
000325BC  0000              add [eax],al
000325BE  0000              add [eax],al
000325C0  0000              add [eax],al
000325C2  0000              add [eax],al
000325C4  0000              add [eax],al
000325C6  0000              add [eax],al
000325C8  0000              add [eax],al
000325CA  0000              add [eax],al
000325CC  0000              add [eax],al
000325CE  0000              add [eax],al
000325D0  0000              add [eax],al
000325D2  0000              add [eax],al
000325D4  0000              add [eax],al
000325D6  0000              add [eax],al
000325D8  0000              add [eax],al
000325DA  0000              add [eax],al
000325DC  0000              add [eax],al
000325DE  0000              add [eax],al
000325E0  0000              add [eax],al
000325E2  0000              add [eax],al
000325E4  0000              add [eax],al
000325E6  0000              add [eax],al
000325E8  0000              add [eax],al
000325EA  0000              add [eax],al
000325EC  0000              add [eax],al
000325EE  0000              add [eax],al
000325F0  0000              add [eax],al
000325F2  0000              add [eax],al
000325F4  0000              add [eax],al
000325F6  0000              add [eax],al
000325F8  0000              add [eax],al
000325FA  0000              add [eax],al
000325FC  0000              add [eax],al
000325FE  0000              add [eax],al
00032600  0000              add [eax],al
00032602  0000              add [eax],al
00032604  0000              add [eax],al
00032606  0000              add [eax],al
00032608  0000              add [eax],al
0003260A  0000              add [eax],al
0003260C  0000              add [eax],al
0003260E  0000              add [eax],al
00032610  0000              add [eax],al
00032612  0000              add [eax],al
00032614  0000              add [eax],al
00032616  0000              add [eax],al
00032618  0000              add [eax],al
0003261A  0000              add [eax],al
0003261C  0000              add [eax],al
0003261E  0000              add [eax],al
00032620  0000              add [eax],al
00032622  0000              add [eax],al
00032624  0000              add [eax],al
00032626  0000              add [eax],al
00032628  0000              add [eax],al
0003262A  0000              add [eax],al
0003262C  0000              add [eax],al
0003262E  0000              add [eax],al
00032630  0000              add [eax],al
00032632  0000              add [eax],al
00032634  0000              add [eax],al
00032636  0000              add [eax],al
00032638  0000              add [eax],al
0003263A  0000              add [eax],al
0003263C  0000              add [eax],al
0003263E  0000              add [eax],al
00032640  0000              add [eax],al
00032642  0000              add [eax],al
00032644  0000              add [eax],al
00032646  0000              add [eax],al
00032648  0000              add [eax],al
0003264A  0000              add [eax],al
0003264C  0000              add [eax],al
0003264E  0000              add [eax],al
00032650  0000              add [eax],al
00032652  0000              add [eax],al
00032654  0000              add [eax],al
00032656  0000              add [eax],al
00032658  0000              add [eax],al
0003265A  0000              add [eax],al
0003265C  0000              add [eax],al
0003265E  0000              add [eax],al
00032660  0000              add [eax],al
00032662  0000              add [eax],al
00032664  0000              add [eax],al
00032666  0000              add [eax],al
00032668  0000              add [eax],al
0003266A  0000              add [eax],al
0003266C  0000              add [eax],al
0003266E  0000              add [eax],al
00032670  0000              add [eax],al
00032672  0000              add [eax],al
00032674  0000              add [eax],al
00032676  0000              add [eax],al
00032678  0000              add [eax],al
0003267A  0000              add [eax],al
0003267C  0000              add [eax],al
0003267E  0000              add [eax],al
00032680  0000              add [eax],al
00032682  0000              add [eax],al
00032684  0000              add [eax],al
00032686  0000              add [eax],al
00032688  0000              add [eax],al
0003268A  0000              add [eax],al
0003268C  0000              add [eax],al
0003268E  0000              add [eax],al
00032690  0000              add [eax],al
00032692  0000              add [eax],al
00032694  0000              add [eax],al
00032696  0000              add [eax],al
00032698  0000              add [eax],al
0003269A  0000              add [eax],al
0003269C  0000              add [eax],al
0003269E  0000              add [eax],al
000326A0  0000              add [eax],al
000326A2  0000              add [eax],al
000326A4  0000              add [eax],al
000326A6  0000              add [eax],al
000326A8  0000              add [eax],al
000326AA  0000              add [eax],al
000326AC  0000              add [eax],al
000326AE  0000              add [eax],al
000326B0  0000              add [eax],al
000326B2  0000              add [eax],al
000326B4  0000              add [eax],al
000326B6  0000              add [eax],al
000326B8  0000              add [eax],al
000326BA  0000              add [eax],al
000326BC  0000              add [eax],al
000326BE  0000              add [eax],al
000326C0  0000              add [eax],al
000326C2  0000              add [eax],al
000326C4  0000              add [eax],al
000326C6  0000              add [eax],al
000326C8  0000              add [eax],al
000326CA  0000              add [eax],al
000326CC  0000              add [eax],al
000326CE  0000              add [eax],al
000326D0  0000              add [eax],al
000326D2  0000              add [eax],al
000326D4  0000              add [eax],al
000326D6  0000              add [eax],al
000326D8  0000              add [eax],al
000326DA  0000              add [eax],al
000326DC  0000              add [eax],al
000326DE  0000              add [eax],al
000326E0  0000              add [eax],al
000326E2  0000              add [eax],al
000326E4  0000              add [eax],al
000326E6  0000              add [eax],al
000326E8  0000              add [eax],al
000326EA  0000              add [eax],al
000326EC  0000              add [eax],al
000326EE  0000              add [eax],al
000326F0  0000              add [eax],al
000326F2  0000              add [eax],al
000326F4  0000              add [eax],al
000326F6  0000              add [eax],al
000326F8  0000              add [eax],al
000326FA  0000              add [eax],al
000326FC  0000              add [eax],al
000326FE  0000              add [eax],al
00032700  0000              add [eax],al
00032702  0000              add [eax],al
00032704  0000              add [eax],al
00032706  0000              add [eax],al
00032708  0000              add [eax],al
0003270A  0000              add [eax],al
0003270C  0000              add [eax],al
0003270E  0000              add [eax],al
00032710  0000              add [eax],al
00032712  0000              add [eax],al
00032714  0000              add [eax],al
00032716  0000              add [eax],al
00032718  0000              add [eax],al
0003271A  0000              add [eax],al
0003271C  0000              add [eax],al
0003271E  0000              add [eax],al
00032720  0000              add [eax],al
00032722  0000              add [eax],al
00032724  0000              add [eax],al
00032726  0000              add [eax],al
00032728  0000              add [eax],al
0003272A  0000              add [eax],al
0003272C  0000              add [eax],al
0003272E  0000              add [eax],al
00032730  0000              add [eax],al
00032732  0000              add [eax],al
00032734  0000              add [eax],al
00032736  0000              add [eax],al
00032738  0000              add [eax],al
0003273A  0000              add [eax],al
0003273C  0000              add [eax],al
0003273E  0000              add [eax],al
00032740  0000              add [eax],al
00032742  0000              add [eax],al
00032744  0000              add [eax],al
00032746  0000              add [eax],al
00032748  0000              add [eax],al
0003274A  0000              add [eax],al
0003274C  0000              add [eax],al
0003274E  0000              add [eax],al
00032750  0000              add [eax],al
00032752  0000              add [eax],al
00032754  0000              add [eax],al
00032756  0000              add [eax],al
00032758  0000              add [eax],al
0003275A  0000              add [eax],al
0003275C  0000              add [eax],al
0003275E  0000              add [eax],al
00032760  0000              add [eax],al
00032762  0000              add [eax],al
00032764  0000              add [eax],al
00032766  0000              add [eax],al
00032768  0000              add [eax],al
0003276A  0000              add [eax],al
0003276C  0000              add [eax],al
0003276E  0000              add [eax],al
00032770  0000              add [eax],al
00032772  0000              add [eax],al
00032774  0000              add [eax],al
00032776  0000              add [eax],al
00032778  0000              add [eax],al
0003277A  0000              add [eax],al
0003277C  0000              add [eax],al
0003277E  0000              add [eax],al
00032780  0000              add [eax],al
00032782  0000              add [eax],al
00032784  0000              add [eax],al
00032786  0000              add [eax],al
00032788  0000              add [eax],al
0003278A  0000              add [eax],al
0003278C  0000              add [eax],al
0003278E  0000              add [eax],al
00032790  0000              add [eax],al
00032792  0000              add [eax],al
00032794  0000              add [eax],al
00032796  0000              add [eax],al
00032798  0000              add [eax],al
0003279A  0000              add [eax],al
0003279C  0000              add [eax],al
0003279E  0000              add [eax],al
000327A0  0000              add [eax],al
000327A2  0000              add [eax],al
000327A4  0000              add [eax],al
000327A6  0000              add [eax],al
000327A8  0000              add [eax],al
000327AA  0000              add [eax],al
000327AC  0000              add [eax],al
000327AE  0000              add [eax],al
000327B0  0000              add [eax],al
000327B2  0000              add [eax],al
000327B4  0000              add [eax],al
000327B6  0000              add [eax],al
000327B8  0000              add [eax],al
000327BA  0000              add [eax],al
000327BC  0000              add [eax],al
000327BE  0000              add [eax],al
000327C0  0000              add [eax],al
000327C2  0000              add [eax],al
000327C4  0000              add [eax],al
000327C6  0000              add [eax],al
000327C8  0000              add [eax],al
000327CA  0000              add [eax],al
000327CC  0000              add [eax],al
000327CE  0000              add [eax],al
000327D0  0000              add [eax],al
000327D2  0000              add [eax],al
000327D4  0000              add [eax],al
000327D6  0000              add [eax],al
000327D8  0000              add [eax],al
000327DA  0000              add [eax],al
000327DC  0000              add [eax],al
000327DE  0000              add [eax],al
000327E0  0000              add [eax],al
000327E2  0000              add [eax],al
000327E4  0000              add [eax],al
000327E6  0000              add [eax],al
000327E8  0000              add [eax],al
000327EA  0000              add [eax],al
000327EC  0000              add [eax],al
000327EE  0000              add [eax],al
000327F0  0000              add [eax],al
000327F2  0000              add [eax],al
000327F4  0000              add [eax],al
000327F6  0000              add [eax],al
000327F8  0000              add [eax],al
000327FA  0000              add [eax],al
000327FC  0000              add [eax],al
000327FE  0000              add [eax],al
00032800  0000              add [eax],al
00032802  0000              add [eax],al
00032804  0000              add [eax],al
00032806  0000              add [eax],al
00032808  0000              add [eax],al
0003280A  0000              add [eax],al
0003280C  0000              add [eax],al
0003280E  0000              add [eax],al
00032810  0000              add [eax],al
00032812  0000              add [eax],al
00032814  0000              add [eax],al
00032816  0000              add [eax],al
00032818  0000              add [eax],al
0003281A  0000              add [eax],al
0003281C  0000              add [eax],al
0003281E  0000              add [eax],al
00032820  0000              add [eax],al
00032822  0000              add [eax],al
00032824  0000              add [eax],al
00032826  0000              add [eax],al
00032828  0000              add [eax],al
0003282A  0000              add [eax],al
0003282C  0000              add [eax],al
0003282E  0000              add [eax],al
00032830  0000              add [eax],al
00032832  0000              add [eax],al
00032834  0000              add [eax],al
00032836  0000              add [eax],al
00032838  0000              add [eax],al
0003283A  0000              add [eax],al
0003283C  0000              add [eax],al
0003283E  0000              add [eax],al
00032840  0000              add [eax],al
00032842  0000              add [eax],al
00032844  0000              add [eax],al
00032846  0000              add [eax],al
00032848  0000              add [eax],al
0003284A  0000              add [eax],al
0003284C  0000              add [eax],al
0003284E  0000              add [eax],al
00032850  0000              add [eax],al
00032852  0000              add [eax],al
00032854  0000              add [eax],al
00032856  0000              add [eax],al
00032858  0000              add [eax],al
0003285A  0000              add [eax],al
0003285C  0000              add [eax],al
0003285E  0000              add [eax],al
00032860  0000              add [eax],al
00032862  0000              add [eax],al
00032864  0000              add [eax],al
00032866  0000              add [eax],al
00032868  0000              add [eax],al
0003286A  0000              add [eax],al
0003286C  0000              add [eax],al
0003286E  0000              add [eax],al
00032870  0000              add [eax],al
00032872  0000              add [eax],al
00032874  0000              add [eax],al
00032876  0000              add [eax],al
00032878  0000              add [eax],al
0003287A  0000              add [eax],al
0003287C  0000              add [eax],al
0003287E  0000              add [eax],al
00032880  0000              add [eax],al
00032882  0000              add [eax],al
00032884  0000              add [eax],al
00032886  0000              add [eax],al
00032888  0000              add [eax],al
0003288A  0000              add [eax],al
0003288C  0000              add [eax],al
0003288E  0000              add [eax],al
00032890  0000              add [eax],al
00032892  0000              add [eax],al
00032894  0000              add [eax],al
00032896  0000              add [eax],al
00032898  0000              add [eax],al
0003289A  0000              add [eax],al
0003289C  0000              add [eax],al
0003289E  0000              add [eax],al
000328A0  0000              add [eax],al
000328A2  0000              add [eax],al
000328A4  0000              add [eax],al
000328A6  0000              add [eax],al
000328A8  0000              add [eax],al
000328AA  0000              add [eax],al
000328AC  0000              add [eax],al
000328AE  0000              add [eax],al
000328B0  0000              add [eax],al
000328B2  0000              add [eax],al
000328B4  0000              add [eax],al
000328B6  0000              add [eax],al
000328B8  0000              add [eax],al
000328BA  0000              add [eax],al
000328BC  0000              add [eax],al
000328BE  0000              add [eax],al
000328C0  0000              add [eax],al
000328C2  0000              add [eax],al
000328C4  0000              add [eax],al
000328C6  0000              add [eax],al
000328C8  0000              add [eax],al
000328CA  0000              add [eax],al
000328CC  0000              add [eax],al
000328CE  0000              add [eax],al
000328D0  0000              add [eax],al
000328D2  0000              add [eax],al
000328D4  0000              add [eax],al
000328D6  0000              add [eax],al
000328D8  0000              add [eax],al
000328DA  0000              add [eax],al
000328DC  0000              add [eax],al
000328DE  0000              add [eax],al
000328E0  0000              add [eax],al
000328E2  0000              add [eax],al
000328E4  0000              add [eax],al
000328E6  0000              add [eax],al
000328E8  0000              add [eax],al
000328EA  0000              add [eax],al
000328EC  0000              add [eax],al
000328EE  0000              add [eax],al
000328F0  0000              add [eax],al
000328F2  0000              add [eax],al
000328F4  0000              add [eax],al
000328F6  0000              add [eax],al
000328F8  0000              add [eax],al
000328FA  0000              add [eax],al
000328FC  0000              add [eax],al
000328FE  0000              add [eax],al
00032900  0000              add [eax],al
00032902  0000              add [eax],al
00032904  0000              add [eax],al
00032906  0000              add [eax],al
00032908  0000              add [eax],al
0003290A  0000              add [eax],al
0003290C  0000              add [eax],al
0003290E  0000              add [eax],al
00032910  0000              add [eax],al
00032912  0000              add [eax],al
00032914  0000              add [eax],al
00032916  0000              add [eax],al
00032918  0000              add [eax],al
0003291A  0000              add [eax],al
0003291C  0000              add [eax],al
0003291E  0000              add [eax],al
00032920  0000              add [eax],al
00032922  0000              add [eax],al
00032924  0000              add [eax],al
00032926  0000              add [eax],al
00032928  0000              add [eax],al
0003292A  0000              add [eax],al
0003292C  0000              add [eax],al
0003292E  0000              add [eax],al
00032930  0000              add [eax],al
00032932  0000              add [eax],al
00032934  0000              add [eax],al
00032936  0000              add [eax],al
00032938  0000              add [eax],al
0003293A  0000              add [eax],al
0003293C  0000              add [eax],al
0003293E  0000              add [eax],al
00032940  0000              add [eax],al
00032942  0000              add [eax],al
00032944  0000              add [eax],al
00032946  0000              add [eax],al
00032948  0000              add [eax],al
0003294A  0000              add [eax],al
0003294C  0000              add [eax],al
0003294E  0000              add [eax],al
00032950  0000              add [eax],al
00032952  0000              add [eax],al
00032954  0000              add [eax],al
00032956  0000              add [eax],al
00032958  0000              add [eax],al
0003295A  0000              add [eax],al
0003295C  0000              add [eax],al
0003295E  0000              add [eax],al
00032960  0000              add [eax],al
00032962  0000              add [eax],al
00032964  0000              add [eax],al
00032966  0000              add [eax],al
00032968  0000              add [eax],al
0003296A  0000              add [eax],al
0003296C  0000              add [eax],al
0003296E  0000              add [eax],al
00032970  0000              add [eax],al
00032972  0000              add [eax],al
00032974  0000              add [eax],al
00032976  0000              add [eax],al
00032978  0000              add [eax],al
0003297A  0000              add [eax],al
0003297C  0000              add [eax],al
0003297E  0000              add [eax],al
00032980  0000              add [eax],al
00032982  0000              add [eax],al
00032984  0000              add [eax],al
00032986  0000              add [eax],al
00032988  0000              add [eax],al
0003298A  0000              add [eax],al
0003298C  0000              add [eax],al
0003298E  0000              add [eax],al
00032990  0000              add [eax],al
00032992  0000              add [eax],al
00032994  0000              add [eax],al
00032996  0000              add [eax],al
00032998  0000              add [eax],al
0003299A  0000              add [eax],al
0003299C  0000              add [eax],al
0003299E  0000              add [eax],al
000329A0  0000              add [eax],al
000329A2  0000              add [eax],al
000329A4  0000              add [eax],al
000329A6  0000              add [eax],al
000329A8  0000              add [eax],al
000329AA  0000              add [eax],al
000329AC  0000              add [eax],al
000329AE  0000              add [eax],al
000329B0  0000              add [eax],al
000329B2  0000              add [eax],al
000329B4  0000              add [eax],al
000329B6  0000              add [eax],al
000329B8  0000              add [eax],al
000329BA  0000              add [eax],al
000329BC  0000              add [eax],al
000329BE  0000              add [eax],al
000329C0  0000              add [eax],al
000329C2  0000              add [eax],al
000329C4  0000              add [eax],al
000329C6  0000              add [eax],al
000329C8  0000              add [eax],al
000329CA  0000              add [eax],al
000329CC  0000              add [eax],al
000329CE  0000              add [eax],al
000329D0  0000              add [eax],al
000329D2  0000              add [eax],al
000329D4  0000              add [eax],al
000329D6  0000              add [eax],al
000329D8  0000              add [eax],al
000329DA  0000              add [eax],al
000329DC  0000              add [eax],al
000329DE  0000              add [eax],al
000329E0  0000              add [eax],al
000329E2  0000              add [eax],al
000329E4  0000              add [eax],al
000329E6  0000              add [eax],al
000329E8  0000              add [eax],al
000329EA  0000              add [eax],al
000329EC  0000              add [eax],al
000329EE  0000              add [eax],al
000329F0  0000              add [eax],al
000329F2  0000              add [eax],al
000329F4  0000              add [eax],al
000329F6  0000              add [eax],al
000329F8  0000              add [eax],al
000329FA  0000              add [eax],al
000329FC  0000              add [eax],al
000329FE  0000              add [eax],al
00032A00  0000              add [eax],al
00032A02  0000              add [eax],al
00032A04  0000              add [eax],al
00032A06  0000              add [eax],al
00032A08  0000              add [eax],al
00032A0A  0000              add [eax],al
00032A0C  0000              add [eax],al
00032A0E  0000              add [eax],al
00032A10  0000              add [eax],al
00032A12  0000              add [eax],al
00032A14  0000              add [eax],al
00032A16  0000              add [eax],al
00032A18  0000              add [eax],al
00032A1A  0000              add [eax],al
00032A1C  0000              add [eax],al
00032A1E  0000              add [eax],al
00032A20  0000              add [eax],al
00032A22  0000              add [eax],al
00032A24  0000              add [eax],al
00032A26  0000              add [eax],al
00032A28  0000              add [eax],al
00032A2A  0000              add [eax],al
00032A2C  0000              add [eax],al
00032A2E  0000              add [eax],al
00032A30  0000              add [eax],al
00032A32  0000              add [eax],al
00032A34  0000              add [eax],al
00032A36  0000              add [eax],al
00032A38  0000              add [eax],al
00032A3A  0000              add [eax],al
00032A3C  0000              add [eax],al
00032A3E  0000              add [eax],al
00032A40  0000              add [eax],al
00032A42  0000              add [eax],al
00032A44  0000              add [eax],al
00032A46  0000              add [eax],al
00032A48  0000              add [eax],al
00032A4A  0000              add [eax],al
00032A4C  0000              add [eax],al
00032A4E  0000              add [eax],al
00032A50  0000              add [eax],al
00032A52  0000              add [eax],al
00032A54  0000              add [eax],al
00032A56  0000              add [eax],al
00032A58  0000              add [eax],al
00032A5A  0000              add [eax],al
00032A5C  0000              add [eax],al
00032A5E  0000              add [eax],al
00032A60  0000              add [eax],al
00032A62  0000              add [eax],al
00032A64  0000              add [eax],al
00032A66  0000              add [eax],al
00032A68  0000              add [eax],al
00032A6A  0000              add [eax],al
00032A6C  0000              add [eax],al
00032A6E  0000              add [eax],al
00032A70  0000              add [eax],al
00032A72  0000              add [eax],al
00032A74  0000              add [eax],al
00032A76  0000              add [eax],al
00032A78  0000              add [eax],al
00032A7A  0000              add [eax],al
00032A7C  0000              add [eax],al
00032A7E  0000              add [eax],al
00032A80  0000              add [eax],al
00032A82  0000              add [eax],al
00032A84  0000              add [eax],al
00032A86  0000              add [eax],al
00032A88  0000              add [eax],al
00032A8A  0000              add [eax],al
00032A8C  0000              add [eax],al
00032A8E  0000              add [eax],al
00032A90  0000              add [eax],al
00032A92  0000              add [eax],al
00032A94  0000              add [eax],al
00032A96  0000              add [eax],al
00032A98  0000              add [eax],al
00032A9A  0000              add [eax],al
00032A9C  0000              add [eax],al
00032A9E  0000              add [eax],al
00032AA0  0000              add [eax],al
00032AA2  0000              add [eax],al
00032AA4  0000              add [eax],al
00032AA6  0000              add [eax],al
00032AA8  0000              add [eax],al
00032AAA  0000              add [eax],al
00032AAC  0000              add [eax],al
00032AAE  0000              add [eax],al
00032AB0  0000              add [eax],al
00032AB2  0000              add [eax],al
00032AB4  0000              add [eax],al
00032AB6  0000              add [eax],al
00032AB8  0000              add [eax],al
00032ABA  0000              add [eax],al
00032ABC  0000              add [eax],al
00032ABE  0000              add [eax],al
00032AC0  0000              add [eax],al
00032AC2  0000              add [eax],al
00032AC4  0000              add [eax],al
00032AC6  0000              add [eax],al
00032AC8  0000              add [eax],al
00032ACA  0000              add [eax],al
00032ACC  0000              add [eax],al
00032ACE  0000              add [eax],al
00032AD0  0000              add [eax],al
00032AD2  0000              add [eax],al
00032AD4  0000              add [eax],al
00032AD6  0000              add [eax],al
00032AD8  0000              add [eax],al
00032ADA  0000              add [eax],al
00032ADC  0000              add [eax],al
00032ADE  0000              add [eax],al
00032AE0  0000              add [eax],al
00032AE2  0000              add [eax],al
00032AE4  0000              add [eax],al
00032AE6  0000              add [eax],al
00032AE8  0000              add [eax],al
00032AEA  0000              add [eax],al
00032AEC  0000              add [eax],al
00032AEE  0000              add [eax],al
00032AF0  0000              add [eax],al
00032AF2  0000              add [eax],al
00032AF4  0000              add [eax],al
00032AF6  0000              add [eax],al
00032AF8  0000              add [eax],al
00032AFA  0000              add [eax],al
00032AFC  0000              add [eax],al
00032AFE  0000              add [eax],al
00032B00  0000              add [eax],al
00032B02  0000              add [eax],al
00032B04  0000              add [eax],al
00032B06  0000              add [eax],al
00032B08  0000              add [eax],al
00032B0A  0000              add [eax],al
00032B0C  0000              add [eax],al
00032B0E  0000              add [eax],al
00032B10  0000              add [eax],al
00032B12  0000              add [eax],al
00032B14  0000              add [eax],al
00032B16  0000              add [eax],al
00032B18  0000              add [eax],al
00032B1A  0000              add [eax],al
00032B1C  0000              add [eax],al
00032B1E  0000              add [eax],al
00032B20  0000              add [eax],al
00032B22  0000              add [eax],al
00032B24  0000              add [eax],al
00032B26  0000              add [eax],al
00032B28  0000              add [eax],al
00032B2A  0000              add [eax],al
00032B2C  0000              add [eax],al
00032B2E  0000              add [eax],al
00032B30  0000              add [eax],al
00032B32  0000              add [eax],al
00032B34  0000              add [eax],al
00032B36  0000              add [eax],al
00032B38  0000              add [eax],al
00032B3A  0000              add [eax],al
00032B3C  0000              add [eax],al
00032B3E  0000              add [eax],al
00032B40  0000              add [eax],al
00032B42  0000              add [eax],al
00032B44  0000              add [eax],al
00032B46  0000              add [eax],al
00032B48  0000              add [eax],al
00032B4A  0000              add [eax],al
00032B4C  0000              add [eax],al
00032B4E  0000              add [eax],al
00032B50  0000              add [eax],al
00032B52  0000              add [eax],al
00032B54  0000              add [eax],al
00032B56  0000              add [eax],al
00032B58  0000              add [eax],al
00032B5A  0000              add [eax],al
00032B5C  0000              add [eax],al
00032B5E  0000              add [eax],al
00032B60  0000              add [eax],al
00032B62  0000              add [eax],al
00032B64  0000              add [eax],al
00032B66  0000              add [eax],al
00032B68  0000              add [eax],al
00032B6A  0000              add [eax],al
00032B6C  0000              add [eax],al
00032B6E  0000              add [eax],al
00032B70  0000              add [eax],al
00032B72  0000              add [eax],al
00032B74  0000              add [eax],al
00032B76  0000              add [eax],al
00032B78  0000              add [eax],al
00032B7A  0000              add [eax],al
00032B7C  0000              add [eax],al
00032B7E  0000              add [eax],al
00032B80  0000              add [eax],al
00032B82  0000              add [eax],al
00032B84  0000              add [eax],al
00032B86  0000              add [eax],al
00032B88  0000              add [eax],al
00032B8A  0000              add [eax],al
00032B8C  0000              add [eax],al
00032B8E  0000              add [eax],al
00032B90  0000              add [eax],al
00032B92  0000              add [eax],al
00032B94  0000              add [eax],al
00032B96  0000              add [eax],al
00032B98  0000              add [eax],al
00032B9A  0000              add [eax],al
00032B9C  0000              add [eax],al
00032B9E  0000              add [eax],al
00032BA0  0000              add [eax],al
00032BA2  0000              add [eax],al
00032BA4  0000              add [eax],al
00032BA6  0000              add [eax],al
00032BA8  0000              add [eax],al
00032BAA  0000              add [eax],al
00032BAC  0000              add [eax],al
00032BAE  0000              add [eax],al
00032BB0  0000              add [eax],al
00032BB2  0000              add [eax],al
00032BB4  0000              add [eax],al
00032BB6  0000              add [eax],al
00032BB8  0000              add [eax],al
00032BBA  0000              add [eax],al
00032BBC  0000              add [eax],al
00032BBE  0000              add [eax],al
00032BC0  0000              add [eax],al
00032BC2  0000              add [eax],al
00032BC4  0000              add [eax],al
00032BC6  0000              add [eax],al
00032BC8  0000              add [eax],al
00032BCA  0000              add [eax],al
00032BCC  0000              add [eax],al
00032BCE  0000              add [eax],al
00032BD0  0000              add [eax],al
00032BD2  0000              add [eax],al
00032BD4  0000              add [eax],al
00032BD6  0000              add [eax],al
00032BD8  0000              add [eax],al
00032BDA  0000              add [eax],al
00032BDC  0000              add [eax],al
00032BDE  0000              add [eax],al
00032BE0  0000              add [eax],al
00032BE2  0000              add [eax],al
00032BE4  0000              add [eax],al
00032BE6  0000              add [eax],al
00032BE8  0000              add [eax],al
00032BEA  0000              add [eax],al
00032BEC  0000              add [eax],al
00032BEE  0000              add [eax],al
00032BF0  0000              add [eax],al
00032BF2  0000              add [eax],al
00032BF4  0000              add [eax],al
00032BF6  0000              add [eax],al
00032BF8  0000              add [eax],al
00032BFA  0000              add [eax],al
00032BFC  0000              add [eax],al
00032BFE  0000              add [eax],al
00032C00  0000              add [eax],al
00032C02  0000              add [eax],al
00032C04  0000              add [eax],al
00032C06  0000              add [eax],al
00032C08  0000              add [eax],al
00032C0A  0000              add [eax],al
00032C0C  0000              add [eax],al
00032C0E  0000              add [eax],al
00032C10  0000              add [eax],al
00032C12  0000              add [eax],al
00032C14  0000              add [eax],al
00032C16  0000              add [eax],al
00032C18  0000              add [eax],al
00032C1A  0000              add [eax],al
00032C1C  0000              add [eax],al
00032C1E  0000              add [eax],al
00032C20  0000              add [eax],al
00032C22  0000              add [eax],al
00032C24  0000              add [eax],al
00032C26  0000              add [eax],al
00032C28  0000              add [eax],al
00032C2A  0000              add [eax],al
00032C2C  0000              add [eax],al
00032C2E  0000              add [eax],al
00032C30  0000              add [eax],al
00032C32  0000              add [eax],al
00032C34  0000              add [eax],al
00032C36  0000              add [eax],al
00032C38  0000              add [eax],al
00032C3A  0000              add [eax],al
00032C3C  0000              add [eax],al
00032C3E  0000              add [eax],al
00032C40  0000              add [eax],al
00032C42  0000              add [eax],al
00032C44  0000              add [eax],al
00032C46  0000              add [eax],al
00032C48  0000              add [eax],al
00032C4A  0000              add [eax],al
00032C4C  0000              add [eax],al
00032C4E  0000              add [eax],al
00032C50  0000              add [eax],al
00032C52  0000              add [eax],al
00032C54  0000              add [eax],al
00032C56  0000              add [eax],al
00032C58  0000              add [eax],al
00032C5A  0000              add [eax],al
00032C5C  0000              add [eax],al
00032C5E  0000              add [eax],al
00032C60  0000              add [eax],al
00032C62  0000              add [eax],al
00032C64  0000              add [eax],al
00032C66  0000              add [eax],al
00032C68  0000              add [eax],al
00032C6A  0000              add [eax],al
00032C6C  0000              add [eax],al
00032C6E  0000              add [eax],al
00032C70  0000              add [eax],al
00032C72  0000              add [eax],al
00032C74  0000              add [eax],al
00032C76  0000              add [eax],al
00032C78  0000              add [eax],al
00032C7A  0000              add [eax],al
00032C7C  0000              add [eax],al
00032C7E  0000              add [eax],al
00032C80  0000              add [eax],al
00032C82  0000              add [eax],al
00032C84  0000              add [eax],al
00032C86  0000              add [eax],al
00032C88  0000              add [eax],al
00032C8A  0000              add [eax],al
00032C8C  0000              add [eax],al
00032C8E  0000              add [eax],al
00032C90  0000              add [eax],al
00032C92  0000              add [eax],al
00032C94  0000              add [eax],al
00032C96  0000              add [eax],al
00032C98  0000              add [eax],al
00032C9A  0000              add [eax],al
00032C9C  0000              add [eax],al
00032C9E  0000              add [eax],al
00032CA0  0000              add [eax],al
00032CA2  0000              add [eax],al
00032CA4  0000              add [eax],al
00032CA6  0000              add [eax],al
00032CA8  0000              add [eax],al
00032CAA  0000              add [eax],al
00032CAC  0000              add [eax],al
00032CAE  0000              add [eax],al
00032CB0  0000              add [eax],al
00032CB2  0000              add [eax],al
00032CB4  0000              add [eax],al
00032CB6  0000              add [eax],al
00032CB8  0000              add [eax],al
00032CBA  0000              add [eax],al
00032CBC  0000              add [eax],al
00032CBE  0000              add [eax],al
00032CC0  0000              add [eax],al
00032CC2  0000              add [eax],al
00032CC4  0000              add [eax],al
00032CC6  0000              add [eax],al
00032CC8  0000              add [eax],al
00032CCA  0000              add [eax],al
00032CCC  0000              add [eax],al
00032CCE  0000              add [eax],al
00032CD0  0000              add [eax],al
00032CD2  0000              add [eax],al
00032CD4  0000              add [eax],al
00032CD6  0000              add [eax],al
00032CD8  0000              add [eax],al
00032CDA  0000              add [eax],al
00032CDC  0000              add [eax],al
00032CDE  0000              add [eax],al
00032CE0  0000              add [eax],al
00032CE2  0000              add [eax],al
00032CE4  0000              add [eax],al
00032CE6  0000              add [eax],al
00032CE8  0000              add [eax],al
00032CEA  0000              add [eax],al
00032CEC  0000              add [eax],al
00032CEE  0000              add [eax],al
00032CF0  0000              add [eax],al
00032CF2  0000              add [eax],al
00032CF4  0000              add [eax],al
00032CF6  0000              add [eax],al
00032CF8  0000              add [eax],al
00032CFA  0000              add [eax],al
00032CFC  0000              add [eax],al
00032CFE  0000              add [eax],al
00032D00  0000              add [eax],al
00032D02  0000              add [eax],al
00032D04  0000              add [eax],al
00032D06  0000              add [eax],al
00032D08  0000              add [eax],al
00032D0A  0000              add [eax],al
00032D0C  0000              add [eax],al
00032D0E  0000              add [eax],al
00032D10  0000              add [eax],al
00032D12  0000              add [eax],al
00032D14  0000              add [eax],al
00032D16  0000              add [eax],al
00032D18  0000              add [eax],al
00032D1A  0000              add [eax],al
00032D1C  0000              add [eax],al
00032D1E  0000              add [eax],al
00032D20  0000              add [eax],al
00032D22  0000              add [eax],al
00032D24  0000              add [eax],al
00032D26  0000              add [eax],al
00032D28  0000              add [eax],al
00032D2A  0000              add [eax],al
00032D2C  0000              add [eax],al
00032D2E  0000              add [eax],al
00032D30  0000              add [eax],al
00032D32  0000              add [eax],al
00032D34  0000              add [eax],al
00032D36  0000              add [eax],al
00032D38  0000              add [eax],al
00032D3A  0000              add [eax],al
00032D3C  0000              add [eax],al
00032D3E  0000              add [eax],al
00032D40  0000              add [eax],al
00032D42  0000              add [eax],al
00032D44  0000              add [eax],al
00032D46  0000              add [eax],al
00032D48  0000              add [eax],al
00032D4A  0000              add [eax],al
00032D4C  0000              add [eax],al
00032D4E  0000              add [eax],al
00032D50  0000              add [eax],al
00032D52  0000              add [eax],al
00032D54  0000              add [eax],al
00032D56  0000              add [eax],al
00032D58  0000              add [eax],al
00032D5A  0000              add [eax],al
00032D5C  0000              add [eax],al
00032D5E  0000              add [eax],al
00032D60  0000              add [eax],al
00032D62  0000              add [eax],al
00032D64  0000              add [eax],al
00032D66  0000              add [eax],al
00032D68  0000              add [eax],al
00032D6A  0000              add [eax],al
00032D6C  0000              add [eax],al
00032D6E  0000              add [eax],al
00032D70  0000              add [eax],al
00032D72  0000              add [eax],al
00032D74  0000              add [eax],al
00032D76  0000              add [eax],al
00032D78  0000              add [eax],al
00032D7A  0000              add [eax],al
00032D7C  0000              add [eax],al
00032D7E  0000              add [eax],al
00032D80  0000              add [eax],al
00032D82  0000              add [eax],al
00032D84  0000              add [eax],al
00032D86  0000              add [eax],al
00032D88  0000              add [eax],al
00032D8A  0000              add [eax],al
00032D8C  0000              add [eax],al
00032D8E  0000              add [eax],al
00032D90  0000              add [eax],al
00032D92  0000              add [eax],al
00032D94  0000              add [eax],al
00032D96  0000              add [eax],al
00032D98  0000              add [eax],al
00032D9A  0000              add [eax],al
00032D9C  0000              add [eax],al
00032D9E  0000              add [eax],al
00032DA0  0000              add [eax],al
00032DA2  0000              add [eax],al
00032DA4  0000              add [eax],al
00032DA6  0000              add [eax],al
00032DA8  0000              add [eax],al
00032DAA  0000              add [eax],al
00032DAC  0000              add [eax],al
00032DAE  0000              add [eax],al
00032DB0  0000              add [eax],al
00032DB2  0000              add [eax],al
00032DB4  0000              add [eax],al
00032DB6  0000              add [eax],al
00032DB8  0000              add [eax],al
00032DBA  0000              add [eax],al
00032DBC  0000              add [eax],al
00032DBE  0000              add [eax],al
00032DC0  0000              add [eax],al
00032DC2  0000              add [eax],al
00032DC4  0000              add [eax],al
00032DC6  0000              add [eax],al
00032DC8  0000              add [eax],al
00032DCA  0000              add [eax],al
00032DCC  0000              add [eax],al
00032DCE  0000              add [eax],al
00032DD0  0000              add [eax],al
00032DD2  0000              add [eax],al
00032DD4  0000              add [eax],al
00032DD6  0000              add [eax],al
00032DD8  0000              add [eax],al
00032DDA  0000              add [eax],al
00032DDC  0000              add [eax],al
00032DDE  0000              add [eax],al
00032DE0  0000              add [eax],al
00032DE2  0000              add [eax],al
00032DE4  0000              add [eax],al
00032DE6  0000              add [eax],al
00032DE8  0000              add [eax],al
00032DEA  0000              add [eax],al
00032DEC  0000              add [eax],al
00032DEE  0000              add [eax],al
00032DF0  0000              add [eax],al
00032DF2  0000              add [eax],al
00032DF4  0000              add [eax],al
00032DF6  0000              add [eax],al
00032DF8  0000              add [eax],al
00032DFA  0000              add [eax],al
00032DFC  0000              add [eax],al
00032DFE  0000              add [eax],al
00032E00  0000              add [eax],al
00032E02  0000              add [eax],al
00032E04  0000              add [eax],al
00032E06  0000              add [eax],al
00032E08  0000              add [eax],al
00032E0A  0000              add [eax],al
00032E0C  0000              add [eax],al
00032E0E  0000              add [eax],al
00032E10  0000              add [eax],al
00032E12  0000              add [eax],al
00032E14  0000              add [eax],al
00032E16  0000              add [eax],al
00032E18  0000              add [eax],al
00032E1A  0000              add [eax],al
00032E1C  0000              add [eax],al
00032E1E  0000              add [eax],al
00032E20  0000              add [eax],al
00032E22  0000              add [eax],al
00032E24  0000              add [eax],al
00032E26  0000              add [eax],al
00032E28  0000              add [eax],al
00032E2A  0000              add [eax],al
00032E2C  0000              add [eax],al
00032E2E  0000              add [eax],al
00032E30  0000              add [eax],al
00032E32  0000              add [eax],al
00032E34  0000              add [eax],al
00032E36  0000              add [eax],al
00032E38  0000              add [eax],al
00032E3A  0000              add [eax],al
00032E3C  0000              add [eax],al
00032E3E  0000              add [eax],al
00032E40  0000              add [eax],al
00032E42  0000              add [eax],al
00032E44  0000              add [eax],al
00032E46  0000              add [eax],al
00032E48  0000              add [eax],al
00032E4A  0000              add [eax],al
00032E4C  0000              add [eax],al
00032E4E  0000              add [eax],al
00032E50  0000              add [eax],al
00032E52  0000              add [eax],al
00032E54  0000              add [eax],al
00032E56  0000              add [eax],al
00032E58  0000              add [eax],al
00032E5A  0000              add [eax],al
00032E5C  0000              add [eax],al
00032E5E  0000              add [eax],al
00032E60  0000              add [eax],al
00032E62  0000              add [eax],al
00032E64  0000              add [eax],al
00032E66  0000              add [eax],al
00032E68  0000              add [eax],al
00032E6A  0000              add [eax],al
00032E6C  0000              add [eax],al
00032E6E  0000              add [eax],al
00032E70  0000              add [eax],al
00032E72  0000              add [eax],al
00032E74  0000              add [eax],al
00032E76  0000              add [eax],al
00032E78  0000              add [eax],al
00032E7A  0000              add [eax],al
00032E7C  0000              add [eax],al
00032E7E  0000              add [eax],al
00032E80  0000              add [eax],al
00032E82  0000              add [eax],al
00032E84  0000              add [eax],al
00032E86  0000              add [eax],al
00032E88  0000              add [eax],al
00032E8A  0000              add [eax],al
00032E8C  0000              add [eax],al
00032E8E  0000              add [eax],al
00032E90  0000              add [eax],al
00032E92  0000              add [eax],al
00032E94  0000              add [eax],al
00032E96  0000              add [eax],al
00032E98  0000              add [eax],al
00032E9A  0000              add [eax],al
00032E9C  0000              add [eax],al
00032E9E  0000              add [eax],al
00032EA0  0000              add [eax],al
00032EA2  0000              add [eax],al
00032EA4  0000              add [eax],al
00032EA6  0000              add [eax],al
00032EA8  0000              add [eax],al
00032EAA  0000              add [eax],al
00032EAC  0000              add [eax],al
00032EAE  0000              add [eax],al
00032EB0  0000              add [eax],al
00032EB2  0000              add [eax],al
00032EB4  0000              add [eax],al
00032EB6  0000              add [eax],al
00032EB8  0000              add [eax],al
00032EBA  0000              add [eax],al
00032EBC  0000              add [eax],al
00032EBE  0000              add [eax],al
00032EC0  0000              add [eax],al
00032EC2  0000              add [eax],al
00032EC4  0000              add [eax],al
00032EC6  0000              add [eax],al
00032EC8  0000              add [eax],al
00032ECA  0000              add [eax],al
00032ECC  0000              add [eax],al
00032ECE  0000              add [eax],al
00032ED0  0000              add [eax],al
00032ED2  0000              add [eax],al
00032ED4  0000              add [eax],al
00032ED6  0000              add [eax],al
00032ED8  0000              add [eax],al
00032EDA  0000              add [eax],al
00032EDC  0000              add [eax],al
00032EDE  0000              add [eax],al
00032EE0  0000              add [eax],al
00032EE2  0000              add [eax],al
00032EE4  0000              add [eax],al
00032EE6  0000              add [eax],al
00032EE8  0000              add [eax],al
00032EEA  0000              add [eax],al
00032EEC  0000              add [eax],al
00032EEE  0000              add [eax],al
00032EF0  0000              add [eax],al
00032EF2  0000              add [eax],al
00032EF4  0000              add [eax],al
00032EF6  0000              add [eax],al
00032EF8  0000              add [eax],al
00032EFA  0000              add [eax],al
00032EFC  0000              add [eax],al
00032EFE  0000              add [eax],al
00032F00  0000              add [eax],al
00032F02  0000              add [eax],al
00032F04  0000              add [eax],al
00032F06  0000              add [eax],al
00032F08  0000              add [eax],al
00032F0A  0000              add [eax],al
00032F0C  0000              add [eax],al
00032F0E  0000              add [eax],al
00032F10  0000              add [eax],al
00032F12  0000              add [eax],al
00032F14  0000              add [eax],al
00032F16  0000              add [eax],al
00032F18  0000              add [eax],al
00032F1A  0000              add [eax],al
00032F1C  0000              add [eax],al
00032F1E  0000              add [eax],al
00032F20  0000              add [eax],al
00032F22  0000              add [eax],al
00032F24  0000              add [eax],al
00032F26  0000              add [eax],al
00032F28  0000              add [eax],al
00032F2A  0000              add [eax],al
00032F2C  0000              add [eax],al
00032F2E  0000              add [eax],al
00032F30  0000              add [eax],al
00032F32  0000              add [eax],al
00032F34  0000              add [eax],al
00032F36  0000              add [eax],al
00032F38  0000              add [eax],al
00032F3A  0000              add [eax],al
00032F3C  0000              add [eax],al
00032F3E  0000              add [eax],al
00032F40  0000              add [eax],al
00032F42  0000              add [eax],al
00032F44  0000              add [eax],al
00032F46  0000              add [eax],al
00032F48  0000              add [eax],al
00032F4A  0000              add [eax],al
00032F4C  0000              add [eax],al
00032F4E  0000              add [eax],al
00032F50  0000              add [eax],al
00032F52  0000              add [eax],al
00032F54  0000              add [eax],al
00032F56  0000              add [eax],al
00032F58  0000              add [eax],al
00032F5A  0000              add [eax],al
00032F5C  0000              add [eax],al
00032F5E  0000              add [eax],al
00032F60  0000              add [eax],al
00032F62  0000              add [eax],al
00032F64  0000              add [eax],al
00032F66  0000              add [eax],al
00032F68  0000              add [eax],al
00032F6A  0000              add [eax],al
00032F6C  0000              add [eax],al
00032F6E  0000              add [eax],al
00032F70  0000              add [eax],al
00032F72  0000              add [eax],al
00032F74  0000              add [eax],al
00032F76  0000              add [eax],al
00032F78  0000              add [eax],al
00032F7A  0000              add [eax],al
00032F7C  0000              add [eax],al
00032F7E  0000              add [eax],al
00032F80  0000              add [eax],al
00032F82  0000              add [eax],al
00032F84  0000              add [eax],al
00032F86  0000              add [eax],al
00032F88  0000              add [eax],al
00032F8A  0000              add [eax],al
00032F8C  0000              add [eax],al
00032F8E  0000              add [eax],al
00032F90  0000              add [eax],al
00032F92  0000              add [eax],al
00032F94  0000              add [eax],al
00032F96  0000              add [eax],al
00032F98  0000              add [eax],al
00032F9A  0000              add [eax],al
00032F9C  0000              add [eax],al
00032F9E  0000              add [eax],al
00032FA0  0000              add [eax],al
00032FA2  0000              add [eax],al
00032FA4  0000              add [eax],al
00032FA6  0000              add [eax],al
00032FA8  0000              add [eax],al
00032FAA  0000              add [eax],al
00032FAC  0000              add [eax],al
00032FAE  0000              add [eax],al
00032FB0  0000              add [eax],al
00032FB2  0000              add [eax],al
00032FB4  0000              add [eax],al
00032FB6  0000              add [eax],al
00032FB8  0000              add [eax],al
00032FBA  0000              add [eax],al
00032FBC  0000              add [eax],al
00032FBE  0000              add [eax],al
00032FC0  0000              add [eax],al
00032FC2  0000              add [eax],al
00032FC4  0000              add [eax],al
00032FC6  0000              add [eax],al
00032FC8  0000              add [eax],al
00032FCA  0000              add [eax],al
00032FCC  0000              add [eax],al
00032FCE  0000              add [eax],al
00032FD0  0000              add [eax],al
00032FD2  0000              add [eax],al
00032FD4  0000              add [eax],al
00032FD6  0000              add [eax],al
00032FD8  0000              add [eax],al
00032FDA  0000              add [eax],al
00032FDC  0000              add [eax],al
00032FDE  0000              add [eax],al
00032FE0  0000              add [eax],al
00032FE2  0000              add [eax],al
00032FE4  0000              add [eax],al
00032FE6  0000              add [eax],al
00032FE8  0000              add [eax],al
00032FEA  0000              add [eax],al
00032FEC  0000              add [eax],al
00032FEE  0000              add [eax],al
00032FF0  0000              add [eax],al
00032FF2  0000              add [eax],al
00032FF4  0000              add [eax],al
00032FF6  0000              add [eax],al
00032FF8  0000              add [eax],al
00032FFA  0000              add [eax],al
00032FFC  0000              add [eax],al
00032FFE  0000              add [eax],al
00033000  0000              add [eax],al
00033002  0000              add [eax],al
00033004  0000              add [eax],al
00033006  0000              add [eax],al
00033008  0000              add [eax],al
0003300A  0000              add [eax],al
0003300C  0000              add [eax],al
0003300E  0000              add [eax],al
00033010  0000              add [eax],al
00033012  0000              add [eax],al
00033014  0000              add [eax],al
00033016  0000              add [eax],al
00033018  0000              add [eax],al
0003301A  0000              add [eax],al
0003301C  0000              add [eax],al
0003301E  0000              add [eax],al
00033020  BA200300CB        mov edx,0xcb000320
00033025  2003              and [ebx],al
00033027  00D8              add al,bl
00033029  2003              and [ebx],al
0003302B  00EA              add dl,ch
0003302D  2003              and [ebx],al
0003302F  00F9              add cl,bh
00033031  2003              and [ebx],al
00033033  0006              add [esi],al
00033035  2103              and [ebx],eax
00033037  0020              add [eax],ah
00033039  2103              and [ebx],eax
0003303B  004821            add [eax+0x21],cl
0003303E  0300              add eax,[eax]
00033040  7721              ja 0x33063
00033042  0300              add eax,[eax]
00033044  8821              mov [ecx],ah
00033046  0300              add eax,[eax]
00033048  B421              mov ah,0x21
0003304A  0300              add eax,[eax]
0003304C  C3                ret
0003304D  2103              and [ebx],eax
0003304F  00DB              add bl,bl
00033051  2103              and [ebx],eax
00033053  00F3              add bl,dh
00033055  2103              and [ebx],eax
00033057  000A              add [edx],cl
00033059  2203              and al,[ebx]
0003305B  001C22            add [edx],bl
0003305E  0300              add eax,[eax]
00033060  40                inc eax
00033061  2203              and al,[ebx]
00033063  006E22            add [esi+0x22],ch
00033066  0300              add eax,[eax]
00033068  82                db 0x82
00033069  2203              and al,[ebx]
0003306B  00942203004743    add [edx+0x43470003],dl
00033072  43                inc ebx
00033073  3A20              cmp ah,[eax]
00033075  285562            sub [ebp+0x62],dl
00033078  756E              jnz 0x330e8
0003307A  7475              jz 0x330f1
0003307C  2031              and [ecx],dh
0003307E  312E              xor [esi],ebp
00033080  332E              xor ebp,[esi]
00033082  302D31756275      xor [dword 0x75627531],ch
00033088  6E                outsb
00033089  7475              jz 0x33100
0003308B  317E32            xor [esi+0x32],edi
0003308E  322E              xor ch,[esi]
00033090  303429            xor [ecx+ebp],dh
00033093  2031              and [ecx],dh
00033095  312E              xor [esi],ebp
00033097  332E              xor ebp,[esi]
00033099  3000              xor [eax],al
0003309B  002E              add [esi],ch
0003309D  7368              jnc 0x33107
0003309F  7374              jnc 0x33115
000330A1  7274              jc 0x33117
000330A3  61                popa
000330A4  6200              bound eax,[eax]
000330A6  2E7465            cs jz 0x3310e
000330A9  7874              js 0x3311f
000330AB  002E              add [esi],ch
000330AD  726F              jc 0x3311e
000330AF  6461              fs popa
000330B1  7461              jz 0x33114
000330B3  002E              add [esi],ch
000330B5  65685F667261      gs push dword 0x6172665f
000330BB  6D                insd
000330BC  65002E            add [gs:esi],ch
000330BF  676F              a16 outsd
000330C1  742E              jz 0x330f1
000330C3  706C              jo 0x33131
000330C5  7400              jz 0x330c7
000330C7  2E6461            fs popa
000330CA  7461              jz 0x3312d
000330CC  002E              add [esi],ch
000330CE  627373            bound esi,[ebx+0x73]
000330D1  002E              add [esi],ch
000330D3  636F6D            arpl [edi+0x6d],bp
000330D6  6D                insd
000330D7  656E              gs outsb
000330D9  7400              jz 0x330db
000330DB  0000              add [eax],al
000330DD  0000              add [eax],al
000330DF  0000              add [eax],al
000330E1  0000              add [eax],al
000330E3  0000              add [eax],al
000330E5  0000              add [eax],al
000330E7  0000              add [eax],al
000330E9  0000              add [eax],al
000330EB  0000              add [eax],al
000330ED  0000              add [eax],al
000330EF  0000              add [eax],al
000330F1  0000              add [eax],al
000330F3  0000              add [eax],al
000330F5  0000              add [eax],al
000330F7  0000              add [eax],al
000330F9  0000              add [eax],al
000330FB  0000              add [eax],al
000330FD  0000              add [eax],al
000330FF  0000              add [eax],al
00033101  0000              add [eax],al
00033103  000B              add [ebx],cl
00033105  0000              add [eax],al
00033107  0001              add [ecx],al
00033109  0000              add [eax],al
0003310B  0006              add [esi],al
0003310D  0000              add [eax],al
0003310F  0000              add [eax],al
00033111  0403              add al,0x3
00033113  0000              add [eax],al
00033115  0400              add al,0x0
00033117  007C0D00          add [ebp+ecx+0x0],bh
0003311B  0000              add [eax],al
0003311D  0000              add [eax],al
0003311F  0000              add [eax],al
00033121  0000              add [eax],al
00033123  0010              add [eax],dl
00033125  0000              add [eax],al
00033127  0000              add [eax],al
00033129  0000              add [eax],al
0003312B  0011              add [ecx],dl
0003312D  0000              add [eax],al
0003312F  0001              add [ecx],al
00033131  0000              add [eax],al
00033133  0002              add [edx],al
00033135  0000              add [eax],al
00033137  0000              add [eax],al
00033139  2003              and [ebx],al
0003313B  0000              add [eax],al
0003313D  2000              and [eax],al
0003313F  00B602000000      add [esi+0x2],dh
00033145  0000              add [eax],al
00033147  0000              add [eax],al
00033149  0000              add [eax],al
0003314B  000400            add [eax+eax],al
0003314E  0000              add [eax],al
00033150  0000              add [eax],al
00033152  0000              add [eax],al
00033154  1900              sbb [eax],eax
00033156  0000              add [eax],al
00033158  0100              add [eax],eax
0003315A  0000              add [eax],al
0003315C  0200              add al,[eax]
0003315E  0000              add [eax],al
00033160  B8220300B8        mov eax,0xb8000322
00033165  2200              and al,[eax]
00033167  0000              add [eax],al
00033169  0200              add al,[eax]
0003316B  0000              add [eax],al
0003316D  0000              add [eax],al
0003316F  0000              add [eax],al
00033171  0000              add [eax],al
00033173  000400            add [eax+eax],al
00033176  0000              add [eax],al
00033178  0000              add [eax],al
0003317A  0000              add [eax],al
0003317C  2300              and eax,[eax]
0003317E  0000              add [eax],al
00033180  0100              add [eax],eax
00033182  0000              add [eax],al
00033184  0300              add eax,[eax]
00033186  0000              add [eax],al
00033188  004003            add [eax+0x3],al
0003318B  0000              add [eax],al
0003318D  3000              xor [eax],al
0003318F  000C00            add [eax+eax],cl
00033192  0000              add [eax],al
00033194  0000              add [eax],al
00033196  0000              add [eax],al
00033198  0000              add [eax],al
0003319A  0000              add [eax],al
0003319C  0400              add al,0x0
0003319E  0000              add [eax],al
000331A0  0400              add al,0x0
000331A2  0000              add [eax],al
000331A4  2C00              sub al,0x0
000331A6  0000              add [eax],al
000331A8  0100              add [eax],eax
000331AA  0000              add [eax],al
000331AC  0300              add eax,[eax]
000331AE  0000              add [eax],al
000331B0  204003            and [eax+0x3],al
000331B3  0020              add [eax],ah
000331B5  3000              xor [eax],al
000331B7  005000            add [eax+0x0],dl
000331BA  0000              add [eax],al
000331BC  0000              add [eax],al
000331BE  0000              add [eax],al
000331C0  0000              add [eax],al
000331C2  0000              add [eax],al
000331C4  2000              and [eax],al
000331C6  0000              add [eax],al
000331C8  0000              add [eax],al
000331CA  0000              add [eax],al
000331CC  3200              xor al,[eax]
000331CE  0000              add [eax],al
000331D0  0800              or [eax],al
000331D2  0000              add [eax],al
000331D4  0300              add eax,[eax]
000331D6  0000              add [eax],al
000331D8  80400300          add byte [eax+0x3],0x0
000331DC  7030              jo 0x3320e
000331DE  0000              add [eax],al
000331E0  40                inc eax
000331E1  95                xchg eax,ebp
000331E2  0000              add [eax],al
000331E4  0000              add [eax],al
000331E6  0000              add [eax],al
000331E8  0000              add [eax],al
000331EA  0000              add [eax],al
000331EC  2000              and [eax],al
000331EE  0000              add [eax],al
000331F0  0000              add [eax],al
000331F2  0000              add [eax],al
000331F4  37                aaa
000331F5  0000              add [eax],al
000331F7  0001              add [ecx],al
000331F9  0000              add [eax],al
000331FB  0030              add [eax],dh
000331FD  0000              add [eax],al
000331FF  0000              add [eax],al
00033201  0000              add [eax],al
00033203  007030            add [eax+0x30],dh
00033206  0000              add [eax],al
00033208  2B00              sub eax,[eax]
0003320A  0000              add [eax],al
0003320C  0000              add [eax],al
0003320E  0000              add [eax],al
00033210  0000              add [eax],al
00033212  0000              add [eax],al
00033214  0100              add [eax],eax
00033216  0000              add [eax],al
00033218  0100              add [eax],eax
0003321A  0000              add [eax],al
0003321C  0100              add [eax],eax
0003321E  0000              add [eax],al
00033220  0300              add eax,[eax]
00033222  0000              add [eax],al
00033224  0000              add [eax],al
00033226  0000              add [eax],al
00033228  0000              add [eax],al
0003322A  0000              add [eax],al
0003322C  9B3000            wait xor [eax],al
0003322F  004000            add [eax+0x0],al
00033232  0000              add [eax],al
00033234  0000              add [eax],al
00033236  0000              add [eax],al
00033238  0000              add [eax],al
0003323A  0000              add [eax],al
0003323C  0100              add [eax],eax
0003323E  0000              add [eax],al
00033240  0000              add [eax],al
00033242  0000              add [eax],al
