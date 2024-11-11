import java.io.IOException;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/universitymanagementsystem1";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Abhipsa299@";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String number = request.getParameter("number");
        String city = request.getParameter("city");
        int rollNo = Integer.parseInt(request.getParameter("rollNo"));

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            String sql = "INSERT INTO attendenc (name, number, city, rollNo) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, number);
            stmt.setString(3, city);
            stmt.setInt(4, rollNo);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        response.sendRedirect("StudentManagement.jsp");
    }
}
