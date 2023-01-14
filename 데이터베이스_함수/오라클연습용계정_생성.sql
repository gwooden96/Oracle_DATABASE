--오라클에서 제공하는 연습용 계정(scott)를 활용한 함수공부
--참고 링크 : https://livegamer.tistory.com/166

alter user hr account unlock identified by 1234;

--사용자 : scott, 비밀번호 : tiger
create user scott identified by tiger;
--기본적인 접속 권한 : connect
--to로 grant에게 던져준다
grant connect, resource to scott;
--가상테이블 view
grant create view to scott;
--원격 접속 할때 필요한 코드
EXEC DBMS_XDB.SETLISTENERLOCALACCESS(FALESE);

@C:\oraclexe\app\oracle\product\11.2.0\server\RDBMS\ADMIN\scott.sql

ALTER USER scott IDENTIFIED BY tiger ACCOUNT UNLOCK;


-- EMP - 사원테이블
-- EMPNO : 사원번호
-- ENAME : 사원이름
-- JOB :  사원직책
-- MGR : 직속 상관의 사원번호
-- HIREDATE : 입사일
-- SAL : 급여
-- COMM : 추가수당
-- DEPTNO : 부서번호 (해당사원의)

-- DEPT - 부서 테이블
-- DEPTNO : 부서번호
-- DNAME : 부서명
-- LOC : 부서 위치 (지역)

-- SALGRADE - 급여 정보 테이블
-- GRADE : 급여 등급
-- LOSAL : 급여 등급의 최소 급여
-- HISAL : 급여 등급의 최대 급여