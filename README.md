# linux(ubuntu)에서 supermap(iserver) 설치 실습 환경

- username: john
- sudo 사용 가능

# Getting Started

1. 이미지 빌드

```
$ docker build -t linux-supermap .
```

2. 컨테이너 실행

```sh
# 임시 컨테이너 생성
$ docker run -it --rm --name lsp -v <경로>/linux-supermap/datas:/home/john/datas -p 8090:8090 linux-supermap

# 컨테이너 생성
$ docker run -it --name lsp -v <경로>/linux-supermap/datas:/home/john/datas -p 8090:8090 linux-supermap

# 컨테이너 실행
$ docker start <container-id>

# 컨테이너 접속
$ docker exec -it <container-id> /bin/bash

# 터미널을 인터랙티브 모드(-i)로 실행하고, TTY(-t)를 활성화
# --rm: 컨테이너 종료 시 자동으로 삭제
# -v: 볼륨 마운트
```

3. `john` 사용자로 iServer 설치

4. `root` 사용자로 License driver 설치

5. `/opt/SuperMap` 폴더 생성 & 권한 변경

6. `/opt/SuperMap/License/`로 트라이얼 라이센스 파일 이동

7. 라이센스 업데이트 후 확인

8. `iServer` 실행

9. `x11` 라이브러리 관련 에러 발생 시, 패키지 다운로드 후 재실행
   `libx11-6`, `libxext6`, `libxrender1`, `libxinerama1`, `libxi6` 등
