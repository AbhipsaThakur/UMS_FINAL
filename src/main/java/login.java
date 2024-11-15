import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet {

    public static Connection initializeDatabase() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/universitymanagementsystem1";
        String username = "root";
        String password = "Abhipsa299@";
        return DriverManager.getConnection(url, username, password);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("t1").trim();
        String password = req.getParameter("t2").trim();
        if (email == null || password == null || email.isEmpty() || password.isEmpty()) {
            req.setAttribute("error", "All fields are required.");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
            return;
        }
        try {
            Connection con = initializeDatabase();
            String query = "SELECT username FROM registration WHERE email = ? AND password = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String username = rs.getString("username");
                HttpSession session = req.getSession();
                session.setAttribute("username", username);
                if (email.endsWith("@student.com")) {
                    resp.sendRedirect("dash.jsp");
                } else if (email.endsWith("@admin.com")) {
                    resp.sendRedirect("FacultyDashboard.jsp");
                } else {
                    req.setAttribute("error", "Invalid user type.");
                    req.getRequestDispatcher("login.jsp").forward(req, resp);
                }
            } else {
                req.setAttribute("error", "Invalid email or password.");
                req.getRequestDispatcher("login.jsp").forward(req, resp);
            }
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            req.setAttribute("error", "An error occurred. Please try again.");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
