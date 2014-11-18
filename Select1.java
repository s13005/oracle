import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;

public class Select1 {
	private String _user = "s13005";
	private String _pass = "password";
	private String _host = "172.16.40.4";
	private String _sid = "db11";
	
	public static void main(String[] args){

		Select1 select1 = new Select1();
		try {
			select1.select();
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	private void select() throws Exception{
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		PreparedStatement ps = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@" + _host + ":1521:" + _sid, _user, _pass);

			ps = conn.prepareStatement("select e.empno,e.ename, e.job, m.ename,dname, loc from employees e left outer join employees m ON e.mgr = m.empno join departments d on e.deptno = d.deptno");

			rs = ps.executeQuery();
			while(rs.next()){
				String empno = rs.getString(1);
				String ename = rs.getString(2);
				String job = rs.getString(3);
				String ename2 = rs.getString(4);
				String dname = rs.getString(5);
				String loc = rs.getString(6);

				System.out.printf("社員番号:%s\t社員名:%s\t職種:%s\t上司:%s\t部署名:%s\t場所:%s\n", empno, ename, job, ename2, dname, loc);
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
