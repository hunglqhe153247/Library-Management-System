/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Book;
import model.Request;
import static modelDAO.BaseDAO.connection;

/**
 *
 * @author Hung
 */
public class RequestDAO extends BaseDAO{
    public ArrayList<Request> getAll() {
        ArrayList<Request> requestList = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Request";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Request s = new Request();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setAuthor(rs.getString("author"));
                s.setUserId(rs.getInt("userId"));
                requestList.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(RequestDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return requestList;
    }
        public static void insertRequest(String name, String author, String userId) {
        try {
            String sql = "INSERT INTO [Request] VALUES (?, ?, ?);";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, author);
            statement.setString(3, userId);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RequestDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
