# Sử dụng OpenJDK 17 làm base image
FROM openjdk:17-jdk-slim
# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép file JAR đã được build từ dự án Spring Boot vào thư mục /app trong container
COPY target/yangmy-0.0.1-SNAPSHOT.jar /app/yangmy.jar

# Expose cổng mà ứng dụng của bạn chạy trên (chắc chắn sẽ cần thay đổi nếu cổng không phải là 8080)
EXPOSE 8080

# Command để chạy ứng dụng Spring Boot khi container được khởi chạy
CMD ["java", "-jar", "yangmy.jar"]
