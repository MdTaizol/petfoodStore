# petfoodStore


# 🐾 PetFood Store

A full-stack **Java web application** for an online pet food store, built with **Servlets, JSP, and JDBC** following the **DAO (Data Access Object) design pattern**. The application supports customer shopping (browse, cart, checkout, payment) as well as a complete **admin panel** for managing products, orders, users, and customer inquiries.

## 📋 Table of Contents

- [Features](#-features)
- [Tech Stack](#-tech-stack)
- [Project Structure](#-project-structure)
- [Prerequisites](#-prerequisites)
- [Setup & Installation](#-setup--installation)
- [Configuration](#-configuration)
- [Usage](#-usage)
- [Contributing](#-contributing)
- [License](#-license)

## ✨ Features

### Customer
- User registration & login with session-based authentication
- OTP verification via email during signup/password reset
- Forgot password / reset password flow
- Browse products with product listing and detail views
- Shopping cart (add, update, remove items)
- Checkout flow with order placement
- Online payment integration (including **bKash**)
- Order history tracking
- Contact / support form

### Admin
- Admin dashboard with sales overview
- Product management (add, edit, delete, update products)
- Order management (view and update order status)
- User management
- View and respond to customer contact messages
- Sales reports/analytics

## 🛠 Tech Stack

| Layer | Technology |
|---|---|
| Language | Java |
| Web Layer | Servlets, JSP |
| Data Access | JDBC (DAO pattern) |
| Database | Oracle Database (via `ojdbc11.jar`) |
| Email Service | Jakarta Mail (`jakarta.mail-api`, `angus-mail`) for OTP & notifications |
| Payment | bKash payment gateway integration |
| Frontend | HTML, CSS, JSP |
| Build/IDE | Eclipse (Dynamic Web Project) |
| Server | Apache Tomcat (v10.0) |

## 📁 Project Structure

```
petfoodStore/
├── src/main/java/
│   ├── dao/            # Data Access Objects (DB operations)
│   │   ├── AdminDAO.java
│   │   ├── CartDAO.java
│   │   ├── ContactDAO.java
│   │   ├── OrderDAO.java
│   │   ├── OtpDAO.java
│   │   ├── ProductDAO.java
│   │   └── UserDAO.java
│   │
│   ├── model/           # Entity/POJO classes
│   │   ├── Cart.java
│   │   ├── Contact.java
│   │   ├── Order.java
│   │   ├── OrderDetails.java
│   │   ├── Product.java
│   │   └── User.java
│   │
│   ├── servlet/         # Controller layer (HTTP request handling)
│   │   ├── AddProductServlet.java
│   │   ├── AdminContactServlet.java
│   │   ├── AdminDashboardServlet.java
│   │   ├── AdminOrderServlet.java
│   │   ├── AdminProductServlet.java
│   │   ├── AdminSalesServlet.java
│   │   ├── AdminUserServlet.java
│   │   ├── CartServlet.java
│   │   ├── CheckoutServlet.java
│   │   ├── ContactServlet.java
│   │   ├── DeleteProductServlet.java
│   │   ├── EditProductServlet.java
│   │   ├── ForgotPasswordServlet.java
│   │   ├── LoginServlet.java
│   │   ├── LogoutServlet.java
│   │   ├── OrderHistoryServlet.java
│   │   ├── PaymentServlet.java
│   │   ├── ProductServlet.java
│   │   ├── RegisterServlet.java
│   │   ├── RemoveCartServlet.java
│   │   ├── ResetPasswordServlet.java
│   │   ├── UpdateOrderStatusServlet.java
│   │   ├── UpdateProductServlet.java
│   │   └── VerifyOtpServlet.java
│   │
│   └── util/            # Utility classes
│       ├── DBConnection.java
│       ├── EmailService.java
│       └── TestConnection.java
│
└── src/main/webapp/
    ├── *.jsp             # JSP views (index, login, register, cart, products, admin pages, etc.)
    ├── css/              # Stylesheets
    ├── images/           # Product & banner images
    ├── META-INF/
    │   └── MANIFEST.MF
    └── WEB-INF/
        ├── web.xml       # Deployment descriptor
        └── lib/          # Dependencies (Jakarta Mail, Oracle JDBC driver, etc.)
```

## ✅ Prerequisites

Before running this project, make sure you have the following installed:

- **Java Development Kit (JDK) 8+**
- **Apache Tomcat 10.0** (or compatible servlet container)
- **Oracle Database** (or update the DAO/connection layer for another RDBMS)
- **Eclipse IDE** (recommended, project is configured as an Eclipse Dynamic Web Project) or any IDE that supports Java EE web projects
- **Oracle JDBC driver** — already included as `ojdbc11.jar` in `WEB-INF/lib`

## 🚀 Setup & Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/MdTaizol/petfoodStore.git
   ```

2. **Import into Eclipse**
   - Open Eclipse → `File` → `Import` → `Existing Projects into Workspace`
   - Select the cloned `petfoodStore` folder

3. **Set up the database**
   - Create an Oracle database/schema for the project
   - Create the required tables (users, products, cart, orders, order details, contacts, OTP, etc.) matching the fields used in the DAO/model classes
   - Update database credentials in `src/main/java/util/DBConnection.java`

4. **Configure the mail service (for OTP/notifications)**
   - Update SMTP credentials in `src/main/java/util/EmailService.java`

5. **Configure payment gateway**
   - Add your bKash (or other payment provider) credentials where required in `PaymentServlet.java`

6. **Deploy to Tomcat**
   - Add the project to a configured Tomcat v10.0 server in Eclipse
   - Start the server and deploy the application

7. **Access the application**
   ```
   http://localhost:8080/petfood/
   ```

## ⚙️ Configuration

Key files you'll likely need to configure before running the project locally:

| File | Purpose |
|---|---|
| `src/main/java/util/DBConnection.java` | Database URL, username, and password |
| `src/main/java/util/EmailService.java` | SMTP host, port, sender email/credentials for OTP emails |
| `src/main/java/servlet/PaymentServlet.java` | Payment gateway (bKash) API credentials |
| `WEB-INF/web.xml` | Servlet mappings and deployment configuration |

> ⚠️ **Note:** Avoid committing real database credentials or API keys to version control. Consider externalizing sensitive configuration (e.g., environment variables or a `.properties` file excluded via `.gitignore`).

## 🖥 Usage

- **Customers** can register, verify their account via OTP, browse the product catalog, add items to their cart, check out, pay online, and track their order history.
- **Admins** can log in to the admin dashboard to manage products, monitor and update orders, manage registered users, view sales statistics, and respond to customer contact submissions.

## 🤝 Contributing

Contributions are welcome!

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/your-feature`)
5. Open a Pull Request

## 📄 License

No license has been specified for this project yet. Consider adding a `LICENSE` file (e.g., MIT, Apache 2.0) to clarify how others may use your code.

---

Built with ☕ Java, Servlets & JSP.
