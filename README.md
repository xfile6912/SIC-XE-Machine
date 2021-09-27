# SIC/XE Machine
------
### 구현 명령
#### Shell, Memory Space, Opcode Table
    -	h[elp] : Shell에서 실행 가능한 모든 명령어들의 리스트를 화면에 출력
    -	d[ir] : 현재 directory에 있는 파일들을 출력
    - q[uit] : Shell을 종료
    - hi[story] : 현재까지 사용한 명령어들으 순서대로 번호와 함께 출력
    - du[mp] [start, end] : 할당되어 있는 메모리의 내용으 출력(메모리 주소, 메모리내용(16진수); 메모리 내용(ASCII, 20~7E))
    - e[dit] address, value : 메모리의 address번지 값을 value에 지정된 값으로 변경
    - f[ill] start, end, value : 메모리의 start번지부 end번지 까지의 값을 value에 지정된 값으로 변경
    - reset : 메모리 전체를 전부 0을 변경
    - opcode mnemonic: 명령어에 해당하는 opcode를 출력
    - opcodelist: opcode hash table의 내용을 출력
#### Assemble 기능
    -	type filename: filename에 해당하는 파일을 현재 디렉토리에서 읽어서 화면에 출력
    -	assemble filename: filename에 햐당하는 소스파일을 읽어서 object파일과 리스팅 파일을 생성
    -	symbol: 가자 최근의 assemble 과정에서 생성된 symbol table을 화면에 출력
#### Linking, Loading 기능
    -	progaddr [address] : loader 또는 run 명령어르 수행할 때 시작하는 주소를 지정
    -	loader [object filename][object filename2] [...] : filename1, 2, ...에 해당하는 파일으 읽어서 linking 작업을 수해 후 가사 메모리에 그 결과를 기록
    -	bp [address]: breakpoint르 지정
    -	bp clear: 존재하는 breakpoint를 전부 삭제
    -	bp: 존재하는 breakpoint르 전부 화면에 출력
    -	run: 메모리에 load된 프로그램의 breakpoint까지 실행, breakpoint가 없으면 끝까지 실행
------
### 수행 결과
#### Shell, Memory Space, Opcode Table
    <img width="551" alt="1" src="https://user-images.githubusercontent.com/57051773/123925706-21dfd000-d9c6-11eb-83d9-80296bf3b4c6.png">

    <img width="552" alt="2" src="https://user-images.githubusercontent.com/57051773/123925716-23a99380-d9c6-11eb-8ef1-f5c5285d7890.png">

    <img width="552" alt="3" src="https://user-images.githubusercontent.com/57051773/123925731-26a48400-d9c6-11eb-9bdc-21ea1b61abdc.png">

#### Assemble 기능
    <img width="621" alt="스크린샷 2021-06-30 오후 5 18 57" src="https://user-images.githubusercontent.com/57051773/123927089-78014300-d9c7-11eb-8d91-7b4bd0d75b46.png">
    <img width="630" alt="스크린샷 2021-06-30 오후 5 19 33" src="https://user-images.githubusercontent.com/57051773/123927096-79cb0680-d9c7-11eb-9f13-8be242125013.png">
    <img width="632" alt="스크린샷 2021-06-30 오후 5 20 01" src="https://user-images.githubusercontent.com/57051773/123927111-7cc5f700-d9c7-11eb-99cd-69b6c4ffb2fc.png">
    <br>

    - assemble 할 수 없는 경우
    <img width="632" alt="스크린샷 2021-06-30 오후 5 20 16" src="https://user-images.githubusercontent.com/57051773/123927128-7fc0e780-d9c7-11eb-9681-ade8961f4267.png">

#### Linking, Loading 기능
    <img width="635" alt="스크린샷 2021-06-30 오후 5 39 47" src="https://user-images.githubusercontent.com/57051773/123930108-64a3a700-d9ca-11eb-9f9a-9804f07f42a1.png">
    <img width="638" alt="스크린샷 2021-06-30 오후 5 41 13" src="https://user-images.githubusercontent.com/57051773/123930116-65d4d400-d9ca-11eb-8f9a-1ca10d884120.png">