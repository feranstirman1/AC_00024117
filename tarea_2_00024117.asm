	org	100
	mov	ax,2d
	mov	bx,4d
	add	ax,bx
	mov	bx,1d
	add	ax,bx
	mov	bx,1d
	add	ax,bx
	mov	bx,7d
	add	ax,bx
	mov	bx,5d
	div	bx ; aca ya tendriamos que tener el promedio guardado en ax
	
	cmp 	ax,10d ;revisa a cual mensaje debe saltar
	JE  	men10
	cmp 	ax,9d
	JE  	men9
	cmp 	ax,8d
	JE  	men8
	cmp 	ax,7d
	JE  	men7
	cmp 	ax,6d
	JE  	men6
	cmp 	ax,5d
	JE  	men5
	cmp 	ax,4d
	JE  	men4
	cmp 	ax,3d
	JE  	men3
	cmp 	ax,2d
	JE  	men2
	cmp 	ax,1d
	JE  	men1

men10:
	MOV 	bl, "P"
    	mov 	[200h],bl
    	MOV 	bl, "e"
    	mov 	[201h],bl
    	MOV 	bl, "r"
    	mov 	[202h],bl
    	MOV 	bl, "f"
    	mov 	[203h],bl
    	MOV 	bl, "e"
    	mov 	[204h],bl
    	MOV 	bl, "c"
    	mov 	[205h],bl
    	MOV 	bl, "t"
    	mov 	[206h],bl
    	MOV 	bl, "o"
    	mov 	[207h],bl
    	MOV 	bl, ""
    	mov 	[208h],bl
    	MOV 	bl, "s"
    	mov 	[209h],bl
    	MOV 	bl, "o"
    	mov 	[20Ah],bl
    	MOV 	bl, "l"
    	mov 	[20Bh],bl
    	MOV 	bl, "o"
    	mov 	[20Ch],bl
    	MOV 	bl, ""
    	mov 	[20Dh],bl
    	MOV 	bl, "d"
    	mov 	[20Eh],bl
    	MOV 	bl, "i"
    	mov 	[20Fh],bl
    	MOV 	bl, "o"
    	mov 	[240h],bl
    	MOV 	bl, "s"
    	mov 	[241h],bl
	JMP 	ejercicio2
	
men9:   	
        MOV 	bl, "S"
        mov 	[200h],bl
        MOV 	bl, "i"
        mov 	[201h],bl
        MOV 	bl, "e"
        mov 	[202h],bl
        MOV 	bl, "m"
        mov 	[203h],bl
        MOV 	bl, "p"
        mov 	[204h],bl
        MOV 	bl, "r"
        mov 	[205h],bl
        MOV 	bl, "e"
        mov 	[206h],bl
        MOV 	bl, ""
        mov 	[207h],bl
        MOV 	bl, "m"
        mov 	[208h],bl
        MOV 	bl, "e"
        mov 	[209h],bl
        MOV 	bl, ""
        mov 	[20Ah],bl
        MOV 	bl, "e"
        mov 	[20Bh],bl
        MOV 	bl, "s"
        mov 	[20Ch],bl
        MOV 	bl, "f"
        mov 	[20Dh],bl
        MOV 	bl, "u"
        mov 	[20Eh],bl
        MOV 	bl, "e"
        mov 	[20Fh],bl
        MOV 	bl, "r"
        mov 	[240h],bl
        MOV 	bl, "z"
        mov 	[241h],bl
        MOV 	bl, "o"
        mov 	[242h],bl
        JMP	ejercicio2
men8:   	
        MOV 	bl, "C"
        mov 	[200h],bl
        MOV 	bl, "o"
        mov 	[201h],bl
        MOV 	bl, "l"
        mov 	[202h],bl
        MOV 	bl, "o"
        mov 	[203h],bl
        MOV 	bl, "c"
        mov 	[204h],bl
        MOV 	bl, "h"
        mov 	[205h],bl
        MOV 	bl, "o"
        mov 	[206h],bl
        JMP	ejercicio2
men7:   	
        MOV 	bl, "M"
        mov 	[200h],bl
        MOV 	bl, "u"
        mov 	[201h],bl
        MOV 	bl, "y"
        mov 	[202h],bl
        MOV 	bl, ""
        mov 	[203h],bl
        MOV 	bl, "b"
        mov 	[204h],bl
        MOV 	bl, "i"
        mov 	[205h],bl
        MOV 	bl, "e"
        mov 	[206h],bl
        MOV 	bl, "n"
        mov 	[207h],bl
        JMP	ejercicio2
men6:   	
        MOV 	bl, "P"
        mov 	[200h],bl
        MOV 	bl, "e"
        mov 	[201h],bl
        MOV 	bl, "o"
        mov 	[202h],bl
        MOV 	bl, "r"
        mov 	[203h],bl
        MOV 	bl, ""
        mov 	[204h],bl
        MOV 	bl, "e"
        mov 	[205h],bl
        MOV 	bl, "s"
        mov 	[206h],bl
        MOV 	bl, ""
        mov 	[207h],bl
        MOV 	bl, "n"
        mov 	[208h],bl
        MOV 	bl, "a"
        mov 	[209h],bl
        MOV 	bl, "d"
        mov 	[20Ah],bl
        MOV 	bl, "a"
        mov 	[20Bh],bl
        JMP	ejercicio2
men5:   	
        MOV 	bl, "E"
        mov 	[200h],bl
        MOV 	bl, "n"
        mov 	[201h],bl
        MOV 	bl, ""
        mov 	[202h],bl
        MOV 	bl, "e"
        mov 	[203h],bl
        MOV 	bl, "l"
        mov 	[204h],bl
        MOV 	bl, ""
        mov 	[205h],bl
        MOV 	bl, "s"
        mov 	[206h],bl
        MOV 	bl, "e"
        mov 	[207h],bl
        MOV 	bl, "g"
        mov 	[208h],bl
        MOV 	bl, "u"
        mov 	[209h],bl
        MOV 	bl, "n"
        mov 	[20Ah],bl
        MOV 	bl, "d"
        mov 	[20Bh],bl
        MOV 	bl, "o"
        mov 	[20Ch],bl
        JMP	ejercicio2
men4:   	
        MOV 	bl, "M"
        mov 	[200h],bl
        MOV 	bl, "e"
        mov 	[201h],bl
        MOV 	bl, ""
        mov 	[202h],bl
        MOV 	bl, "r"
        mov 	[203h],bl
        MOV 	bl, "e"
        mov 	[204h],bl
        MOV 	bl, "c"
        mov 	[205h],bl
        MOV 	bl, "u"
        mov 	[206h],bl
        MOV 	bl, "p"
        mov 	[207h],bl
        MOV 	bl, "e"
        mov 	[208h],bl
        MOV 	bl, "r"
        mov 	[209h],bl
        MOV 	bl, "o"
        mov 	[20Ah],bl
        JMP	ejercicio2
men3:   	
        MOV 	bl, "H"
        mov 	[200h],bl
        MOV 	bl, "a"
        mov 	[201h],bl
        MOV 	bl, "y"
        mov 	[202h],bl
        MOV 	bl, ""
        mov 	[203h],bl
        MOV 	bl, "s"
        mov 	[204h],bl
        MOV 	bl, "a"
        mov 	[205h],bl
        MOV 	bl, "l"
        mov 	[206h],bl
        MOV 	bl, "u"
        mov 	[207h],bl
        MOV 	bl, "d"
        mov 	[208h],bl
        JMP	ejercicio2
men2:   	
        MOV 	bl, "A"
        mov 	[200h],bl
        MOV 	bl, "u"
        mov 	[201h],bl
        MOV 	bl, "n"
        mov 	[202h],bl
        MOV 	bl, ""
        mov 	[203h],bl
        MOV 	bl, "s"
        mov 	[204h],bl
        MOV 	bl, "e"
        mov 	[205h],bl
        MOV 	bl, ""
        mov 	[206h],bl
        MOV 	bl, "p"
        mov 	[207h],bl
        MOV 	bl, "a"
        mov 	[208h],bl
        MOV 	bl, "s"
        mov 	[209h],bl
        MOV 	bl, "a"
        mov 	[20Ah],bl
        JMP	ejercicio2
men1:   	
        MOV 	bl, "S"
        mov 	[200h],bl
        MOV 	bl, "o"
        mov 	[201h],bl
        MOV 	bl, "l"
        mov 	[202h],bl
        MOV 	bl, "o"
        mov 	[203h],bl
        MOV 	bl, ""
        mov 	[204h],bl
        MOV 	bl, "n"
        mov 	[205h],bl
        MOV 	bl, "e"
        mov 	[206h],bl
        MOV 	bl, "c"
        mov 	[207h],bl
        MOV 	bl, "e"
        mov 	[208h],bl
        MOV 	bl, "s"
        mov 	[209h],bl
        MOV 	bl, "i"
        mov 	[20Ah],bl
        MOV 	bl, "t"
        mov 	[20Bh],bl
        MOV 	bl, "o"
        mov 	[20Ch],bl
        MOV 	bl, ""
        mov 	[20Dh],bl
        MOV 	bl, "e"
        mov 	[20Eh],bl
        MOV 	bl, "l"
        mov 	[20Fh],bl
        MOV 	bl, ""
        mov 	[240h],bl
        MOV 	bl, "0"
        mov 	[241h],bl
	JMP	ejercicio2


ejercicio2:



	int	20h

