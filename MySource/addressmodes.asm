 mov ax,0050h ;immediate
 mov bx,[1000h] ;direct
 mov ax,bx ;register
 mov ax,[bx] ;reg indirect
 mov si ,1000h;
 mov ax,[si]; indexed
 mov ax,[bx+50h]   ;register relative
 mov ax, [bx + si] ;base indexed
 mov ax, [bx+si +0aaaah];base index with displacement
  
  
