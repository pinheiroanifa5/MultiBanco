
org 100h
.stack 64h
.data z.

 msg0 db 10d,13d," ",'$'
 msg1 db 10d,13d,"<<<<<<<<<<<<<<<<<<<<<<<<<< Menu Administracao ATM >>>>>>>>>>>>>>>>>>>>>>",'$'
 msg2 db 10d,13d,"                           ID: ",'$'
 msg3 db 10d,13d,"                           PIN: ",'$'
 msg54 db 10d,13d,"                           Nome do Cliente: ",'$'
 msg55 db 10d,13d, "Nome do Cliente: ",'$'
 msg57 db 'Atencao!De Momento Apenas Existem IDs de 1 a 5.$'
 msg56 db 'Atencao!Deve Introduzir o Seu Nome e de Seguida Prima Enter.$'
 msglimpe db 10d,13d,"                               ",'$'
 desejo db 10d,13d," Deseja Tentar Depositar Outra Quantia? ",'$'
 msg99 db '  ID: $'
 msg98 db '  PIN: $'
 msg4 db '  Montante: $' 
 msg5 db 10d,13d,"<<<<<<<<<<<<<<<<<<<<<<<<<< Menu Cliente ATM >>>>>>>>>>>>>>>>>>>>>>",'$'
 msg6 db 10d,13d,"0-Consultar o Saldo",'$'
 msg7 db 10d,13d,"1-Fazer Levantamento",'$'
 msg8 db 10d,13d,"2-Fazer Deposito",'$'
 msg66 db 10d,13d,"3-Sair",'$'                       
 msg10 db 10d,13d,"  Prima Qualquer Tecla para ir ao Menu de Cliente ATM...   0-Reentroduzir ID",'$' 
 msg11 db 'Cliente: $'
 msg12 db 10d,13d,"     Prima Qualquer Tecla Para ir ao Menu Cliente...  0-Sair do Programa",'$'
 msg13 db 10d,13d,"Escolha uma Opcao do Menu: ",'$'  
 msg14 db 10d,13d,"     Introduza uma Opcao Valida! Prima Qualquer Tecla Para Continuar...",'$'
 msg15 db '*$'
 msg16 db 10d,13d,"<<<<<<<<<<<<<<<<<<<<<<<<<< Entrada de Dados ATM >>>>>>>>>>>>>>>>>>>>>>",'$' 
 msg17 db 'Correto $' 
 msg18 db 'Incorreto $'
 msg19 db 10d,13d,"    Existem apenas ID's de 1 a 5! Prima Qualquer tecla para Reentroduzir ID...",'$'
 msg20 db 10d,13d,"  Introduziu o Pin Incorreto, Deve Reentroduzir os seus Dados",'$' 
 msg21 db 10d,13d,"   Prima Qualquer Tecla para Continuar...",'$'
 msg22 db 10d,13d,"<<<<<<<<<<<<<<<<<<<<<<<<<< Consulta de Saldo >>>>>>>>>>>>>>>>>>>>>>",'$'
 msg88 db ' Contos CVE$'
 msg23 db 10d,13d,"Saldo Disponivel: ",'$'
 msg24 db 10d,13d,"   Lembre-se do Seu Cartao....Deseja Efetuar Mais Operacoes?",'$'  
 msg25 db 10d,13d,"            1-Sim       0-Nao(Sair ATM)",'$' 
 msg26 db 10d,13d,"Deve Introduzir uma opcao Valida!",'$' 
 msg28 db 10d,13d,"Pin Invalido! Deve Introduzir um Pin de 0 a 99",'$'
 msg29 db 10d,13d,"Montante Invalido! Deve Introduzir um Montante de 0 a 99 Contos CVE.",'$'
 msg30 db 10d,13d,"Prima Qualquer Tecla para Reentroduzir os Dados...",'$'
 msg31 db 10d,13d,"O ID deve Ser Unico, Portanto Deve Reentroduzir os ID's.",'$'
 msg32 db '  $'
 msg33 db ' $'
 msg34 db 10d,13d,"Atencao!O Codico Pin e o Valor do Montante dos Respetivos Clientes Podem Assumir Somente Valores Decimais 0 a 99.",'$'
 msg404 db 10d,13d,"Atencao!O Valor do Montante Pode Assumir Somente Valores Decimais 0 a 99.",'$'
 msg35 db 10d,13d,"<<<<<<<<<<<<<<<<<<<<<<<<<< Levantamento >>>>>>>>>>>>>>>>>>>>>>",'$'
 msg36 db 10d,13d,"Quantia a Levantar: ",'$'
 msg37 db 10d,13d,"Saldo Insuficiente Para Efetuar a Operacao.",'$'
 msg38 db 10d,13d,"  Deseja Tentar Levantar Outra Quantia?",'$'
 msg39 db 10d,13d,"          1-Sim      0-Nao",'$'
 msg40 db 10d,13d," Saldo Atual: ",'$'
 msg41 db 10d,13d,"              Operacao Concluida Com Sucesso!",'$'
 msg50 db 10d,13d,"<<<<<<<<<<<<<<<<<<<<<<<<<< Deposito >>>>>>>>>>>>>>>>>>>>>>",'$'
 msg51 db 10d,13d,"Quantia a Depositar: ",'$' 
 msg52 db 10d,13d,"Nao Foi Possivel Depositar Esse Valor!",'$' 
 msg53 db 10d,13d,"          O Saldo da Sua Conta Nao Deve Exceder os 99 Contos. ",'$'                           
 msg70 db 'Saldo Atualizado a $'
 msg71 db 'Janeiro$' 
 msg72 db 'Fevereiro$'
 msg73 db 'Marco$'
 msg74 db 'Abril$'
 msg75 db 'Maio$'
 msg76 db 'Junho$'
 msg77 db 'Julho$'
 msg78 db 'Agosto$'
 msg79 db 'Setembro$'
 msg80 db 'Outubro$' 
 msg81 db 'Novembro$'
 msg82 db 'Dezembro$'
 msg83 db ' as $'
 msg84 db ' de $'
 msg85 db 'Horas $'
 msg86 db ' e $'
 msg87 db 'Minutos$'
 msg44 db 'Segundos $'
 msg45 db ' de 2018, $'

 
.code

MenuAdm:                                  ;Onde sera o menu do admnistrador ira controlar todos os dados da maquina

 mov si,0999h                             ;Colacar os valores PIN apartir do valor de memoria 0999h 
 mov di,0000                              ;Colacar os valores MONTANTEs apartir do valor de memoria 0000h
                                          
 mov cx,5d                                ;Mover cx 5d para colocar os valores PIN nas 5 primeiras posicoes apartir de 0999h
 
 lea dx,msg1                              ;Ler mensagem
 mov ah,09h
 int 21h 
 
 call espaco                              ;Funcao para saltar linha
 call espaco
 
 lea dx,msg34                             ;Ler mensagem
 mov ah,09h
 int 21h
 
 call espaco 
 call espaco
 call espaco
    
  Adm:                                    ;Adm onde sera introduzida os Dados
   
   call espaco
                                        
    pins:                                 ;Funcao onde serao tomados os digitos PIN adm
     lea dx,msg11                         ;Mensagem cliente
     mov ah,09h
     int 21h 
   
     call mostrarnumerocliente            ;Funcao mov para dl o numero do cliente
                                         
     call mostrar                         ;Funcao Mostrar o conteudo de dl (o numero do cliente)
                                           
     lea dx,msg99
     mov ah,09h
     int 21h 
   
     call mostrarnumerocliente            ;Funcao mov para dl o numero do id
 
     call mostrar                         ;Funcao Mostrar o conteudo de dl (o numero do id)
                                          
     lea dx,msg98
     mov ah,09h
     int 21h  
                                          ;Tomar os digitos pin
     valorpin1:                           
     
       call tomarvalor1admpin             ;Funcao para tomar e validar o primeiro digito de pin
     
       sub al,30h
       mov bl,10d
       mul bl
       mov bh,al 
     
     valorpin2:
     
       call tomarvalor2admpin             ;Funcao para tomar e validar o segundo digito de pin
      
       sub al,30h
       add al,bh
   
       mov [si],al                        ;Coloca os valores dos pins em si
       inc si                             ;Para colocar o valor na proxima posicao de memoria di
       
   montantess:                            ;Onde serao tomadas as montantes adm
 
     lea dx,msg4
     mov ah,09h
     int 21h  
     
     Valormontante1:                      ;Onde sera tomado o digito 1
     
       call tomarvalor1admmontante        ;Funcao para tomar e validar o primeiro digito do montante adm
     
       sub al,30h
       mov bl,10d
       mul bl
       mov bh,al 
     
     valormontante2:                      ;Onde sera tomado o digito 2
     
       call tomarvalor2admmontante        ;Funcao para tomar e validar o segundo digito do montante adm
   
       sub al,30h
       add al,bh
   
       mov [di],al                        ;Coloca os valores das montantes em di
       inc di                             ;Para colocar o valor na proxima posicao de memoria di
     
     
       lea dx,msg88
       mov ah,09h
       int 21h
        
       call espaco

     loop Adm                             ;Para continuar a tomar os numeros ate que os 5 dados sejam colocados
     
     call espaco
     call espaco
           
     jmp sairoumenucliente                ;Opcao de ir para menu de cliente ou sair do programa 
     
     

     
sairoumenucliente:                        ;Opcao de ir para menu de cliente ou sair do programa

   call espaco
     
   lea dx,msg12
   mov ah,09h
   int 21h  
   
   call introduzirpin                     ;Funcao para tomar um digito sem o apresentar no display
   
   cmp al,30h                             ;Compara o valor digitado com 30h se for sai do programa se nao continua e vai para menu cliente para validar dados
   jne validarDados
   jmp sair
   
     
ValidarDados:                             ;A primeira janela do cliente onde lhe sera validado os dados
  mov cx, 5d 
  mov si,0999h                            ;Direcionar si para a primeira posicao onde fora adicionado os pins
  
  call limpar                             ;Funcao para limpar o display

  lea dx,msg16
  mov ah,09h
  int 21h 
  
  call espaco
  call espaco
  
  lea dx,msg57
  mov ah,09h
  int 21h
  
  call espaco
  
  lea dx,msg56
  mov ah,09h
  int 21h
  
  call espaco
  call espaco
  
  lea dx,msg2
  mov ah,09h
  int 21h 
                                          
  call introduzir                         ;Funcao para introduzir um numero mostrando-o no display
  
  sub al,30h
  mov ch,al                               ;Converter o numero adicionado em decimal
                                          ;Colocar o numero de id introduzido em Ch
  verificarID:
  
     cmp ch,0h                            
     je erroid                            ;Comparar o valor do id, se menor de 0 ou maior de 5 nao sera valido 
     cmp ch,5h
     ja erroid 
                                          ;Tomar nome do usuario
  Nome: 
  
    mov bp,0007h                          ;Apontar bp para 0007h da memoria
    
    call espaco
    
    lea dx,msg54
    mov ah,09h
    int 21h 
    
    tma:
    call introduzir                       ;Toma os carateres do nome

    mov [bp],al                           ;Move os carateres pa as posicoes de bp
    cmp al,13d                            ;Ate o usuario precionar enter(13d)
    je partiu                             ;Precionar entrer continuara para pedir pin
    inc bp                                ;proxima posiao do carater
    cmp bp,0023h                          ;se o nome for muito grande salta para tomar pin
    je partiu
    jmp tma
    
    Partiu:                               ;continuar operacao
    
    call espaco
    jmp Tomarpin

    
 TomarPin:                                ;Onde serao tomados os valores pin
  
  
  lea dx,msg3
  mov ah,09h
  int 21h
  
  call introduzirpin                      ;Funcao tomar numero sem o mostrar no display
                                          ;Toma o primeiro digito do pin
     sub al,30h
     mov bl,10d
     mul bl
     mov bh,al
  
     lea dx,msg15
     mov ah,09h
     int 21h   
   
  call introduzirpin                      ;Funcao tomar numero sem o mostrar no display
                                          ;Toma o segundo digito do pin
     sub al,30h
     add bh,al
     
     lea dx,msg15
     mov ah,09h
     int 21h 
     
     mov dh,1h                            ;Dh como um Contador
     
   Verificarpin:                          ;Onde sera verificado se o Pin em relacao ao ID sera valido
                                          ;Compara o contador com o ID se forem iguais salta para confimar
       cmp ch,dh
       je confirmar
       inc si                             ;Se nao forem iguais, entao incrementa si e contador
       inc dh 
       loop verificarpin                  ;Faz o loop ate encontar o valor igual

     Confirmar:                           ;Onde ira confirmar o se o pin introduzido conhecide com o pin colocado no menu adm

       call apagar                        ;Funcao backspace
                                          ;Nesse caso ira apagar os carateres '*' 
       call apagar
                                          ;Coloca o valor do pin do entao id em al
       mov al,[si]                        ;Compara os valores
       cmp bh,al                          ;Se forem iguais o cliente tem acesso ao sistema
       je Pincorreto                      ;Se nao o acesso sera negado
        
        call somalerta                    ;Funcao som beep
         
        lea dx,msg18
        mov ah,09h
        int 21h 
        
        mov dl,88                         ;Coloca em dl 88 correspondente a o caracter 'X'
                                          
        call mostrar
        
        call espaco
        call espaco
        
        lea dx,msg20 
        mov ah,09h
        int 21h
        
        call espaco
        call espaco
        
        lea dx, msg21
        mov ah,09h
        int 21h
        
        call espaco
        
        call esperartecla                  ;Funcao espera o utilizador precionar uma tecla para continuar o codico
        
        jmp foi                            ;O Pin foi errado e salta para Foi onde sera revalidado os dados
        
       PinCorreto:                         ;Apresenta que o codico pin foi validado e da acesso ao sistema
             
             lea dx, msg17
             mov ah,09h
             int 21h
             
             mov dl,01h                    ;Mover para Dl 01h correspondente a um carater 'emoji smile'
             call mostrar
             
             call espaco
             
            jmp sairouloopmenu             ;Salta para menu de opcao antes de aceder o sistema
            
      foi:
          
        jmp ValidarDados
                                           ;Funcao para limpar Display
  call Limpar
   erroid:                                 ;Se o utilizador digitar um id inexistente
   
     call espaco                           ;Funcao Saltar linha
     
     call somalerta                        ;Funcao som beep
   
     lea dx,msg19
     mov ah,09h
     int 21h 
                                           ;Funcao esperar qualquer tecla para continuar 
     call esperartecla
                                           
     jmp ValidarDados                      ;Salta para a revalidacao de dados
           
Menuclient:                                ;Menu de Cliente onde podera gerir a sua conta

   call limpar                             ;Funcao para limpar display
   
   lea dx,msg5
   mov ah,09h
   int 21h 
   
   call espaco                             
   
   lea dx,msg6
   mov ah,09h
   int 21h  
   
   lea dx,msg7
   mov ah,09h
   int 21h
           
   lea dx,msg8
   mov ah,09h
   int 21h
   
   lea dx,msg66
   mov ah,09h
   int 21h  
   
   call espaco
   
   lea dx,msg13
   mov ah,09h
   int 21h    
   
   call introduzir                           ;Funcao para tomar um numero
   
   cmp al,30h                                
   jb selinvalida
                                             ;Compara o Valor introduzido com 30h e 33h, se forem menor ou maior respectivamente saltara para selecao invalida 
   cmp al,33h
   ja selinvalida   
 
opcao: 
                                             ;Compara o valor introduzido com 30h, se igual salta para a opcao 0 do menu
  cmp al,30h
    je zero
  cmp al,31h                                 ;Compara o valor introduzido com 31h, se igual salta para a opcao 1 do menu
    je primeiro                              
  cmp al,32h                                 
    je segundo                               ;Compara o valor introduzido com 32h, se igual salta para a opcao 2 do menu
  cmp al, 33h                                
    je ValidarDados                          ;Compara o valor introduzido com 33h, se igual salta para a opcao 3 do menu
  
    
selinvalida:                                 ;Se o o valor introduzido nao corresponder a nenhoma opcao do menu entrara aqui

  call espaco
                                             ;Funcao som beep
  call somalerta
  
  lea dx,msg14
  mov ah,09h
  int 21h
                                             ;Funcao esperar tecla para continuar
  call esperartecla 
    
  jmp menuclient 
                                             ;Salta para menu cliente para nova escolha de opcao menu

sairouloopmenu:                              ;Opcao para continuar no menu ou aceder outra conta
  
  call espaco 
   
  lea dx,msg10
  mov ah,09h
  int 21h 
  
  call introduzirpin
  
  cmp al,30h                                 ;Compara o valor introduzido com 30h, se igual revalidar dados e aceder outra conta se nao igual escolher opcao do menu cliente
  jne Menuclient
  jmp validarDados
  

  

zero:                                        ;Opcao menu cliente consultar saldo
                                             
                                  
  call limpar                                ;Funcao limpar display
  mov bh,ch                                  ;Mover ch(id) para outro registrador para nao o perder

  mov di,0000                                ;Apontar di para primeira posicao das montantes guardadas
  mov bp,0007h
  
  mov cx,5d                                  ;Tomar valor de ch(id) outra vez
  mov ch,dh
  
  lea dx,msg22
  mov ah,09h
  int 21h
  
  mostrarnomesaldoui:                        ;Mostra o nome do cliente anteriror tomado
   
   call espaco
   call espaco
   
   lea dx,msg55
   mov ah,09h
   int 21h
   xoxx:                                     
    mov dl,[bp]                              ;Apanha os valores primeiros de bp apartir de 0007h ate encontrar 13d e apresenta no display formando o nome
    cmp dl,13d 
 
    mov ah,02h
    int 21h
 
 
    je contii:
    inc bp
    loop xoxx

  contii:
  mov cx,5d
  mov ch,bh                                  ;Recuperar Ch(id)
  mov bh,1h 
  
  orez:                                      ;Comparar Id com contador
    cmp ch,bh                                ;Se igual saltar para show onde sera mostrado o valor do saldo
    je show                                  ;Senao
    inc bh                                   ;Incrementar contador
    inc di                                   ;Incrementar posicao di
    loop orez

  show:                                      ;Onde sera mostrado o do saldo
    call espaco
    call espaco
  
    lea dx,msg23
    mov ah,09h
    int 21h
                                             ;Coloca em AL o valor do saldo
    mov al,[di] 

  
    mov dl,0Ah
    mov ah,0h
    div dl
    mov dh,ah                                ;Coloca primeiro digito em DL
 
    mov dl,al
    add dl,30h
                                            
    call mostrar                             ;Funcao mostrar valor dl no display
     
    mov dl,dh
    add dl,30h                               ;Coloca o segundo digito em DL
  
    call mostrar                             ;Funcao mostrar valor dl no display
  
    lea dx,msg88
    mov ah,09h
    int 21h
 
 call espaco
 call espaco
                                             
 call dataehorasaldo                         ;Funcao para mostar a data e as Horas do sitema
  
voltarmenu:                                  ;Opcao de voltar ao menu para efectuar mais operacoes ou aceder a outra conta

  call espaco
    
  lea dx,msg24
  mov ah,09h
  int 21h
    
  call espaco
    
  lea dx,msg25
  mov ah,09h
  int 21h 
    
  call introduzirpin                         ;Funcao introduzir valor sem o apresentar no display

  cmp al,31h                                 
  je menuclient                              ;Comparar valor de al com 31h se igual, salta para Menu de cliente para novas operacoes
  cmp al,30h
  je validardados
    
  jmp opcaoinvalida                          ;Se nao for nem 31h nem 30h sera entao uma opcao invalida
    
  opcaoinvalida:                             ;Opcao invalida e sera reenviado para volatr menu e escolher uma opcao valida
                                             
     call limpar                             ;Funcao limpar display
     
     call somalerta                          ;Funcao som beep
   
     lea dx,msg26
     mov ah,09h
     int 21h 
                                             ;voltar para voltar menu e entroduzir opcao valida
     jmp voltarmenu  
     
  
  
primeiro:                                    ;Opcao 1 do menu cliente

                                              
                                             ;Funcao limpar display
  call limpar                                ;Colocar em Dh o valor do id para nao o perder
  mov bh,ch
                                             
  mov di,0000                                ;Apontar di para a primeira posicao onde estao os montantes
  mov bp,0007h
  
  mov cx,5d                                  ;Contador  loop
  mov ch,dh                                  ;Recuperar valor de ch(id) 
  
  lea dx,msg22
  mov ah,09h
  int 21h
  
  call espaco                                
  
  lea dx,msg404
  mov ah,09h
  int 21h
  
  mostrarnomesaldo:                          ;Mostra o nome do cliente
   
   call espaco
   call espaco
   
   lea dx,msg55
   mov ah,09h
   int 21h
   xox:
    mov dl,[bp]
    cmp dl,13d                               ;Apanha os valores primeiros de bp apartir de 0007h ate encontrar 13d e apresenta no display formando o nome
 
    mov ah,02h
    int 21h
 
 
    je conti:
    inc bp
    loop xox

  conti:
  mov cx,5d
  mov ch,bh                                  ;Recuperar Ch(id)
  mov bh,1h
  
  orezz:                                     ;Compara o valor do id com o contador
    cmp ch,bh                                ;Se igual salta para show onde sera feito o processo
    je showw
    inc bh                                   ;Senao incrementa contador e di
    inc di 
    loop orezz                                
                                             ;Faz o processo ate id e contador serem iguais
  showw:
    call espaco
    call espaco
  
    lea dx,msg23
    mov ah,09h
    int 21h
   
    mov al,[di]                              ;Coloca em al o valor do saldo/montante

  
    mov dl,0Ah
    mov ah,0h                                ;Coloca em DL o primeiro digito do montante
    div dl
    mov dh,ah
 
    mov dl,al
    add dl,30h
  
    call mostrar                             ;Funcao mostar conteudo de dl
   
    mov dl,dh                                ;Coloca em DL o segundo digito do montante
    add dl,30h
  
    call mostrar                             ;Funcao mostrar conteudo de dl
    
    lea dx,msg88
    mov ah,09h
    int 21h
   
    lea dx,msg36
    mov ah,09h
    int 21h 
   
  valorlevantar1:                            ;Onde sera introduzido o primeiro digito do valor a levantar
     
     call introduzirquantialevantar1         ;Funcao para tomar e validar o primeiro digito do valor a levantar
     
     sub al,30h
     mov bl,10d
     mul bl
     mov dh,al 
     
  valorlevantar2:                            ;Onde sera introduzido o segundo digito do valor a levantar
     
     call introduzirquantialevantar2         ;Funcao para tomar e validar o segundo digito do valor a levantar
   
     sub al,30h
     add al,dh
     mov bl,al 
      
     lea dx,msg88
     mov ah,09h
     int 21h
         
     mov bh,[di]                             ;Coloca o valor do montante disponivel em bh
       
     cmp bl,bh
      ja saldomenor                          ;Compara com o valor disponivel com o valor a levantar
                                             ;Se valor a levantar maior que valor disponivel, erro saldo insuficiente
     sub bh,bl                               ;Se valor disponivel maior que valor a levantar 
                                             ;Subtrair o valor disponivel por valor a levantar
     mov [di],bh
                                             ;Colocar na posicao de di o Resultado e o novo saldo
     call espaco
     call espaco
       
     cmp bl,00h                              ;Se o montante a levantar for 0 a mensagem operacao conlcuida nao sera exibida
      je falouu
             
     lea dx,msg41
     mov ah,09h
     int 21h 
                                             ;salta a mensagem41
     Falouu:    
      call espaco
      call espaco
        
      lea dx,msg40
      mov ah,09h
      int 21h 
       
      mov al,[di]                            ;Mover para al, o valor saldo atual
       
      mov dl,0Ah
      mov ah,0h                              ;Colocar em DL o primeiro digito
      div dl
      mov dh,ah
 
      mov dl,al
      add dl,30h
  
      call mostrar                           ;Funcao mostrar conteudo de DL no display
   
      mov dl,dh                              ;Colocar em DL o segundo digito
      add dl,30h
  
      call mostrar                           ;Funcao mostrar conteudo de DL no display

      lea dx,msg88
      mov ah,09h
      int 21h
       
      call espaco
      call espaco
  
      call dataehorasaldo                    ;Funcao mostrar no display data e hora atual do sistema

      
      call espaco
       
      jmp voltarmenu                         ;salto para opcoes de voltar menu
       
      saldomenor:                            ;Erro saldo menor
       
         call somalerta                      ;Funcao som beep
       
         call espaco
       
         lea dx,msg37
         mov ah,09h
         int 21h 
       
         oll:                                ;Opcao colocar outro valor ou voltar para menu cliente
           call espaco
         
           lea dx,msg38
           mov ah,09h
           int 21h
       
           call espaco
       
           lea dx,msg39
           mov ah,09h
           int 21h
       
           call introduzirpin                 ;Funcao introduzir numero sem o apresentar no display
       
           cmp al,31h
           je primeiro                        ;Se numero for 31h, reentroduzir nova quantia
           cmp al,30h
           je voltarmenu                      ;Se nuemro for 30h, ir para menu cliente
                
           call limpar                        ;Funcao limpar display
       
            lea dx,msg26
            mov ah,09h                        ;Caso o utilizador nao introduzir um opcao valida tera de reentroduzir um valor
            int 21h 
       
            jmp oll 
        
    
segundo:                                      ;Opcao 2 do menu client

  call limpar                                 ;Funcao limpar display
  mov bh,ch                                   ;Colocar Ch(id) em Bh para nao perde-lo
  
  mov di,0000                                 ;Apontar di para a primeira posicao onde foram guardados os montantes
  mov bp,0007h
                                     
  lea dx,msg50
  mov ah,09h
  int 21h  
  
  call espaco
  
  lea dx,msg404
  mov ah,09h
  int 21h 
  
  mostrarnome:                                ;Mostra o nome do cliente
   
   
   call espaco
   call espaco
   
   lea dx,msg55
   mov ah,09h
   int 21h
   xo:
    mov dl,[bp]                                ;Apanha os valores primeiros de bp apartir de 0007h ate encontrar 13d e apresenta no display formando o nome
    cmp dl,13d 
 
    mov ah,02h
    int 21h
 
 
    je cont:
    inc bp
    loop xo

  cont:                                       ;Contador loop
  mov cx,5d
  mov ch,bh                                   ;Recuperar Ch(id)
  mov bh,1h                                   ;Bh como contador
  orezzz:                                     ;Comparar ID com contador
   cmp ch,bh                                  ;Se forem iguais, salta para show onde sera feito o processo de deposito
   je showww                                  ;senao
   inc bh                                     
   inc di                                     ;Incrementar contador e di(posicao memoria,montantes)
   loop orezzz
                                              ;Continuar a vereficar ate que Ch e bh forem iguais
  showww:
   call espaco
  
   lea dx,msg23
   mov ah,09h
   int 21h
   
   mov al,[di]                                ;Mover o valor do montante correspondente ao Id para AL

  
   mov dl,0Ah
   mov ah,0h
   div dl                                     ;Colocar o primeiro digito em DL
   mov dh,ah
 
   mov dl,al
   add dl,30h
                                              ;Funcao para mostrar o conteudo de DL
   call mostrar
   
   mov dl,dh
   add dl,30h                                 ;Colocar o segundo digito em DL
  
   call mostrar                               ;Funcao para mostrar o conteudo de DL
  
   lea dx,msg88
   mov ah,09h
   int 21h
   
     lea dx,msg51
     mov ah,09h
     int 21h 
   
   valordepositar1:                           ;Onde sera Tomado o primeiro digito do valor a depositar
     
       call introduzirquantiadepositar1       ;Funcao para tomar e valida o primeiro digito do valor a depositar
     
       sub al,30h
       mov bl,10d
       mul bl
       mov dh,al 
     
    valordepositar2:                          ;Onde sera Tomado o segundo digito do valor a depositar
     
       call introduzirquantiadepositar2       ;Funcao para tomar e valida o segundo digito do valor a depositar
   
       sub al,30h
       add al,dh
       mov bl,al 
       
       lea dx,msg88
       mov ah,09h
       int 21h
         
       mov bh,[di]                            ;Mover valor saldo atual para bh

       
       add bh,bl                              ;Comparar Saldo atual com o saldo a depositar
       
       cmp bh,63h
       ja saldoexcedente                      ;SE o Total=bh+bl for maior de 63h(99d) nao sera possivel
                                              ;Senao continua
                                              
       mov [di],bh
                                              ;E coloca na posicao di um novo valor, saldo antigo + saldo depositado
       call espaco
       call espaco
       
       cmp bl,00h                             ;Se o montante a levantar for 0 a mensagem operacao conlcuida nao sera exibida
        je falouuu
             
       lea dx,msg41
       mov ah,09h
       int 21h
        
      falouuu:  
       call espaco
       call espaco
        
       lea dx,msg40
       mov ah,09h
       int 21h 
                                              ;Coloca o valor do saldo atual em al
       mov al,[di]
       
       mov dl,0Ah
       mov ah,0h                              ;Coloca o primeiro digito em DL
       div dl
       mov dh,ah
 
       mov dl,al
       add dl,30h
                                              ;Funcao mostra conteudo de DL
       call mostrar
                                              ;Coloca o segundo digito em DL
       mov dl,dh
       add dl,30h
  
       call mostrar                           ;Funcao mostra conteudo de DL

       lea dx,msg88
       mov ah,09h
       int 21h
       
       call espaco
       call espaco
  
       call dataehorasaldo                    ;Funcao mostrar data e hora do sistema

       call espaco
       
       jmp voltarmenu                         ;Opcao de ir para menu cliente ou sair da maquina atm
       
       saldoexcedente:                        ;Saldo maior que 99 contos
       
         call somalerta                       ;Funcao som beep
       
         call espaco
       
         lea dx,msg52
         mov ah,09h
         int 21h
       

         lea dx,msg53
         mov ah,09h
         int 21h
       
         lea dx,msglimpe
         mov ah,09h
         int 21h
        
       
       ollll:                                  ;Opcao reentroduzir uma nova quantia a depositar valida ou volatr para menu cliente
         call espaco
      
         lea dx,desejo
         mov ah,09h
         int 21h
       
         call espaco
       
         lea dx,msg39
         mov ah,09h
         int 21h
       
         call introduzirpin                   ;Funcao tomar numero sem o apresentar no display
       
         cmp al,31h                           ;Se introduzido 31h, reentroduz a quantia a depositar
          je segundo
         cmp al,30h
          je voltarmenu                       ;Se introduzido 30h, volta para o menu do cliente
                
       call limpar                            ;Se nao introduzido 31h nem 30h, sera pedido para escolher a opcao denovo
       
       lea dx,msg26
       mov ah,09h
       int 21h 
       
       jmp ollll 

    
limpar:                                       ;Funcao para limpar display

 mov ax,03h
 int 10h
 ret  
 

espaco:
                                              ;Funcao para dar uma linha/espaco
 lea dx,msg0
 mov ah,09h
 int 21h
 ret
     
     
introduzir:                                   ;Funcao para introduzir um carater
                                              
  mov ah,01h
  int 21h 
  ret 
                                              ;Funcao para mostar o conteudo de DL no display
mostrar:

  mov ah,02h
  int 21h 
  ret 
  
introduzirpin:                                ;Funcao para introduzir um numero sem o apresentar no display

  mov ah,7h
  int 21h 
  ret 
                                              ;Funcao Som beep
somalerta:

  mov dl, 07h
  mov ah, 2h
  int 21h
  ret
  
esperartecla:                                 ;Funcao esperar qualquer tecla para continuar o codico

  mov ah,0h
  int 16h
  ret 
  
mostrarnumerocliente:                         ;Funcao para mostar o numero do cliente/id

   cmp cx,5d
    je id1
   cmp cx,4d
    je id2
   cmp cx,3d                                  ;Compara o valor de cx, por exemplo se cx for 5d entao sera  colocado em dl o valor 31h(1 no display)  para ser apresentado no display
    je id3
   cmp cx,2d
    je id4
   cmp cx,1d
    je id5
    
   id1: 
     mov dl,31h
     ret
     
   id2: 
     mov dl,32h
     ret
     
   id3:                                       ;Colocar o numero do cliente el DL
     mov dl,33h
     ret 
     
   id4: 
     mov dl,34h
     ret
   
   id5: 
     mov dl,35h 
     ret

introduzirquantialevantar1:                   ;Funcao Para Tomar e validar um numero

   call introduzir
 
   cmp al,30h                                 ;Compara o digito se menor que 30h e maior que 39h apaga o carater introduzido
    jb fuilevantar
   cmp al,39h
    ja fuilevantar
   ret 
 
  fuilevantar:
      call somalerta                          ;Funcao som beel
      call apagar                             ;Funcao backspace
  
      lea dx, msg33
      mov ah,09h
      int 21h
  
      call apagar                             ;Funcao backspace
                                              
      jmp valorlevantar1                      ;Volta a ser introduzido o digito
  
  
introduzirquantialevantar2:                   ;Funcao Para Tomar e validar um numero
                                              
   call introduzir
   
   cmp al,30h
    jb fuiiilevantar                          ;Compara o digito se menor que 30h e maior que 39h apaga o carater introduzido
   cmp al,39h
    ja fuiiilevantar
   ret
  
   fuiiilevantar:
     call somalerta                           ;Funcao som beel
  
     call apagar
     call apagar                              ;Funcao backspace
  
     lea dx, msg32
     mov ah,09h
     int 21h
                                              ;Funcao backspace
     call apagar 
     call apagar
                                              
     jmp valorlevantar1                       ;Volta a ser introduzido o digito
     
       
introduzirquantiadepositar1:                  ;Funcao Para Tomar e validar um numero

   call introduzir
 
   cmp al,30h
    jb fuidepositar                           ;Compara o digito se menor que 30h e maior que 39h apaga o carater introduzido
   cmp al,39h
    ja fuidepositar
   ret 
 
   fuidepositar:                              
      call somalerta                          ;Funcao som beel
      call apagar                             ;Funcao backspace
  
      lea dx, msg33
      mov ah,09h
      int 21h
                                              ;Funcao backspace
      call apagar
  
      jmp valordepositar1                     ;Volta a ser introduzido o digito
  
  
introduzirquantiadepositar2:                  ;Funcao Para Tomar e validar um numero

   call introduzir
 
   cmp al,30h
    jb fuiiidepositar                         ;Compara o digito se menor que 30h e maior que 39h apaga o carater introduzido
   cmp al,39h
    ja fuiiidepositar
   ret
  
   fuiiidepositar:
      call somalerta 
  
      call apagar
      call apagar
  
      lea dx, msg32
      mov ah,09h
      int 21h
   
      call apagar 
      call apagar
   
      jmp valordepositar1                      ;Volta a ser introduzido o digito


tomarvalor1admmontante:                        ;Funcao Para Tomar e validar um numero

   call introduzir
 
   cmp al,30h
    jb fuimontante
   cmp al,39h                                  ;Compara o digito se menor que 30h e maior que 39h apaga o carater introduzido
    ja fuimontante 
   ret 
 
  fuimontante:
     call somalerta
     call apagar 
  
     lea dx, msg33
     mov ah,09h
     int 21h
  
     call apagar
  
     jmp valormontante1                        ;Volta a ser introduzido o digito 
     
  
tomarvalor2admmontante:                        ;Funcao Para Tomar e validar um numero

   call introduzir
   
   cmp al,30h
    jb fuiiimontante                           ;Compara o digito se menor que 30h e maior que 39h apaga o carater introduzido
   cmp al,39h
    ja fuiiimontante
    ret
   fuiiimontante:
      call somalerta 
  
      call apagar
      call apagar
  
      lea dx, msg32
      mov ah,09h
      int 21h
   
      call apagar 
      call apagar
   
      jmp valormontante1                       ;Volta a ser introduzido o digito
       
  
tomarvalor1admpin:                             ;Funcao Para Tomar e validar um numero
                                              
   call introduzir
 
   cmp al,30h                                  ;Compara o digito se menor que 30h e maior que 39h apaga o carater introduzido
    jb fui
   cmp al,39h
    ja fui
   ret 
 
   fui:
      call somalerta
      call apagar 
     
      lea dx, msg33
      mov ah,09h
      int 21h
  
      call apagar
                                               ;Volta a ser introduzido o digito 
      jmp valorpin1                          
  
  
tomarvalor2admpin:                             ;Funcao Para Tomar e validar um numero

   call introduzir
 
   cmp al,30h
    jb fuiii                                   ;Compara o digito se menor que 30h e maior que 39h apaga o carater introduzido
   cmp al,39h
    ja fuiii
    ret
  
   fuiii:
      call somalerta 
  
      call apagar
      call apagar
  
      lea dx, msg32
      mov ah,09h
      int 21h
     
      call apagar 
      call apagar
                                              ;Volta a ser introduzido o digito
      jmp valorpin1 

apagar:                                       ;Funcao backspace

  mov dl,8 
  mov ah,02h
  int 21h
  ret    
    
dataehorasaldo:
 ;data
 ;Ano CX=CH+CL
 ;Mes DH
 ;dia DL

  lea dx,msg70
  mov ah,09h
  int 21h 
   
  mov bh,ch                                   ;Colocar ch(id) em bh para nao o perder
   
  mov ah, 2ah                                 ;Servico Data do sistema
  int 21h 
   
   mov ch,bh                                  ;Recuperar id
   
   mov al,dl                                  ;Coloca em al o valor do dia
  
   mov dl,0Ah
   mov ah,0h                                  ;Coloca o primeiro digito em dl
   div dl
   mov dh,ah
 
   mov dl,al
   add dl,30h
                                              ;Funcao mostar conteudo DL no display
   call mostrar
   
   mov dl,dh                                  ;Coloca o segundo digito em dl
   add dl,30h
  
   call mostrar                               ;Funcao mostrar conteundo DL no display
  
  lea dx,msg84
  mov ah,09h
  int 21h
  
  
  mov ah, 2ah                                 ;Servico Data do Sitema
  int 21h

   
  call mes                                    ;Funcao para determinar mes por escrito

  lea dx,msg45
  mov ah,09h
  int 21h
  
  lea dx,msg83
  mov ah,09h
  int 21h
  
 ;time 
 ;Hora CH
 ;Minutos CL
 ;segundos DL

                                               ;Servico Horas do sistema
 mov ah, 2ch
 int 21h 


   mov al,ch                                   ;Colocar as Horas em al
  
   mov dl,0Ah
   mov ah,0h                                   ;Colocar o primeiro digito em DL
   div dl
   mov dh,ah
 
   mov dl,al
   add dl,30h
                                               ;Funcao mostar o conteudo de DL no display
   call mostrar
   
   mov dl,dh                                   ;Colocar o segundo digito em DL
   add dl,30h
  
   call mostrar                                ;Funcao mostrar o conteudo de DL no display 
   
   lea dx,msg85
   mov ah,09h
   int 21h 
   
   lea dx,msg86
   mov ah,09h
   int 21h
   
 mov ah, 2ch                                   ;Servico Horas do sistema
 int 21h 

   mov ch,bh                                   ;Recupera Id em Ch
   
   mov al,cl                                   ;Colocar os minutos em al
  
   mov dl,0Ah
   mov ah,0h                                   ;Colocar o primeiro digito em DL
   div dl
   mov dh,ah
 
   mov dl,al
   add dl,30h
  
   call mostrar                                ;Funcao mostrar o conteudo de Dl no display
   
   mov dl,dh                                   ;Coloca em DL o segundo digito
   add dl,30h
  
   call mostrar                                ;Funcao mostar o conteudo de DL
   
   lea dx,msg87
   mov ah,09h
   int 21h
   ret

 mes:                                          
  cmp dh,01h
   je janeiro
  cmp dh,02h
   je fevereiro
  cmp dh,03h
   je marco
  cmp dh,04h
   je abril
  cmp dh,05h
   je maio                                      ;Perante o valor de dh(mes) do servico de data  so sistema assim sera determinado mes por escrito
  cmp dh, 06h
   je junho
  cmp dh,07h
   je julho
  cmp dh,08h
   je agosto
  cmp dh,09h
   je setembro
  cmp dh,10h
   je outubro
  cmp dh,11h
   je novembro
  cmp dh,12h
   je dezembro
    
  Janeiro:
  
    lea dx,msg71
    mov ah,09h
    int 21h  
    ret
   
  Fevereiro:                                     ;Mensagem do mes por escrito no display
   
    lea dx,msg72
    mov ah,09h
    int 21h  
    ret
   
  Marco:
  
    lea dx,msg73
    mov ah,09h
    int 21h  
    ret
   
  Abril:
  
    lea dx,msg74
    mov ah,09h
    int 21h                                      ;Mensagem do mes por escrito no display
    ret
   
  Maio:
  
    lea dx,msg75
    mov ah,09h
    int 21h  
    ret
  
  Junho:
  
    lea dx,msg76
    mov ah,09h
    int 21h  
    ret
  
  Julho:
  
    lea dx,msg77
    mov ah,09h                                   ;Mensagem do mes por escrito no display
    int 21h  
    ret
  
  Agosto:
  
    lea dx,msg78
    mov ah,09h
    int 21h  
    ret 
   
  Setembro:
   
    lea dx,msg79
    mov ah,09h
    int 21h  
    ret
   
  Outubro:
  
    lea dx,msg80
    mov ah,09h
    int 21h  
    ret                                          ;Mensagem do mes por escrito no display
   
  Novembro:
  
    lea dx,msg81
    mov ah,09h
    int 21h  
    ret
    
  Dezembro:
  
    lea dx,msg82
    mov ah,09h
    int 21h  
    ret            

sair:                                             ;Fim do Programa

End