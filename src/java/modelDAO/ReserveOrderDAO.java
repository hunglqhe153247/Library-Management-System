/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import static modelDAO.BaseDAO.connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;

/**
 *
 * @author Hung
 */
public class ReserveOrderDAO {

    public ArrayList<Order> getAll() {
        ArrayList<Order> orderList = new ArrayList<>();
        try {
            String sql = "SELECT * FROM reserve_order";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Order s = new Order();
                s.setId(rs.getInt("id"));
                s.setAccountId(rs.getInt("accountId"));
                s.setBookId(rs.getInt("bookId"));
                s.setReserveDate(rs.getDate("reserveDate"));
                orderList.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orderList;
    }

    public static void insertOrder(int bookId, int accountId, Date reserveDate) {
        try {
            String sql = "INSERT INTO [reserve_order] VALUES (?, ?, ?);";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, accountId);
            statement.setInt(2, bookId);
            statement.setDate(3, reserveDate);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ReserveOrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void renewBook(int id, int accountId, int bookId, Date reserveDate) {
        try {
            String sql = "Update [reserve_order] SET  reserveDate = ? WHERE accountId = ? and bookId = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            
            statement.setDate(1, reserveDate);
            statement.setInt(2, accountId);
            statement.setInt(3, bookId);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ReserveOrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
        public static Order getOrderByAccountIdAndBookId(int accountId, int bookId) {
        try {
            String sql = "SELECT *"
                    + "  FROM [reserve_order]\n"
                    + "  where accountId = ? and bookId = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, accountId);
            statement.setInt(2, bookId);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Order s = new Order();
                s.setId(rs.getInt("id"));
                s.setAccountId(rs.getInt("accountId"));
                s.setBookId(rs.getInt("bookId"));
                s.setReserveDate(rs.getDate("reserveDate"));
                return s;
            }

        } catch (SQLException ex) {
            Logger.getLogger(ReserveOrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
