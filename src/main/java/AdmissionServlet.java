import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/AdmissionServlet")
public class AdmissionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String dob = request.getParameter("dob");
        String program = request.getParameter("program");
        String bloodGroup = request.getParameter("blood_group");
        String gender = request.getParameter("gender");
        String accommodation = request.getParameter("accommodation");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");
        String paymentMethod = request.getParameter("payment");

        // Database connection parameters
        String jdbcURL = "jdbc:mysql://localhost:3306/universitymanagementsystem1";
        String dbUser = "root";
        String dbPassword = "Abhipsa299@";

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // SQL query to insert data
            String sql = "INSERT INTO university_admissions (name, email, phone, dob, program, blood_group, gender, accommodation, address, contact, payment_method) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, phone);
            statement.setString(4, dob);
            statement.setString(5, program);
            statement.setString(6, bloodGroup);
            statement.setString(7, gender);
            statement.setString(8, accommodation);
            statement.setString(9, address);
            statement.setString(10, contact);
            statement.setString(11, paymentMethod);

            // Execute update
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                response.getWriter().println("<h2>Application submitted successfully!</h2>");
            } else {
                response.getWriter().println("<h2>Failed to submit the application. Please try again.</h2>");
            }

            // Close connection
            statement.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("<h2>Error occurred: " + e.getMessage() + "</h2>");
        }
    }
}
