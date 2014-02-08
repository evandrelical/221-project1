	.arch armv6
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"hangman.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"--------------------------------------------\000"
	.align	2
.LC1:
	.ascii	"| H  H   A   N   N  GGGG M   M   A   N   N |\000"
	.align	2
.LC2:
	.ascii	"| H  H  A A  NN  N G     MM MM  A A  NN  N |\000"
	.align	2
.LC3:
	.ascii	"| HHHH AAAAA N N N G  GG M M M AAAAA N N N |\000"
	.align	2
.LC4:
	.ascii	"| H  H A   A N  NN G   G M   M A   A N  NN |\000"
	.align	2
.LC5:
	.ascii	"| H  H A   A N   N  GGG  M   M A   A N   N |\000"
	.align	2
.LC6:
	.ascii	"--------------------------------------------\012\000"
	.text
	.align	2
	.global	showLogo
	.type	showLogo, %function
showLogo:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	ldr	r0, .L2
	bl	puts
	ldr	r0, .L2
	bl	puts
	ldr	r0, .L2+4
	bl	puts
	ldr	r0, .L2+8
	bl	puts
	ldr	r0, .L2+12
	bl	puts
	ldr	r0, .L2+16
	bl	puts
	ldr	r0, .L2+20
	bl	puts
	ldr	r0, .L2
	bl	puts
	ldr	r0, .L2+24
	bl	puts
	ldmfd	sp!, {fp, pc}
.L3:
	.align	2
.L2:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.size	showLogo, .-showLogo
	.section	.rodata
	.align	2
.LC7:
	.ascii	"Welcome to the game Hangman!\012\000"
	.align	2
.LC8:
	.ascii	"Player 1 has already entered a word.\000"
	.align	2
.LC9:
	.ascii	"Player 2 now must guess the word exactly.\000"
	.align	2
.LC10:
	.ascii	"Player 2 enters a single character.\000"
	.align	2
.LC11:
	.ascii	"If 10 incorrect guesses have been made, Player 2 lo"
	.ascii	"ses.\000"
	.align	2
.LC12:
	.ascii	"Good luck!\012\000"
	.text
	.align	2
	.global	showStartMsg
	.type	showStartMsg, %function
showStartMsg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	ldr	r0, .L5
	bl	puts
	ldr	r0, .L5+4
	bl	puts
	ldr	r0, .L5+8
	bl	puts
	ldr	r0, .L5+12
	bl	puts
	ldr	r0, .L5+16
	bl	puts
	ldr	r0, .L5+20
	bl	puts
	ldmfd	sp!, {fp, pc}
.L6:
	.align	2
.L5:
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.size	showStartMsg, .-showStartMsg
	.section	.rodata
	.align	2
.LC13:
	.ascii	"Amount of wrong letters: %d\012\012\000"
	.align	2
.LC14:
	.ascii	"____________\012\000"
	.align	2
.LC15:
	.ascii	"  |\000"
	.align	2
.LC16:
	.ascii	"__|_________\012\000"
	.align	2
.LC17:
	.ascii	"  _______\000"
	.align	2
.LC18:
	.ascii	"  |/\000"
	.align	2
.LC19:
	.ascii	"  |/   | \000"
	.align	2
.LC20:
	.ascii	"  |    O \000"
	.align	2
.LC21:
	.ascii	"  |    |\000"
	.align	2
.LC22:
	.ascii	"  |   \\|\000"
	.align	2
.LC23:
	.ascii	"  |    | \000"
	.align	2
.LC24:
	.ascii	"  |   \\|/\000"
	.align	2
.LC25:
	.ascii	"  |   /\000"
	.align	2
.LC26:
	.ascii	"  |   / \\\000"
	.align	2
.LC27:
	.ascii	"  |    X \000"
	.text
	.align	2
	.global	showGallows
	.type	showGallows, %function
showGallows:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L7
.L20:
	.word	.L9
	.word	.L10
	.word	.L11
	.word	.L12
	.word	.L13
	.word	.L14
	.word	.L15
	.word	.L16
	.word	.L17
	.word	.L18
	.word	.L19
.L9:
	ldr	r3, .L21
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	printf
	mov	r0, #10
	bl	putchar
	mov	r0, #10
	bl	putchar
	mov	r0, #10
	bl	putchar
	mov	r0, #10
	bl	putchar
	mov	r0, #10
	bl	putchar
	mov	r0, #10
	bl	putchar
	ldr	r0, .L21+4
	bl	puts
	b	.L7
.L10:
	ldr	r3, .L21
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	printf
	mov	r0, #10
	bl	putchar
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+12
	bl	puts
	b	.L7
.L11:
	ldr	r3, .L21
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	printf
	ldr	r0, .L21+16
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+12
	bl	puts
	b	.L7
.L12:
	ldr	r3, .L21
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	printf
	ldr	r0, .L21+16
	bl	puts
	ldr	r0, .L21+20
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+12
	bl	puts
	b	.L7
.L13:
	ldr	r3, .L21
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	printf
	ldr	r0, .L21+16
	bl	puts
	ldr	r0, .L21+24
	bl	puts
	ldr	r0, .L21+28
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+12
	bl	puts
	b	.L7
.L14:
	ldr	r3, .L21
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	printf
	ldr	r0, .L21+16
	bl	puts
	ldr	r0, .L21+24
	bl	puts
	ldr	r0, .L21+28
	bl	puts
	ldr	r0, .L21+32
	bl	puts
	ldr	r0, .L21+32
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+12
	bl	puts
	b	.L7
.L15:
	ldr	r3, .L21
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	printf
	ldr	r0, .L21+16
	bl	puts
	ldr	r0, .L21+24
	bl	puts
	ldr	r0, .L21+28
	bl	puts
	ldr	r0, .L21+36
	bl	puts
	ldr	r0, .L21+40
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+12
	bl	puts
	b	.L7
.L16:
	ldr	r3, .L21
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	printf
	ldr	r0, .L21+16
	bl	puts
	ldr	r0, .L21+24
	bl	puts
	ldr	r0, .L21+28
	bl	puts
	ldr	r0, .L21+44
	bl	puts
	ldr	r0, .L21+40
	bl	puts
	ldr	r0, .L21+8
	bl	puts
	ldr	r0, .L21+12
	bl	puts
	b	.L7
.L17:
	ldr	r3, .L21
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	printf
	ldr	r0, .L21+16
	bl	puts
	ldr	r0, .L21+24
	bl	puts
	ldr	r0, .L21+28
	bl	puts
	ldr	r0, .L21+44
	bl	puts
	ldr	r0, .L21+40
	bl	puts
	ldr	r0, .L21+48
	bl	puts
	ldr	r0, .L21+12
	bl	puts
	b	.L7
.L18:
	ldr	r3, .L21
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	printf
	ldr	r0, .L21+16
	bl	puts
	ldr	r0, .L21+24
	bl	puts
	ldr	r0, .L21+28
	bl	puts
	ldr	r0, .L21+44
	bl	puts
	ldr	r0, .L21+40
	bl	puts
	ldr	r0, .L21+52
	bl	puts
	ldr	r0, .L21+12
	bl	puts
	b	.L7
.L19:
	ldr	r3, .L21
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	printf
	ldr	r0, .L21+16
	bl	puts
	ldr	r0, .L21+24
	bl	puts
	ldr	r0, .L21+56
	bl	puts
	ldr	r0, .L21+44
	bl	puts
	ldr	r0, .L21+40
	bl	puts
	ldr	r0, .L21+52
	bl	puts
	ldr	r0, .L21+12
	bl	puts
	mov	r0, r0	@ nop
.L7:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L22:
	.align	2
.L21:
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.size	showGallows, .-showGallows
	.section	.rodata
	.align	2
.LC28:
	.ascii	"Player 1 - Enter a word (max 10 characters): \000"
	.align	2
.LC29:
	.ascii	"Player 2 - This is the word to guess: %s\012\000"
	.align	2
.LC30:
	.ascii	"Enter the letter(s) you want to guess: \000"
	.align	2
.LC31:
	.ascii	"\012That letter was incorrect.\012\000"
	.align	2
.LC32:
	.ascii	"\012That letter was correct.\012\000"
	.align	2
.LC33:
	.ascii	"%s%s\012\012\000"
	.align	2
.LC34:
	.ascii	"The word including the letters you guessed: \000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, .L37
	mov	r0, r3
	bl	printf
	ldr	r3, .L37+4
	ldr	r3, [r3, #0]
	sub	r2, fp, #40
	mov	r0, r2
	mov	r1, #11
	mov	r2, r3
	bl	fgets
	sub	r3, fp, #40
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	sub	r3, r3, #1
	str	r3, [fp, #-24]
	mvn	r3, #35
	ldr	r2, [fp, #-24]
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #10
	bne	.L24
	mvn	r3, #35
	ldr	r2, [fp, #-24]
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #0]
.L24:
	ldr	r3, [fp, #-24]
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L25
.L28:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L26
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #0]
	b	.L27
.L26:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	mov	r2, #46
	strb	r2, [r3, #0]
.L27:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L25:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	ble	.L28
	bl	showLogo
	bl	showStartMsg
	ldr	r3, .L37+8
	mov	r0, r3
	ldr	r1, [fp, #-28]
	bl	printf
	ldr	r3, .L37+12
	mov	r0, r3
	bl	printf
	b	.L29
.L36:
	bl	getchar
	mov	r3, r0
	strb	r3, [fp, #-29]
	bl	getchar
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L30
.L32:
	mvn	r3, #35
	ldr	r2, [fp, #-20]
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	ldrb	r2, [fp, #-29]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L31
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r2, [fp, #-29]
	strb	r2, [r3, #0]
	mov	r3, #1
	str	r3, [fp, #-12]
.L31:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L30:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	blt	.L32
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L33
	ldr	r0, .L37+16
	bl	puts
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L34
.L33:
	ldr	r0, .L37+20
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L34:
	ldr	r3, .L37+24
	mov	r0, r3
	ldr	r1, .L37+28
	ldr	r2, [fp, #-28]
	bl	printf
	ldr	r0, [fp, #-8]
	bl	showGallows
.L29:
	sub	r3, fp, #40
	ldr	r0, [fp, #-28]
	mov	r1, r3
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L35
	ldr	r3, [fp, #-8]
	cmp	r3, #9
	ble	.L36
.L35:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L38:
	.align	2
.L37:
	.word	.LC28
	.word	stdin
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.size	main, .-main
	.ident	"GCC: (Debian 4.6.3-14+rpi1) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
