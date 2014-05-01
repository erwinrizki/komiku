/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package komiku;

/**
 *
 * @author Erwin
 */
import java.sql.*;
import javax.swing.JOptionPane;
public class koneksi {
    public Connection con;
    public ResultSet rs;
    public Statement st;
    
    String user = "root";
    String pass = "apem";
    String db = "komiku";
    String url = "jdbc:mysql://localhost:3306/"+db;
    
    public void koneksiSQL() {
        con = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
            JOptionPane.showMessageDialog(null, "Koneksi Berhasil!");
        } catch(Exception e) {
            JOptionPane.showMessageDialog(null, "Koneksi Gagal! " +e);
        }
    }
}
