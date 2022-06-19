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
import model.Account;

/**
 *
 * @author Pham_Thai_Ha <>
 */
public class AccountDAO {
    public static Account getAccount(String userId){
        Account ac = null;
        try (Connection conn = DBcontext.getConnection()) {
            PreparedStatement prepstatement = conn.prepareStatement("select * from Account where userId=?");
            prepstatement.setString(1, userId);
            ResultSet rs = prepstatement.executeQuery();
            while(rs.next()){
                ac = new Account(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
            }
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return ac;
    }
}
