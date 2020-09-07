이 텍스트는 PaaS-TA Core 자동화 스크립트 사전 주의사항입니다.


1. 스크립트를 실행 전 variables.sh을 작성해주세요.

2. Sample_Path는 반드시 절대경로로 작성해주세요.

3. 작동은 01.bosh_login.sh 부터 순서대로 source 명령어를 이용해 작동해 주세요.

4. PaaS-TA VARIABLES는 중복된 변수를 피해서 작성해주세요.

5. test-reset.sh은 테스트시 만들어진 앱과 메타데이터를 초기화 하는 파일입니다. 생성된 메타데이터중에 꼭 삭제하면 안되는 값이 있는지 확인해주세요.

6. 테스트와 관련된 기타 파일들은 etc 폴더에 있습니다.

7. 07.bosh_jump-box.sh 의 경우 
sudo su
monit summary
를 타이핑 하여 확인해주세요. (종료 exit, exit)

8. 19.paas-ta_app-ssh.sh 의 경우 접속 확인 후 종료해주세요. (종료 exit)

9. 20.paas-ta_app-scp.sh 의 경우 시작전 PaaS-TA-java 앱의 화면을 확인 후 출력되는 코드를 Password에 입력해주시고 PaaS-TA-java 앱의 화면을 다시 확인해주세요.

10. 24.paas-ta_security-group.sh의 경우 스크립트 작동 전에 etc/rule.json을 먼저 변경해주세요. (destination : PaaS-TA Database IP / ports : PaaS-TA Database Port(mysql:3306, postgres:5524))
스크립트가 작동하게되면 App으로 들어가는데 nc -vz {destination} {ports} 를 타이핑 하여 통신연결을 확인해주세요.(종료 exit)
