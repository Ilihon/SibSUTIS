;-----------------------------------------------------------------------------------------------------
; �ਬ�� ⨯�筮� �ணࠬ��(᮪���� ��ਠ��)
;-----------------------------------------------------------------------------------------------------
model small		; ��४⨢� ���������� ��� ॠ�쭮�� ०���
.data			; ᥣ���� ������
;----------------------------
; ��室�� ����� 
msg	db	0dh,0ah
msg1	db	13,10,'������ �᫮(1-9)(0 ��� Enter ��室)$'
msg2	db	13,10,'����稫���:$'
msg3	db	'�訡��:$'
;----------------------------
.code			; ᥣ���� ����
start:			; �窠 �室� � �ணࠬ��(��砫�)
	mov	ax,@data	; ��뢠�� ॣ���� ds � ᥣ���⮬
	mov	ds,ax		;	������ �१ ॣ���� ax
	
;------------------------------------------------------
; ���(������� ��ᥬ����) �ணࠬ��
met:
	mov  ah,09h
	lea  dx, msg1
	int  21h

	mov  ah,01h
	int  21h

	cmp  al,0dh
	je   fin

	cmp  al, '0'
	jb   error

	cmp  al, '9'
	ja   error

	jmp  met
		
fin:
	error:
	push  ax
	mov  ah, 09h
	lea  dx, msg3
	int  21h

	pop  ax
	mov  ah,02h
	mov  dl,al
	int  21h
	jmp  met

;-------------------------------------------------
	mov	ax,4c00h	; 4c00h - ��� �㭪樨 ��� �⠭���⭮��
				;	 ��室�
	int	21h		; �⠭����� ��室
;---------------------------------
;  ����ணࠬ��
;---------------------------------
end	start			; ����� �ணࠬ��