Project title : palindromenum
Project path  : C:\Users\Shivanth\Documents\C\tests\palindromenum\

Frame function: main (C:\Users\Shivanth\Documents\C\tests\palindromenum\main.c:7)
Frame address : 0028FF30
--------------------------------------------------------------------------------
00401318	push   %ebp
00401319	mov    %esp,%ebp
0040131B	and    $0xfffffff0,%esp
0040131E	push   %ebx
0040131F	sub    $0x9c,%esp
00401325	call   0x401ca0 <__main>
0040132A	movl   $0x1,0x88(%esp)
00401335	lea    0x1c(%esp),%eax
00401339	mov    %eax,(%esp)
0040133C	call   0x401edc <gets>
00401341	lea    0x1c(%esp),%eax
00401345	mov    %eax,(%esp)
00401348	call   0x401ee4 <strlen>
0040134D	mov    %eax,0x84(%esp)
00401354	mov    0x84(%esp),%eax
0040135B	and    $0x1,%eax
0040135E	test   %al,%al
00401360	je     0x401584 <main+620>
00401366	mov    0x84(%esp),%eax
0040136D	mov    %eax,%edx
0040136F	shr    $0x1f,%edx
00401372	lea    (%edx,%eax,1),%eax
00401375	sar    %eax
00401377	mov    %eax,0x8c(%esp)
0040137E	movl   $0x1,0x80(%esp)
00401389	jmp    0x40155a <main+578>
0040138E	mov    0x80(%esp),%eax
00401395	mov    0x8c(%esp),%edx
0040139C	mov    %edx,%ecx
0040139E	sub    %eax,%ecx
004013A0	mov    %ecx,%eax
004013A2	mov    0x1c(%esp,%eax,1),%al
004013A6	movsbl %al,%eax
004013A9	mov    %eax,(%esp)
004013AC	call   0x401837 <to_digit>
004013B1	mov    %eax,%ebx
004013B3	mov    0x8c(%esp),%eax
004013BA	inc    %eax
004013BB	mov    0x1c(%esp,%eax,1),%al
004013BF	movsbl %al,%eax
004013C2	mov    %eax,(%esp)
004013C5	call   0x401837 <to_digit>
004013CA	cmp    %eax,%ebx
004013CC	jge    0x401438 <main+288>
004013CE	cmpl   $0x0,0x88(%esp)
004013D6	je     0x401438 <main+288>
004013D8	mov    0x80(%esp),%eax
004013DF	mov    0x8c(%esp),%edx
004013E6	mov    %edx,%ebx
004013E8	sub    %eax,%ebx
004013EA	mov    %ebx,%eax
004013EC	mov    %eax,0x4(%esp)
004013F0	lea    0x1c(%esp),%eax
004013F4	mov    %eax,(%esp)
004013F7	call   0x4017f6 <incr>
004013FC	mov    0x80(%esp),%eax
00401403	mov    0x8c(%esp),%edx
0040140A	add    %eax,%edx
0040140C	mov    0x80(%esp),%eax
00401413	mov    0x8c(%esp),%ecx
0040141A	mov    %ecx,%ebx
0040141C	sub    %eax,%ebx
0040141E	mov    %ebx,%eax
00401420	mov    0x1c(%esp,%eax,1),%al
00401424	mov    %al,0x1c(%esp,%edx,1)
00401428	movl   $0x0,0x88(%esp)
00401433	jmp    0x401553 <main+571>
00401438	mov    0x80(%esp),%eax
0040143F	mov    0x8c(%esp),%edx
00401446	mov    %edx,%ecx
00401448	sub    %eax,%ecx
0040144A	mov    %ecx,%eax
0040144C	mov    0x1c(%esp,%eax,1),%al
00401450	movsbl %al,%eax
00401453	mov    %eax,(%esp)
00401456	call   0x401837 <to_digit>
0040145B	mov    %eax,%ebx
0040145D	mov    0x80(%esp),%eax
00401464	mov    0x8c(%esp),%edx
0040146B	lea    (%edx,%eax,1),%eax
0040146E	mov    0x1c(%esp,%eax,1),%al
00401472	movsbl %al,%eax
00401475	mov    %eax,(%esp)
00401478	call   0x401837 <to_digit>
0040147D	cmp    %eax,%ebx
0040147F	jle    0x4014c7 <main+431>
00401481	cmpl   $0x0,0x88(%esp)
00401489	je     0x4014c7 <main+431>
0040148B	mov    0x80(%esp),%eax
00401492	mov    0x8c(%esp),%edx
00401499	add    %eax,%edx
0040149B	mov    0x80(%esp),%eax
004014A2	mov    0x8c(%esp),%ecx
004014A9	mov    %ecx,%ebx
004014AB	sub    %eax,%ebx
004014AD	mov    %ebx,%eax
004014AF	mov    0x1c(%esp,%eax,1),%al
004014B3	mov    %al,0x1c(%esp,%edx,1)
004014B7	movl   $0x0,0x88(%esp)
004014C2	jmp    0x401553 <main+571>
004014C7	mov    0x80(%esp),%eax
004014CE	mov    0x8c(%esp),%edx
004014D5	mov    %edx,%ecx
004014D7	sub    %eax,%ecx
004014D9	mov    %ecx,%eax
004014DB	mov    0x1c(%esp,%eax,1),%al
004014DF	movsbl %al,%eax
004014E2	mov    %eax,(%esp)
004014E5	call   0x401837 <to_digit>
004014EA	mov    %eax,%ebx
004014EC	mov    0x80(%esp),%eax
004014F3	mov    0x8c(%esp),%edx
004014FA	lea    (%edx,%eax,1),%eax
004014FD	mov    0x1c(%esp,%eax,1),%al
00401501	movsbl %al,%eax
00401504	mov    %eax,(%esp)
00401507	call   0x401837 <to_digit>
0040150C	cmp    %eax,%ebx
0040150E	jne    0x40151a <main+514>
00401510	cmpl   $0x0,0x88(%esp)
00401518	jne    0x401552 <main+570>
0040151A	cmpl   $0x0,0x88(%esp)
00401522	jne    0x401553 <main+571>
00401524	mov    0x80(%esp),%eax
0040152B	mov    0x8c(%esp),%edx
00401532	add    %eax,%edx
00401534	mov    0x80(%esp),%eax
0040153B	mov    0x8c(%esp),%ecx
00401542	mov    %ecx,%ebx
00401544	sub    %eax,%ebx
00401546	mov    %ebx,%eax
00401548	mov    0x1c(%esp,%eax,1),%al
0040154C	mov    %al,0x1c(%esp,%edx,1)
00401550	jmp    0x401553 <main+571>
00401552	nop
00401553	incl   0x80(%esp)
0040155A	mov    0x80(%esp),%eax
00401561	cmp    0x8c(%esp),%eax
00401568	jle    0x40138e <main+118>
0040156E	mov    0x80(%esp),%eax
00401575	mov    0x8c(%esp),%edx
0040157C	lea    (%edx,%eax,1),%eax
0040157F	movb   $0x0,0x1c(%esp,%eax,1)
00401584	mov    0x84(%esp),%eax
0040158B	and    $0x1,%eax
0040158E	test   %eax,%eax
00401590	jne    0x4017ae <main+1174>
00401596	mov    0x84(%esp),%eax
0040159D	mov    %eax,%edx
0040159F	shr    $0x1f,%edx
004015A2	lea    (%edx,%eax,1),%eax
004015A5	sar    %eax
004015A7	mov    %eax,0x8c(%esp)
004015AE	movl   $0x0,0x80(%esp)
004015B9	jmp    0x40179a <main+1154>
004015BE	mov    0x80(%esp),%eax
004015C5	mov    0x8c(%esp),%edx
004015CC	mov    %edx,%ecx
004015CE	sub    %eax,%ecx
004015D0	mov    %ecx,%eax
004015D2	dec    %eax
004015D3	mov    0x1c(%esp,%eax,1),%al
004015D7	movsbl %al,%eax
004015DA	mov    %eax,(%esp)
004015DD	call   0x401837 <to_digit>
004015E2	mov    %eax,%ebx
004015E4	mov    0x80(%esp),%eax
004015EB	mov    0x8c(%esp),%edx
004015F2	lea    (%edx,%eax,1),%eax
004015F5	mov    0x1c(%esp,%eax,1),%al
004015F9	movsbl %al,%eax
004015FC	mov    %eax,(%esp)
004015FF	call   0x401837 <to_digit>
00401604	cmp    %eax,%ebx
00401606	jge    0x401674 <main+860>
00401608	cmpl   $0x0,0x88(%esp)
00401610	je     0x401674 <main+860>
00401612	mov    0x80(%esp),%eax
00401619	mov    0x8c(%esp),%edx
00401620	mov    %edx,%ebx
00401622	sub    %eax,%ebx
00401624	mov    %ebx,%eax
00401626	dec    %eax
00401627	mov    %eax,0x4(%esp)
0040162B	lea    0x1c(%esp),%eax
0040162F	mov    %eax,(%esp)
00401632	call   0x4017f6 <incr>
00401637	mov    0x80(%esp),%eax
0040163E	mov    0x8c(%esp),%edx
00401645	add    %eax,%edx
00401647	mov    0x80(%esp),%eax
0040164E	mov    0x8c(%esp),%ecx
00401655	mov    %ecx,%ebx
00401657	sub    %eax,%ebx
00401659	mov    %ebx,%eax
0040165B	dec    %eax
0040165C	mov    0x1c(%esp,%eax,1),%al
00401660	mov    %al,0x1c(%esp,%edx,1)
00401664	movl   $0x0,0x88(%esp)
0040166F	jmp    0x401793 <main+1147>
00401674	mov    0x80(%esp),%eax
0040167B	mov    0x8c(%esp),%edx
00401682	mov    %edx,%ecx
00401684	sub    %eax,%ecx
00401686	mov    %ecx,%eax
00401688	dec    %eax
00401689	mov    0x1c(%esp,%eax,1),%al
0040168D	movsbl %al,%eax
00401690	mov    %eax,(%esp)
00401693	call   0x401837 <to_digit>
00401698	mov    %eax,%ebx
0040169A	mov    0x80(%esp),%eax
004016A1	mov    0x8c(%esp),%edx
004016A8	lea    (%edx,%eax,1),%eax
004016AB	mov    0x1c(%esp,%eax,1),%al
004016AF	movsbl %al,%eax
004016B2	mov    %eax,(%esp)
004016B5	call   0x401837 <to_digit>
004016BA	cmp    %eax,%ebx
004016BC	jle    0x401705 <main+1005>
004016BE	cmpl   $0x0,0x88(%esp)
004016C6	je     0x401705 <main+1005>
004016C8	mov    0x80(%esp),%eax
004016CF	mov    0x8c(%esp),%edx
004016D6	add    %eax,%edx
004016D8	mov    0x80(%esp),%eax
004016DF	mov    0x8c(%esp),%ecx
004016E6	mov    %ecx,%ebx
004016E8	sub    %eax,%ebx
004016EA	mov    %ebx,%eax
004016EC	dec    %eax
004016ED	mov    0x1c(%esp,%eax,1),%al
004016F1	mov    %al,0x1c(%esp,%edx,1)
004016F5	movl   $0x0,0x88(%esp)
00401700	jmp    0x401793 <main+1147>
00401705	mov    0x80(%esp),%eax
0040170C	mov    0x8c(%esp),%edx
00401713	mov    %edx,%ecx
00401715	sub    %eax,%ecx
00401717	mov    %ecx,%eax
00401719	dec    %eax
0040171A	mov    0x1c(%esp,%eax,1),%al
0040171E	movsbl %al,%eax
00401721	mov    %eax,(%esp)
00401724	call   0x401837 <to_digit>
00401729	mov    %eax,%ebx
0040172B	mov    0x80(%esp),%eax
00401732	mov    0x8c(%esp),%edx
00401739	lea    (%edx,%eax,1),%eax
0040173C	mov    0x1c(%esp,%eax,1),%al
00401740	movsbl %al,%eax
00401743	mov    %eax,(%esp)
00401746	call   0x401837 <to_digit>
0040174B	cmp    %eax,%ebx
0040174D	jne    0x401759 <main+1089>
0040174F	cmpl   $0x0,0x88(%esp)
00401757	jne    0x401792 <main+1146>
00401759	cmpl   $0x0,0x88(%esp)
00401761	jne    0x401793 <main+1147>
00401763	mov    0x80(%esp),%eax
0040176A	mov    0x8c(%esp),%edx
00401771	add    %eax,%edx
00401773	mov    0x80(%esp),%eax
0040177A	mov    0x8c(%esp),%ecx
00401781	mov    %ecx,%ebx
00401783	sub    %eax,%ebx
00401785	mov    %ebx,%eax
00401787	dec    %eax
00401788	mov    0x1c(%esp,%eax,1),%al
0040178C	mov    %al,0x1c(%esp,%edx,1)
00401790	jmp    0x401793 <main+1147>
00401792	nop
00401793	incl   0x80(%esp)
0040179A	mov    0x80(%esp),%eax
004017A1	cmp    0x8c(%esp),%eax
004017A8	jle    0x4015be <main+678>
004017AE	movl   $0x0,0x80(%esp)
004017B9	jmp    0x4017d8 <main+1216>
004017BB	mov    0x80(%esp),%eax
004017C2	mov    0x1c(%esp,%eax,1),%al
004017C6	movsbl %al,%eax
004017C9	mov    %eax,(%esp)
004017CC	call   0x401eec <putchar>
004017D1	incl   0x80(%esp)
004017D8	mov    0x80(%esp),%eax
004017DF	cmp    0x84(%esp),%eax
004017E6	jl     0x4017bb <main+1187>
004017E8	mov    $0x0,%eax
004017ED	add    $0x9c,%esp
004017F3	pop    %ebx
004017F4	leave
004017F5	ret
