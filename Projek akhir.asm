.model SMALL 
.code 
ORG 100h
tdata: 
    jmp proses
    lktm1 db 13,10,"===============================$"
    lktm2 db 13,10,"|  PROGRAM INPUT KTM MAHASISWA |$"
    lktm3 db 13,10,"===============================$"  
	
	
	lusername db 13,10,'Nama : $' 
	lnim db 13,10,'Nim : $'
	lprodi db 13,10,'Prodi : $'
	lfakultas db 13,10, "Fakultas : $"
	
	vusername db 23,?,23 dup(?) 
	vnim db 23,?,23 dup(?)
	vprodi db 23,?,23 dup(?)
	vfakultas db 23,?,23 dup(?)

proses:

    mov ah,09h ; tampilkan tulisan ====
	lea dx,lktm1 
	int 21h
	
	mov ah,09h ; tampilkan tulisan program input ktm mahasiswa
	lea dx,lktm2 
	int 21h
	
	mov ah,09h ; tampilkan tulisan =======
	lea dx,lktm3 
	int 21h
	
	 

    
    mov ah,09h ; tampilkan tulisan username
	lea dx,lusername 
	int 21h 

	mov ah,0ah ; menunggu masukkan keyboard
 	lea dx,vusername
	int 21h  
	
	mov ah,09h ; tampilkan tulisan username
	lea dx,lnim 
	int 21h 

	mov ah,0ah ; menunggu masukkan keyboard
 	lea dx,vnim
	int 21h 
	
	mov ah,09h ; tampilkan tulisan username
	lea dx,lfakultas
	int 21h 

	mov ah,0ah ; menunggu masukkan keyboard
 	lea dx,vfakultas
	int 21h
	
	mov ah,09h ; tampilkan tulisan username
	lea dx,lprodi
	int 21h 

	mov ah,0ah ; menunggu masukkan keyboard
 	lea dx,vprodi
	int 21h