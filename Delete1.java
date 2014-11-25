import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class Delete1 {
	Scanner stdIn = new Scanner(System.in);
	private String _user = "s13005";
	private String _pass = "password";
	private String _host = "172.16.40.4";
	private String _sid = "db11";

	public static void main(String[] args){

		Delete1 delete1 = new Delete1();
		try {
			delete1.select();
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	private void select() throws Exception{
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		PreparedStatement ps = null;
		boolean employeesExist = false;
		boolean subExist = false;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@" + _host + ":1521:" + _sid, _user, _pass);
			System.out.println("社員番号を入力してください:");
			int empno = new Scanner(System.in).nextInt();

			ps = conn.prepareStatement("SELECT empno, ename FROM employees WHERE empno = ?");
			ps.setInt(1, empno);
			rs = ps.executeQuery();

			while(rs.next()){
				System.out.println("社員");
				employeesExist = true;
				String emp_no = rs.getString(1);
				String ename = rs.getString(2);

				System.out.printf("社員番号:%s\t社員名:%s\n", emp_no, ename);
			}

			if(employeesExist) {
				System.out.println("部下");
			} else{
				System.out.println("レコードがありません。");
			}

			ps = conn.prepareStatement("SELECT ename FROM employees WHERE mgr = ?");

			ps.setInt(1, empno);
			rs = ps.executeQuery();

			while(rs.next()) {
				subExist = true;
				String ename = rs.getString(1);

				System.out.printf("社員名:%s\n", ename);
			}

			if(employeesExist && !subExist) {
				System.out.println("部下はいません。");
			}

			if(employeesExist) {
				System.out.print("この社員を削除しますか? (yes / no):");
				String Answer = new Scanner(System.in).next();

				if(Answer.equals("yes")) {
					if(subExist) {
						System.out.println("部下が存在するので削除できません。");
					} else {
						ps = conn.prepareStatement("DELETE FROM employees WHERE empno = ?");
						ps.setInt(1, empno);
						rs = ps.executeQuery();

						System.out.println("削除しました。");
					}
				}else if(!Answer.equals("no")) {
					System.out.println("値が不正です。");
				}
			}

		}catch(ClassNotFoundException e){
			throw e;
		}catch(SQLException e){
			throw e;
		}catch(Exception e){
			throw e;
		}finally{
			if(conn != null){
				conn.close();
			}
			if(st != null){
				st.close();
				st = null;
			}
			if(rs != null){
				rs.close();
				rs = null;
			}
		}
	}
}
