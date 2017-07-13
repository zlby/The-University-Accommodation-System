package jsp;

import java.sql.*;
import java.util.ArrayList;

public class DBConnection {

    public static ArrayList<String> getColumnName(String tablename) {
        String url = "jdbc:postgresql://localhost/accommodation";
        String user = "postgres";
        String password = "zlby8215468";
        ArrayList<String> columeNames = new ArrayList<String>();

        String SQL = "select * from " + tablename + ";";

        try (Connection conn = DriverManager.getConnection(url, user, password);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(SQL)) {

            ResultSetMetaData metaData = rs.getMetaData();
            for (int i = 0; i < metaData.getColumnCount(); i++) {
                String columnName = metaData.getColumnName(i + 1);
                columeNames.add(columnName);
            }

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return columeNames;
    }

    public static ArrayList<ArrayList<String>> getData(String tablename, ArrayList<String> columnNames) {
        String url = "jdbc:postgresql://localhost/accommodation";
        String user = "postgres";
        String password = "zlby8215468";
        ArrayList<ArrayList<String>> res = new ArrayList<>();

        String SQL = "select * from " + tablename + ";";
        try (Connection conn = DriverManager.getConnection(url, user, password);
             Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(SQL)) {

            while (rs.next()){
                ArrayList<String> temp = new ArrayList<>();
                for (String columnName : columnNames) {
                    temp.add(rs.getString(columnName));
                }
                res.add(temp);
            }

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return res;
    }
}
