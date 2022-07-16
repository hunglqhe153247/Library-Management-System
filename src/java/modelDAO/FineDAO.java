/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Fine;

/**
 *
 * @author Pham_Thai_Ha <>
 */
public class FineDAO {
    public static ArrayList<Fine> getFineByUser(String userId) throws SQLException{
        ArrayList<Fine> fineList = new ArrayList<>();
        try (Connection conn = DBcontext.getConnection()) {
            PreparedStatement prepstatement = conn.prepareStatement("select * from Fine where userId=?");
            prepstatement.setString(1, userId);
            ResultSet rs = prepstatement.executeQuery();
            while (rs.next()) {
                Fine fine = new Fine(
                        rs.getString("fineId"),
                        rs.getString("userId"),
                        rs.getString("reserveId"),
                        rs.getString("amount"),
                        rs.getString("status")
                );
                fineList.add(fine);
            }
        }
        return fineList;
    }
    
    public static void changeFineStatus(String fineId) throws SQLException{
        try (Connection conn = DBcontext.getConnection()){
            PreparedStatement prepstatement = conn.prepareStatement("UPDATE Fine SET status = ? WHERE fineId = ?;");
            prepstatement.setString(1, "paid");
            prepstatement.setString(2, fineId);
            prepstatement.executeUpdate();
        }
    }
}
