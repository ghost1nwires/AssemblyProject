; Program Description: Individual Assignment
; Author: hanifah hadirah bt abd manan (1180480)
; Creation Date: august 2020
; Revisions: final
; Date:        august 2020      Modified by: hanhan


INCLUDE irvine32.inc

.data

num1 BYTE ?
num2 BYTE 0
num3 BYTE ?

wrd1 BYTE "           **   Welcome to Assembly Language Program   ** ", 0dh, 0ah, 0ah
wrd2 BYTE "1. Chapter 6", 0dh, 0ah
wrd3 BYTE "2. Chapter 7", 0dh, 0ah 
wrd4 BYTE "3. Exit ", 0dh, 0ah, 0ah
wrd5 BYTE " Choose the chapter: ",  0


;mychapter6

wrd6  BYTE "           **  CHAPTER 6 : Conditional Processing  ** " ,0dh, 0ah, 0ah
wrd7  BYTE "1. Boolean and Comparison Instructions ", 0dh, 0ah
wrd8  BYTE "2. Conditional Jumps ", 0dh, 0ah
wrd9  BYTE "3. Conditional Loop Instructions" ,0dh, 0ah
wrd10  BYTE "4. Conditional Structures", 0dh, 0ah
wrd11  BYTE "5. Conditional Flow Directives", 0dh, 0ah
wrd12  BYTE "6. Main Menu", 0dh, 0ah, 0ah
wrd13  BYTE " Enter number from menu: ", 0


         
;mychapter7

wrd14   BYTE 13, 0ah, "           **  CHAPTER 7 : Integer Arithmetic  **      ",0dh, 0ah, 0ah
wrd15   BYTE "1. Shift and Rotate Instruction", 0dh, 0ah
wrd16   BYTE "2. Shift and Rotate Applications", 0dh, 0ah
wrd17   BYTE "3. Multiplication and Division Instruction", 0dh, 0ah
wrd18   BYTE "4. Main Menu", 0dh, 0ah, 0ah
wrd19   BYTE " Enter a number from menu: ", 0

wrd20   BYTE " Exit system ", 0

;mychapter6.1
wrd21     BYTE "    ** 6.1 Boolean and Comparison Instructions **" ,0dh, 0ah, 0ah

wrd23  BYTE "1. AND Instruction ", 0dh, 0ah
wrd24  BYTE "2. OR Instruction" ,0dh, 0ah
wrd25  BYTE "3. XOR Instruction", 0dh, 0ah
wrd26  BYTE "4. NOT Instruction", 0dh, 0ah
wrd27  BYTE "5. TEST Instruction ", 0dh, 0ah
wrd28  BYTE "6. CMP Instruction ", 0dh, 0ah
wrd29  BYTE "7. Main Menu ", 0dh, 0ah,0ah
wrd30  BYTE " Enter number from menu: ",  0

;mychapter6.2
wrd31  BYTE "    ** 6.2 Conditional Jumps **" ,0dh, 0ah, 0ah
wrd32  BYTE "1. Specific flag ", 0dh, 0ah
wrd33  BYTE "2. Equality ", 0dh, 0ah
wrd34  BYTE "3. Unsigned comparisons" ,0dh, 0ah
wrd35  BYTE "4. Signed comparisons", 0dh, 0ah
wrd36  BYTE "5. Main Menu", 0dh, 0ah, 0ah
wrd37  BYTE " Enter number from menu: ",  0


;mychapter6.3
wrd38  BYTE "    ** 6.3 Conditional Loop Instructions **" ,0dh, 0ah, 0ah
wrd39  BYTE "1. LOOPZ  ", 0dh, 0ah
wrd40  BYTE "2. LOOPNZ  ", 0dh, 0ah
wrd41  BYTE "3. Main Menu" ,0dh, 0ah, 0ah
wrd42  BYTE " Enter number from menu: ", 0ah, 0

;mychapter6.4
wrd43  BYTE "    ** 6.4 Conditional Structures **" ,0dh, 0ah, 0ah
wrd44  BYTE "1. Block-Structured IF Statements  ", 0dh, 0ah
wrd45  BYTE "2. Compound Expressions with AND  ", 0dh, 0ah
wrd46  BYTE "3. Compound Expressions with OR" ,0dh, 0ah
wrd47  BYTE "4. WHILE Loops" ,0dh, 0ah
wrd48  BYTE "5. Main Menu" ,0dh, 0ah, 0ah
wrd49  BYTE " Enter number from menu: ", 0ah, 0

;mychapter6.5
wrd50  BYTE "    ** 6.5 Conditional Flow Directives // Creating IF statements **" ,0dh, 0ah
wrd51  BYTE "1.  Runtime Expressions  ", 0dh, 0ah
wrd52  BYTE "2.  Relational and Logical" ,0dh, 0ah
wrd54  BYTE "3. .REPEAT Directive" ,0dh, 0ah
wrd55  BYTE "4. .WHILE Directive" ,0dh, 0ah
wrd56  BYTE "5.  Main Menu" ,0dh, 0ah, 0ah
wrd57  BYTE " Enter number from menu: ",  0

;mychapter7.1
wrd58  BYTE "    ** 7.1 Shift and Rotate Instruction **" ,0dh, 0ah, 0ah
wrd59  BYTE "1. SHL Instruction   ", 0dh, 0ah
wrd60  BYTE "2. SHR Instruction   ", 0dh, 0ah
wrd61  BYTE "3. SAL and SAR Instruction " ,0dh, 0ah
wrd62  BYTE "4. ROL Instruction " ,0dh, 0ah
wrd63  BYTE "5. ROR Instruction " ,0dh, 0ah
wrd64  BYTE "6. RCL and RCR Instruction " ,0dh, 0ah
wr1    BYTE "7. SHLD/SHRD Instruction " ,0dh, 0ah
wrd65  BYTE "8. Main Menu" ,0dh, 0ah, 0ah
wrd66  BYTE " Enter number from menu: ", 0ah, 0

;mychapter7.2
wrd67  BYTE "    ** 7.2 Shift and Rotate Applications **" ,0dh, 0ah, 0ah
wrd68  BYTE "1. Binary Mutiplication   ", 0dh, 0ah
wrd69  BYTE "2. Isolating a bit string   ", 0dh, 0ah
wrd70  BYTE "3. Main Menu" ,0dh, 0ah
wrd80  BYTE " Enter number from menu: ", 0, 0ah

;mychapter7.3
wrd71  BYTE "    ** 7.3 Multiplication and Division Instruction **" ,0dh, 0ah, 0ah
wrd72  BYTE "1. MUL Instruction   ", 0dh, 0ah
wrd73  BYTE "2. IMUL Instruction   ", 0dh, 0ah
wrd74  BYTE "3. DIV Instruction   ", 0dh, 0ah
wrd75  BYTE "4. Signed Integer Division   ", 0dh, 0ah
wrd76  BYTE "5. CBW, CWD, CDQ Instruction   ", 0dh, 0ah
wrd77  BYTE "6. IDIV Instruction   ", 0dh, 0ah
str77  BYTE "7. Implement arithmetic expression  ", 0dh, 0ah
wrd78  BYTE "8. Main Menu   ", 0dh, 0ah, 0ah
wrd79  BYTE " Enter number from menu: ", 0ah, 0

;mychapter6.1.1 dan anak
val1 DWORD 00000011b
val2 DWORD 00000001b
val3 DWORD 0000b
val5 DWORD 01100011b
finalVal DWORD ?
disp1  BYTE "    AND insruction : val1 = 0000 0011  val2 = 0000 0001 " ,0dh, 0ah, 0ah, 0
wrd81  BYTE "    ** 6.1.1 AND Instruction **" ,0dh, 0ah, 0ah
wrd82  BYTE "    Press 2 to Main Menu " ,0dh, 0ah
wrd84  BYTE "    Press 3 to Chapter 6" ,0dh, 0ah
wrd90  BYTE "    Press 4 to go Back" ,0dh, 0ah
wrd83 BYTE "    Enter a number",0dh, 0ah, 0ah, 0

wrd85  BYTE "    ** 6.1.2 OR Instruction **" ,0dh, 0ah, 0ah
wrd86  BYTE "    Press 2 to Main Menu " ,0dh, 0ah
wrd87  BYTE "    Press 3 to Main Chapter " ,0dh, 0ah
wrd89  BYTE "    Press 4 to go Back" ,0dh, 0ah
wrd88 BYTE "    Enter a number",0dh, 0ah,  0

wrd91  BYTE "    Bit 1 in val=01100011b is set " ,0dh, 0ah, 0
disp2  BYTE "    XOR insruction : val1 = 0000 0011  val3 = 0 " ,0dh, 0ah, 0
disp3  BYTE "    CMP AL = 4, AL, 5 (CF,ZF) " ,0dh, 0ah, 0

; mychapter 6.2 dan anak

wrd92 BYTE "Specific flag (JP) ax = 5, cmp = 5" ,0dh, 0ah, 0ah, 0
wrd93 BYTE "    Parity flag is  " ,0dh, 0ah, 0ah, 0
wrd94 BYTE "    Equality  and al,00001011b	cmp al,00001010b jne menu" ,0dh, 0ah, 0
wrd95 BYTE "    Unsigned Comparison  and al,00001011b	cmp al,00001010b jae menu" ,0dh, 0ah, 0
wrd96 BYTE "    Signed Comparison  and al,+45	cmp al,-2 jge menu" ,0dh, 0ah, 0

wrd97 BYTE "    LOOPZ  al, 5 sub bx, 5 " ,0dh, 0ah, 0ah, 0
wrd130 BYTE "    LOOPZ  al, 5 sub bx, 7 " ,0dh, 0ah, 0ah, 0

; mychapter 6.4 dan anak
wrd98 BYTE "    DL = 5, BL =5 Result : Both are same" ,0dh, 0ah, 0ah, 0
wrd99 BYTE "    DL = 5, BL =5 Result : Both are not same" ,0dh, 0ah, 0ah, 0
wrd100 BYTE "   Compare bl < cl && cl < dl jump to menu" ,0dh, 0ah, 0ah, 0
wrd101 BYTE "   Compare bl < cl OR cl < dl jump to menu" ,0dh, 0ah, 0ah, 0
kata22 BYTE "    loopz zero" ,0dh, 0ah, 0ah, 0
kata23 BYTE "    loopz not zero" ,0dh, 0ah, 0ah, 0
disp7  BYTE "    eax=5, ebx=2 while(eax > ebx) eax = eax - 1 jb go to menu; " ,0dh, 0ah,0ah, 0

; mychapter 6.5 dan anak
input BYTE "Enter a value :", 0
larger BYTE " The input value is greater than 50",0dh, 0ah, 0ah, 0
smaller BYTE " The input value is less than or equal to 50",0dh, 0ah, 0ah, 0
wrd127 BYTE "Relational : exp 1 != exp2 al=12, bl=9 jnbe go to menu ZF and CF ", 0

; mychapter 7.1 dan anak

wrd103 BYTE "       Multiplication of Binary : EAX, 50 * (2^6 -2^1) = 3100" ,0dh, 0ah, 0ah, 0
wrd106 BYTE "       AL = 2h, BL = 6h equals to ______ (*check CF) " ,0dh, 0ah, 0ah, 0
wrd107 BYTE "       IMUL -16 * 2 * 2  equals to -64 (*always check Overflow flag) " ,0dh, 0ah, 0ah, 0
wrd108 BYTE "       6 divide by 3 equals to ___ (EAX) " ,0dh, 0ah, 0ah, 0
wordVal22 SWORD 155
wrd109 BYTE "       -101 / 2 =  " ,0dh, 0ah, 0ah, 0
wrd110 BYTE "       IDIV 5000/-256 = EAX,-19 EDX, +136  " ,0dh, 0ah, 0ah, 0
cdqVal SDWORD 5000
cdqVal1 SDWORD -202
wrd120 BYTE "       CDQ result stored in EAX of -202 + 2  " ,0dh, 0ah, 0ah, 0
out1 DWORD 10
out2 DWORD -17
out4 DWORD ?
out3 DWORD 3
wrd112 BYTE "       ? = (var1 * -4) / (-var2 % var3);  " ,0dh, 0ah, 0ah
wrd113 BYTE "       ? = (10 * -4) / (-17 % 3);  " ,0dh, 0ah, 0ah,0


; Isolating binary : Day info is in bit 8-4; Month info is in bit 5-8; year info is in bit 9-15

yearMessage byte "The year is:", 0dh, 0ah, 0
monthMessage byte "The month is:", 0dh, 0ah, 0
dayMessage byte "The day is:", 0dh, 0ah, 0

;Coding section

.code
main proc
    
 
 Looop:

; Main

 mov  edx,OFFSET wrd1
 call WriteString
 call ReadInt

 mov bl, 1
 cmp bl, al
 je Chapter6

 mov bl, 2
 cmp bl, al
 je Chapter7

 mov bl, 3
 cmp bl, al
 je Eexit

;;--------------------------------------------------------------------;;
;;                                                                    ;;
;;                           CHAPTER 6                                ;;
;;                           ---------                                ;;
;;                                                                    ;;
;;____________________________________________________________________;;

 Chapter6: mov edx,OFFSET wrd6
           call WriteString
           call ReadInt
           
            mov bl, 1
            cmp bl, al
            je C6N1

            mov bl, 2
            cmp bl, al
            je C6N2

            mov bl, 3
            cmp bl, al
            je C6N3

            mov bl, 4
            cmp bl, al
            je C6N4

            mov bl, 5
            cmp bl, al
            je C6N5

            mov bl, 6
            cmp bl, al
            je Looop

    C6N1: 

           mov edx,OFFSET wrd21
           call WriteString
           call ReadInt

           mov bl, 1
           cmp bl, al
           je C6N1A

           mov bl, 2
           cmp bl, al
           je C6N1B

           mov bl, 3
           cmp bl, al
           je C6N1C

           mov bl, 4
           cmp bl, al
           je C6N1D

           mov bl, 5
           cmp bl, al
           je C6N1E

           mov bl, 6
           cmp bl, al
           je C6N1F

           mov bl, 7
           cmp bl, al
           je Looop

           ; 

    C6N2:
           mov edx,OFFSET wrd31
           call WriteString
           call ReadInt

            mov bl, 1
           cmp bl, al
           je C6N2A

            mov bl, 2
           cmp bl, al
           je C6N2B

           mov bl, 3
           cmp bl, al
           je C6N2C

           mov bl, 4
           cmp bl, al
           je C6N2D

           mov bl, 5
           cmp bl, al
           je Looop

   C6N3:
           mov edx,OFFSET wrd38
           call WriteString
           call ReadInt

           mov bl, 1
           cmp bl, al
           je C6N3A

           mov bl, 2
           cmp bl, al
           je C6N3B

           mov bl, 3
           cmp bl, al
           je Looop

   C6N4:

           mov edx,OFFSET wrd43
           call WriteString
           call ReadInt

           mov bl, 1
           cmp bl, al
           je C6N4A

           mov bl, 2
           cmp bl, al
           je C6N4B

           mov bl, 3
           cmp bl, al
           je C6N4C

           mov bl, 4
           cmp bl, al
           je C6N4D

           mov bl, 5
           cmp bl, al
           je Looop

   C6N5:
           mov edx,OFFSET wrd50
           call WriteString
           call ReadInt
           
           mov bl, 1
           cmp bl, al
           je C6N5A

           mov bl, 2
           cmp bl, al
           je C6N5B

           mov bl, 3
           cmp bl, al
           je C6N5C

           mov bl, 4
           cmp bl, al
           je C6N5D

           mov bl, 5
           cmp bl, al
           je Looop

        
;;--------------------------------------------------------------------;;
;;                                                                    ;;
;;                           CHAPTER 7                                ;;
;;                           ---------                                ;;
;;                                                                    ;;
;;____________________________________________________________________;;


 Chapter7:  mov edx,OFFSET wrd14
            call WriteString
            call ReadInt

            mov bl, 1
            cmp bl, al
            je C7N1

            mov bl, 2
            cmp bl, al
            je C7N2

            mov bl, 3
            cmp bl, al
            je C7N3

            mov bl, 4
            cmp bl, al
            je Looop

   C7N1:    mov edx,OFFSET wrd58
            call WriteString
            call ReadInt

            mov bl, 1
            cmp bl, al
            je C7N1A

            mov bl, 2
            cmp bl, al
            je C7N1B
            
            mov bl, 3
            cmp bl, al
            je C7N1C

            mov bl, 4
            cmp bl, al
            je C7N1D

            mov bl, 5
            cmp bl, al
            je C7N1E

            mov bl, 6
            cmp bl, al
            je C7N1F

            mov bl, 7
            cmp bl, al
            je C7N1G

            mov bl, 8
            cmp bl, al
            je Looop

  C7N2: 
            mov edx,OFFSET wrd67
            call WriteString
            call ReadInt

             mov bl, 1
            cmp bl, al
            je C7N2A

            mov bl, 2
            cmp bl, al
            je C7N2B

            mov bl, 3
            cmp bl, al
            je Looop

  C7N3:        
            mov edx,OFFSET wrd71
            call WriteString
            call ReadInt

             mov bl, 1
            cmp bl, al
            je C7N3A

             mov bl, 2
            cmp bl, al
            je C7N3B

             mov bl, 3
            cmp bl, al
            je C7N3C

             mov bl, 4
            cmp bl, al
            je C7N3D

             mov bl, 5
            cmp bl, al
            je C7N3E

             mov bl, 6
            cmp bl, al
            je C7N3F

            mov bl, 7
            cmp bl, al
            je C7N3G

            

            mov bl, 8
            cmp bl, al
            je Looop


; -------------------- CHAPTER 6 CONDITIONAL PROCESSING ---------------------

  C6N1A :   mov edx,OFFSET disp1 ; AND instruction
            call WriteString
            mov edx,OFFSET wrd81 ; AND instruction

            mov eax,val1
            and eax, val2 

            mov finalVal, eax	; store the result 
            call DumpRegs	; display the registers
  
            call WriteString
            call ReadInt


            mov bl, 2
            cmp bl, al
            je Looop
            
            mov bl, 3
            cmp bl, al
            je Chapter6

            mov bl, 4
            cmp bl, al
            je C6N1

C6N1B :   
            
            mov eax,val1
            or eax, val2 

            mov finalVal, eax	; store the result 
            call DumpRegs	; display the registers
  
            mov edx,OFFSET wrd86 ; OR instruction

            call WriteString
            call ReadInt


            mov bl, 2
            cmp bl, al
            je Looop
            
            mov bl, 3
            cmp bl, al
            je Chapter6
            
            mov bl, 4
            cmp bl, al
            je C6N1
            
C6N1C :   
            mov edx,OFFSET disp2 ; XOR instruction
            call WriteString

            mov eax,val1
            xor eax,val3 

            mov finalVal, eax	; store the result 
            call DumpRegs	; display the registers
  
            mov edx,OFFSET wrd86 ; XOR instruction

            call WriteString
            call ReadInt


            mov bl, 2
            cmp bl, al
            je Looop
            
            mov bl, 3
            cmp bl, al
            je Chapter6
            
            mov bl, 4
            cmp bl, al
            je C6N1

C6N1D :   
            
            
            mov eax,val1 ; NOT instruction
            not eax 

            call DumpRegs	; display the registers
  
            mov edx,OFFSET wrd86

            call WriteString
            call ReadInt


            mov bl, 2
            cmp bl, al
            je Looop
            
            mov bl, 3
            cmp bl, al
            je Chapter6
            
            mov bl, 4
            cmp bl, al
            je C6N1

C6N1E :   
            
             ; TEST instruction
            test val5, 01100011b
             jnz  ThereIsValue
            
            mov val1, eax	; store the result 
            call DumpRegs	; display the registers
           
  
            mov edx,OFFSET wrd86 

            call WriteString
            call ReadInt

            mov bl, 2
            cmp bl, al
            je Looop
            
            mov bl, 3
            cmp bl, al
            je Chapter6
            
            mov bl, 4
            cmp bl, al
            je C6N1

            ThereIsValue: 
            mov edx,OFFSET wrd91
            call WriteString

C6N1F :   
            mov edx,OFFSET disp3 ; 
            call WriteString
            mov al,4
            cmp al,5 ; CMP instruction

            mov finalVal, eax	; store the result 
            call DumpRegs	; display the registers
  
            mov edx,OFFSET wrd86 ; 
            call WriteString
            call ReadInt


            mov bl, 2
            cmp bl, al
            je Looop
            
            mov bl, 3
            cmp bl, al
            je Chapter6
            
            mov bl, 4
            cmp bl, al
            je C6N1


C6N2A :    mov edx,OFFSET wrd92 ; JP instruction
           call WriteString

           mov ax,5
           cmp ax,5
           

            mov finalVal, eax	; store the result 
            call DumpRegs	; display the registers
            jp L1 ; jump if parity (even)

            menumenu : 
            mov edx,OFFSET wrd86 ; OR instruction
            call WriteString
            call ReadInt


            mov bl, 2
            cmp bl, al
            je Looop
            
            mov bl, 3
            cmp bl, al
            je Chapter6
            
            mov bl, 4
            cmp bl, al
            je C6N2


C6N2B :
           mov edx,OFFSET wrd94 ; Equality
           call WriteString
           and al,00001011b	; clear unwanted bits
           cmp al,00001010b	; check remaining bits
          
           mov finalVal, eax	; store the result 
           call DumpRegs	; display the registers
           jne menumenu ; jump if NOT EQUAL leftOp with RightOp



C6N2C :  

          mov edx,OFFSET wrd95 ; Unsigned Comparison
          call WriteString
          mov al,00001011b	; clear unwanted bits
          cmp al,00001010b	; check remaining bits
          
          mov finalVal, eax	; store the result 
          call DumpRegs	; display the registers
          jae menumenu ; Jump if above or equal (if leftOp >= rightOp)

C6N2D :
          mov edx,OFFSET wrd96 ; Signed Comparison
          call WriteString
          mov ax,+45
          cmp ax,-2
          mov finalVal, eax	; store the result 
          call DumpRegs	; display the registers
          jge menumenu ; Jump if  greater 

L1 : je menumenu

C6N3A :     mov edx,OFFSET wrd97 ; LOOPZ 
            call WriteString
            
            mov ax, 5
            sub bx, 5
            loopz sini

            sini : mov edx,OFFSET kata22 ; loopz
            call WriteString
            
            mov edx,OFFSET wrd86 ; LOOPZ instruction
            call WriteString
            call ReadInt


            mov bl, 2
            cmp bl, al
            je Looop
            
            mov bl, 3
            cmp bl, al
            je Chapter6
            
            mov bl, 4
            cmp bl, al
            je C6N3
            
           

C6N3B :

            mov edx,OFFSET wrd130 ; LOOPNZ 
            call WriteString
            
            mov ax, 5
            sub bx, 7
            loopnz kesini

            kesini : mov edx,OFFSET kata23 ; loopnz
            call WriteString
            
            mov edx,OFFSET wrd86 ; LOOPNZ instruction
            call WriteString
            call ReadInt


            mov bl, 2
            cmp bl, al
            je Looop
            
            mov bl, 3
            cmp bl, al
            je Chapter6
            
            mov bl, 4
            cmp bl, al
            je C6N3
            

C6N4A :     
            mov dl, 5
            mov bl, 5

            cmp dl,bl
            je show
            jne unshow
           
            show :
            mov edx,OFFSET wrd98 ; same
            call WriteString
            
             mov edx,OFFSET wrd86 ; 
            call WriteString
            call ReadInt


            mov bl, 2
            cmp bl, al
            je Looop
            
            mov bl, 3
            cmp bl, al
            je Chapter6
            
            mov bl, 4
            cmp bl, al
            je C6N4


            unshow :
            mov edx,OFFSET wrd99 ; not same
            call WriteString
            mov ah, 04h
            int 21h

C6N4B : 
            mov bl, 3 ; Compound expression AND
            mov cl, 4
            cmp bl,cl
            jnae and1 ; Jump if Not Above or Equal

            and1 :
            mov edx,OFFSET wrd100 ; jump succeed menu appeared
            call WriteString
            mov cl, 3
            mov dl, 5
            cmp cl,dl
            jb menuc6n4

menuc6n4 :
            mov edx,OFFSET wrd86 ; OR instruction
            call WriteString
            call ReadInt


            mov bl, 2
            cmp bl, al
            je Looop
            
            mov bl, 3
            cmp bl, al
            je Chapter6
            
            mov bl, 4
            cmp bl, al
            je C6N4


C6N4C :     mov bl, 3 ; Compound expression OR
            mov cl, 4
            cmp bl,cl
            jnae or1 ; Jump if Not Above or Equal

            or1 :
            mov edx,OFFSET wrd101 ; jump succeed menu appeared
            call WriteString
            mov cl, 3
            mov dl, 5
            cmp cl,dl
            jna menuc6n4 ; Jump if not above
            jb menuc6n4 ;
            
C6N4D : 
           mov edx,OFFSET disp7 ; OR instruction
           call WriteString
           mov eax, 5
           mov ebx, 2
           je whileloop

            whileloop:	cmp eax,ebx	; check loop condition
	            jb menuc6n4	; false? exit loop
	            dec eax	; body of loop
	            jmp whileloop	; repeat the loop
            

C6N5A : 
            mov edx, OFFSET input ; Runtime Expression
            call WriteString
            call ReadInt

            cmp eax, 50
            jg large
            mov edx, OFFSET smaller
            call WriteString
            jmp menuc6n5

            large :

            mov edx, OFFSET larger
            call WriteString
            jmp menuc6n5

menuc6n5 :
            mov edx,OFFSET wrd86 ; back to menu
            call WriteString
            call ReadInt


            mov bl, 2
            cmp bl, al
            je Looop 
            
            mov bl, 3
            cmp bl, al
            je Chapter6
            
            mov bl, 4
            cmp bl, al
            je C6N5

C6N5B :     
            mov edx,OFFSET wrd127 ; back to menu
            call WriteString
            mov al, 12 ; relational exp 1 != exp2
            mov bl, 9
	        cmp al, bl
             call DumpRegs
	        jnbe menuc6n5

 
C6N5C : 
            mov ax,5    ; .REPEAT Directive (Display integers 6-12)
            .REPEAT
	       inc ax
	       call WriteDec
	       call Crlf
            .UNTIL ax == 12
            call menuc6n5
     

C6N5D : 
          mov eax, 0 ;.WHILE Directive (Display integers 1-4)
        .WHILE eax < 4
        inc eax
        call WriteDec
        call Crlf
        .ENDW
        call menuc6n5


;-------------------- CHAPTER 7 SHIFT AND ROTATE INSTRUCTION ---------------------

C7N1A : 
        mov al, 10000000b ;SHL
        shl al, 2
       
        call DumpRegs
        call menuc7n1

                

C7N1B : 
        mov dl,20 ; SHR
        shr dl,2
        call DumpRegs
        call menuc7n1


C7N1C : 
            mov ax, -128 ; SAR
            shl eax, 16
            sar eax, 16

            call DumpRegs
            call menuc7n1

C7N1D :
            mov al,40h ; AL = 01000000b ; ROL
            rol al,1 ; AL = 10000000b, CF = 0
            rol al,1 ; AL = 00000001b, CF = 1
        
            call DumpRegs
            call menuc7n1


menuc7n1 :
            mov edx,OFFSET wrd86 ; back to menu
            call WriteString
            call ReadInt


            mov bl, 2
            cmp bl, al
            je Looop
            
            mov bl, 3
            cmp bl, al
            je Chapter7
            
            mov bl, 4
            cmp bl, al
            je C7N1

C7N1E : 
            mov al,01h ; AL = 00000001b ; ROR
            ror al,1 ; AL = 10000000b, CF = 1
            call DumpRegs
            call menuc7n1

C7N1F : 
                                  ; RCR
            stc ; CF = 1
            mov ah,10h ; AH, CF = 00010000 1
            rcr ah,1 ; AH, CF = 10001000 0
            call DumpRegs
            call menuc7n1

C7N1G : 
            
            mov  ax,224Dh ; destination
            mov  bx,7654h ; source
            shrd ax,bx,3

            call DumpRegs
            call menuc7n1



C7N2A : 
           mov edx,OFFSET wrd103 ; Multiplication of Binary
           call WriteString
            mov eax,50
            mov ebx,eax
            shl eax,6 ; multiply by 2^6
            shl ebx,1 ; multiply by 2^1
            sub eax,ebx ; sub the products

            mov finalVal, eax	; store the result 
            call DumpRegs	; 
            call menuc7n2

menuc7n2 :
            mov edx,OFFSET wrd86 ; back to menu
            call WriteString
            call ReadInt


            mov bl, 2
            cmp bl, al
            je Looop
            
            mov bl, 3
            cmp bl, al
            je Chapter7
            
            mov bl, 4
            cmp bl, al
            je C7N2
            
C7N2B :
            mov eax, 0
            mov dx, 266Ah ; Assuming DX = 0010 0110 0110 1010b = 266Ah

            ; Isolating bit 5-8 out to get month info
            mov ax,dx ; make a copy of DX = 0010 0110 0110 1010
            shr ax, 5
            and ax, 0000000000001111b ; clear bits 4-15

            push edx ; save edx value to stack before using edx for printing essage
            mov edx, offset monthMessage
            call writeString
            call writeDec
            

            pop edx ; restore edx value before getting the day info

            ; Isolating bit 0-4 out to get day info

            mov ax, dx ; make copy of a DX = 0010 0110 0110 1010
            and ax, 0000000000011111b ; clear bits 5-15

            push edx
            mov edx, offset dayMessage
            call writeString
            call writeDec
            
            pop edx

            

; Isolating bit 9-15 out to get year info

            mov al,dh ; make a copy of DH
            shr al,1 ; shift right one position
            mov ah,0 ; clear AH to zeros
            add ax,1980 ; year is relative to 1980
            mov dl,al

            push edx ; save edx value to stack before using edx for printing essage
            mov edx, offset yearMessage
            call writeString
            call writeDec
            call menuc7n2

            
C7N3A :     
            mov edx,OFFSET wrd106 ; MUL instruction
            call WriteString
            mov al,2h ; MUL 
            mov bl, 6h
            mul bl ; AX =  CF = 0

            mov finalVal, eax	; store the result 
            call DumpRegs	; display the registers
            call menuc7n3
            
            
 C7N3B :     
            mov edx,OFFSET wrd107 ; IMUL instruction
            call WriteString
            mov eax,-16 ; EAX = -16
            mov ebx,2 ; EBX = 2
            imul ebx,eax ; EBX = -32
            imul ebx,2 ; EBX = -64
            
            call DumpRegs	; display the registers
            call menuc7n3
            
            
C7N3C :     
            mov edx,OFFSET wrd108 ; DIV instruction
            call WriteString
            mov edx, 0
            mov eax,6 ; DIV instruction
            mov ebx,3
            div ebx

            call DumpRegs	; display the registers
            call menuc7n3

menuc7n3 :
            mov edx,OFFSET wrd86 ; back to menu
            call WriteString
            call ReadInt


            mov bl, 2
            cmp bl, al
            je Looop
            
            mov bl, 3
            cmp bl, al
            je Chapter7
            
            mov bl, 4
            cmp bl, al
            je C7N3
                       
            
C7N3D :  
            mov edx,OFFSET wrd109 ; SIGNED instruction
            call WriteString
           mov eax,0 ; EAX = 00000000h
            mov ax,wordVal22 ; EAX = 0000009Bh (+155)
            cwd ; EAX = FFFFFF9Bh (-101)
            mov bx,2 ; EBX is the divisor
            idiv bx ; divide EAX by BX

            call DumpRegs	; display the registers
            call menuc7n3

C7N3E :     
               mov edx,OFFSET wrd120 ; 
               call WriteString
               mov eax,cdqVal1 ; CDQ (convert doubleword to quadword)
               add eax, 2
               cdq

                call DumpRegs
                call menuc7n3

            
C7N3F : 
            mov edx,OFFSET wrd110 ; IDIV instruction
            call WriteString
            mov eax,cdqVal ; dividend, low
            cdq ; extend EAX into EDX
            mov ebx,-256 ; divisor
            idiv ebx ; quotient EAX = -19, rem EDX = +136
            call DumpRegs	; display the registers
            call menuc7n3

C7N3G :
       mov edx,OFFSET wrd112 ; Implement arithmetic instruction
       call WriteString     
       mov eax,out2 ; begin right side
        neg eax
        cdq ; sign-extend dividend
        idiv out3 ; EDX = remainder
        mov ebx,edx ; EBX = right side
        
        ; Next, we calculate the expression on the left side, storing the product in EDX:EAX:
        
        mov eax,-4 ; begin left side
        imul out1 ; EDX:EAX = left side
        
        ; Finally, the left side (EDX:EAX) is divided by the right side (EBX):
        
        idiv ebx ; final division
        mov out4,eax ; quotient
        call DumpRegs	; display the registers
        call menuc7n3
        
Eexit: mov edx, OFFSET wrd20


main endp
end main
