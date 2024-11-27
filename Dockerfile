# ACR에서 제공하는 OpenJDK 17 Slim 이미지를 사용
FROM cepgbaseacr.azurecr.io/docker.io/openjdk:17-slim

# 작업 디렉토리 설정
WORKDIR /app

# 애플리케이션 JAR 파일을 컨테이너로 복사
COPY target/myapp.jar /app/myapp.jar

# 컨테이너 실행 시 JAR 파일 실행
ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]

# 애플리케이션이 8080 포트를 사용할 경우, 해당 포트 공개
EXPOSE 8080