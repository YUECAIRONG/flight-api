package com.example.demo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DemoApplicationTests {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/flightbookdb";
        String user = "root";
        String password = "123456";
        
        try {
            // 加载 JDBC 驱动程序
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // 建立数据库连接
            Connection connection = DriverManager.getConnection(url, user, password);
            
            // 连接成功，可以进行数据库操作
            System.out.println("Connected to the database successfully.");
            
            // 关闭连接（在实际应用中，通常会在 finally 块中关闭连接）
            connection.close();
        } catch (ClassNotFoundException e) {
            // JDBC 驱动程序未找到
            e.printStackTrace();
        } catch (SQLException e) {
            // SQL 异常，可能包括 Unknown database 异常
            e.printStackTrace();
            if (e.getSQLState().equals("42000")) {
                // SQLState 42000 通常表示语法错误或访问规则违反，可以进一步处理 Unknown database 错误
                System.err.println("Unknown database error occurred. Please check your database name.");
            }
        }
    }
}

