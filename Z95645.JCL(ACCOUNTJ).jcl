//ACCOUNTJ   JOB 1,NOTIFY=&SYSUID
//***************************************************/
//* Copyright Contributors to the COBOL Programming Course
//* SPDX-License-Identifier: CC-BY-4.0
//***************************************************/
//COBRUN  EXEC IGYWCL
//COBOL.SYSIN  DD DSN=&SYSUID..CBL(ACCOUNT),DISP=SHR
//LKED.SYSLMOD DD DSN=&SYSUID..LOAD(ACCOUNT),DISP=SHR
//***************************************************/
// IF RC < 5 THEN
//***************************************************/
//STEP2 EXEC PGM=ACCOUNT
//STEPLIB   DD DSN=&SYSUID..LOAD,DISP=SHR
//SYSOUT    DD SYSOUT=*,OUTLIM=15000
//CEEDUMP   DD DUMMY
//SYSUDUMP  DD DUMMY
//SYSIN     DD *
SINEM
SEN
BFBFDJK34JS
1000
5000
/*
//***************************************************/
// ELSE
// ENDIF
