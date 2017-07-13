package jsp;


import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import static java.lang.System.out;

public class Transaction {
    public static ArrayList<ArrayList<String>> transaction_1() {
        String sql = "select s.staff_name as manager, h.phone as phone from staff s, hall h where s.staff_no = h.manager_no;";
        return SQLExecution.executeSQL(sql);
    }

    public static ArrayList<ArrayList<String>> transaction_2() {
        String sql = "select s.stu_name, l.* from student s, lease l where s.stu_id = l.stu_id;";
        return SQLExecution.executeSQL(sql);
    }

    public static ArrayList<ArrayList<String>> transaction_3() {
        String sql = "select s.stu_name, i.paymentdue from student s, invoice i where s.stu_id = i.stu_id;";
        return SQLExecution.executeSQL(sql);
    }

    public static ArrayList<ArrayList<String>> transaction_4(String date) {
        java.util.Date dt = null;
        try
        {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            dt = sdf.parse(date);
        }
        catch (ParseException e)
        {
            System.out.println(e.getMessage());
        }
        java.sql.Date d = new java.sql.Date(dt.getTime());
        String url = "jdbc:postgresql://localhost/accommodation";
        String user = "postgres";
        String password = "zlby8215468";
        ArrayList<String> columnNames = new ArrayList<String>();
        ArrayList<ArrayList<String>> res = new ArrayList<>();
        String sql = "select i.stu_id, s.stu_name from student s, invoice i where s.stu_id = i.stu_id and i.pay_date < ?";
        try  {
            Connection conn = DriverManager.getConnection(url, user, password);
            PreparedStatement st = conn.prepareStatement(sql);
            st.setDate(1, d);
            ResultSet rs = st.executeQuery();

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

    public static ArrayList<ArrayList<String>> transaction_5() {
        String sql = "select * from inspection where satisfy='no'";
        return SQLExecution.executeSQL(sql);
    }

    public static ArrayList<ArrayList<String>> transaction_6(String par) {
        String sql = "select s.stu_id, s.stu_name, h.room_no from student s, hallroom h, lease l where s.stu_id = l.stu_id and l.place_no = h.place_no and l.acco_type = 'hall' and l.flat_or_hall_no = ?";

        String url = "jdbc:postgresql://localhost/accommodation";
        String user = "postgres";
        String password = "zlby8215468";
        ArrayList<String> columnNames = new ArrayList<String>();
        ArrayList<ArrayList<String>> res = new ArrayList<>();
        try  {
            Connection conn = DriverManager.getConnection(url, user, password);
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, par);
            ResultSet rs = st.executeQuery();

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

    public static ArrayList<ArrayList<String>> transaction_7() {
        String sql = "select count(stu_id), category from student group by category;";
        return SQLExecution.executeSQL(sql);
    }

    public static ArrayList<ArrayList<String>> transaction_8() {
        String sql = "select stu_name, stu_id from student where stu_id not in (select stu_id from next_of_kin);";
        return SQLExecution.executeSQL(sql);
    }

    public static ArrayList<ArrayList<String>> transaction_9() {
        String sql = "select hall_no, max(rent) as max, min(rent) as min, avg(rent) as average from hallroom group by hall_no;";
        return SQLExecution.executeSQL(sql);
    }

    public static ArrayList<ArrayList<String>> transaction_10() {
        String sql = "select hall_no, count(room_no) as numberofroom from hallroom group by hall_no;";
        return SQLExecution.executeSQL(sql);
    }

    public static ArrayList<ArrayList<String>> transaction_11() {
        String sql = "select staff_no as staff_no, staff_name, (date_trunc('day', now()) - birthday) as age, staff_loc from staff where (date_trunc('day', now()) - birthday) > interval'60 years';";
        return SQLExecution.executeSQL(sql);
    }


    public static ArrayList<ArrayList<String>> trans(int i) {
        switch (i) {
            case 1:
                return transaction_1();
            case 2:
                return transaction_2();
            case 3:
                return transaction_3();
            case 4:
//                return transaction_4();
                return null;
            case 5:
                return transaction_5();
            case 6:
//                return transaction_6();
                return null;
            case 7:
                return transaction_7();
            case 8:
                return transaction_8();
            case 9:
                return transaction_9();
            case 10:
                return transaction_10();
            case 11:
                return transaction_11();
        }
        return null;
    }

}
