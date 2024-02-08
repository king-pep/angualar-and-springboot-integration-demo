
---

# Angular and Spring Boot Integration Demo

This project demonstrates the integration of a Spring Boot backend with an Angular frontend. It's designed to showcase how these two technologies can work together to build full-stack applications.

## Prerequisites

Before you begin, ensure you have met the following requirements:
- **Java JDK**: The app uses Java 17, but you can change this version in the `pom.xml` to match your JDK version, provided it's 1.8 or above.
- **Maven** for building the Spring Boot application
- **Node.js** and **npm** for managing the Angular app dependencies
- **Angular CLI** for serving and building the Angular project

## Getting Started

Follow these instructions to get the project up and running on your local machine for development and testing purposes.

### Backend Setup (Spring Boot)

1. **Clone the repository**

```bash
git clone https://github.com/king-pep/angualar-and-springboot-integration-demo
```

2. **Navigate to the Spring Boot application directory**

```bash
cd angualar-and-springboot-integration-demo/SpringBootApplication
```

3. **Configure the JDK version in `pom.xml` (Optional)**

If your JDK version is different from Java 17, modify the `<java.version>` property in the `pom.xml` file to match your JDK version (must be 1.8 or above).

```xml
<properties>
    <java.version>YOUR_JDK_VERSION</java.version>
</properties>
```
---

## Database Setup with Flyway

This project utilizes Flyway for database migrations, facilitating the management of database schema changes and initial data setup in a version-controlled manner. This approach simplifies deployment, enhances testing capabilities, and supports seamless collaboration among developers.

### Migration Files Location

Find the Flyway migration scripts within the project at `src/main/resources/db/migration`. These scripts adhere to Flyway's versioned naming convention, for example, `V1__Create_users_table.sql` and `V2__Insert_initial_users.sql`, ensuring migrations are applied sequentially.

### Configuration Details

The application is pre-configured to use the H2 in-memory database, ideal for development and testing, avoiding the need for a separate database setup. The database configuration specified in the project's `application.properties` or `application.yml` file is as follows:

```properties
spring.datasource.url=jdbc:h2:mem:testdb;DB_CLOSE_DELAY=-1;DB_CLOSE_ON_EXIT=FALSE
spring.datasource.driverClassName=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=password
spring.jpa.database-platform=org.hibernate.dialect.H2Dialect
```

---

4. **Build the project**

Use Maven to compile the project and download the dependencies:

```bash
mvn clean install
```

5. **Run the Spring Boot application via command line**

```bash
mvn spring-boot:run
```

This command starts the backend server on the default port, typically `8080`. Access the API at `http://localhost:8080`.

6. **Or, run the main application file directly in your IDE**

Alternatively, you can simply run the main application class directly from your IDE. Locate the class with the `@SpringBootApplication` annotation and run it as a Java application.

### Frontend Setup (Angular)

1. **Navigate to the Angular application directory**

```bash
cd ../angualr-app
```

2. **Install dependencies**

Use npm to install the project dependencies:

```bash
npm install
```

3. **Serve the Angular application**

```bash
ng serve
```

This command starts the Angular development server and opens the application in your default browser. By default, the application is available at `http://localhost:4200`.

## Configuration

- **Backend Configuration**: Configure your Spring Boot application's properties in `src/main/resources/application.properties`.

---

## Usage

This application provides a RESTful API to manage users. Below are the available endpoints:

### User Management

- **Create User**
  - **Endpoint:** `/api/v1/user`
  - **Method:** POST
  - **Description:** Registers a new user.
  - **Request Body:** JSON object representing the user to register.
    ```json
    {
      "name": "John Doe",
      "email": "john.doe@example.com"
    }
    ```
  - **Response:** Returns the created user with status 201 (Created).

- **Find All Users**
  - **Endpoint:** `/api/v1/user`
  - **Method:** GET
  - **Description:** Retrieves a list of all users.
  - **Response:** Returns a list of users with status 200 (OK).

- **Find User by ID**
  - **Endpoint:** `/api/v1/user/{id}`
  - **Method:** GET
  - **Description:** Retrieves a user by their ID.
  - **Path Variable:** `id` - The ID of the user to retrieve.
  - **Response:** Returns a single user with status 200 (OK).

- **Update User**
  - **Endpoint:** `/api/v1/user/{id}`
  - **Method:** PUT
  - **Description:** Updates an existing user's details.
  - **Path Variable:** `id` - The ID of the user to update.
  - **Request Body:** JSON object representing the updated user information.
    ```json
    {
      "name": "Jane Doe",
      "email": "jane.doe@example.com"
    }
    ```
  - **Response:** Returns the updated user with status 200 (OK).

- **Delete User**
  - **Endpoint:** `/api/v1/user/{id}`
  - **Method:** DELETE
  - **Description:** Deletes a user by their ID.
  - **Path Variable:** `id` - The ID of the user to delete.
  - **Response:** No content, with status 204 (No Content).

### Cross-Origin Requests

This application is configured to accept cross-origin requests from `http://localhost:4200`, facilitating integration with the Angular frontend running on the default development server.

---

