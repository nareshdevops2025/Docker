# ---------- Stage 1: Build ----------
FROM maven:3.9.9-eclipse-temurin-17 AS build

WORKDIR /app

# Copy project files
COPY . .

# Build JAR (skip tests optional)
RUN mvn clean package -DskipTests

# ---------- Stage 2: Run ----------
FROM eclipse-temurin:17-jdk

WORKDIR /app

# Copy built jar from build stage
COPY --from=build /app/target/*.jar app.jar

EXPOSE 1010

CMD ["java", "-jar", "app.jar"]
