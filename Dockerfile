FROM ubuntu:latest

# 패키지 업데이트 및 sudo 설치
RUN apt-get update && apt-get install -y sudo

# 새로운 사용자 생성 및 비밀번호 설정
RUN useradd -m john && echo "john:password" | chpasswd

# myuser를 sudo 그룹에 추가
RUN usermod -aG sudo john

# sudo 비밀번호 없이 실행 가능하도록 설정
RUN echo "john ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# 기본 사용자 변경
USER john

# 기본 명령어 설정
CMD ["bash"]