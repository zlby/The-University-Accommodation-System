package jsp;

import java.sql.*;
import java.util.ArrayList;

import static java.lang.System.out;

public class SQLExecution {
    public static ArrayList<ArrayList<String>> executeSQL(String sql) {
        String sql_small = sql.toLowerCase();
        sql_small = sql_small.trim();
        if (sql.indexOf("select") == 0) {
            return executeSelect(sql_small);
        }
        else {
            executeOther(sql_small);
            return null;
        }
    }

    public static ArrayList<ArrayList<String>> executeSelect(String sql) {
        String url = "jdbc:postgresql://localhost/accommodation";
        String user = "postgres";
        String password = "zlby8215468";
        ArrayList<String> columnNames = new ArrayList<String>();
        ArrayList<ArrayList<String>> res = new ArrayList<>();

        try (Connection conn = DriverManager.getConnection(url, user, password);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            ResultSetMetaData metaData = rs.getMetaData();
            for (int i = 0; i < metaData.getColumnCount(); i++) {
                String columnName = metaData.getColumnName(i + 1);
                columnNames.add(columnName);
            }
            res.add(columnNames);

            while (rs.next()) {
                ArrayList<String> temp = new ArrayList<>();
                for (String columnName : columnNames) {
                    temp.add(rs.getString(columnName));
                }
                res.add(temp);
            }

        } catch (SQLException ex) {
            out.println(ex.getMessage());
        }
        return res;
    }

    public static void executeOther(String sql) {

    }
}
