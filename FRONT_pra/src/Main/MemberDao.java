package Main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class MemberDao {
	
	private Connection conn;
	
	private static MemberDao instance = new MemberDao();
		
		public static MemberDao getinstance() {
			return instance;
		}
		
		public MemberDao() {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?serverTime=UTC","root","971130");
				System.out.println("DB연동성공");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	//회원가입
	public int signup(Member member) {
		String sql = "insert into member value(?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getMid());
			pstmt.setString(2, member.getMpw());
			pstmt.setString(3, member.getMname());
			pstmt.setString(4, member.getMemail());
			pstmt.setString(5, member.getMphone());
			
			pstmt.executeUpdate();
			
			return 1;
		} catch (Exception e) {}
		return 0;
	}
	
	//로그인
	public int login(String mid, String mpw) {
		String sql = "select * from member where mid = ? and mpassword = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.setString(2, mpw);
			
			pstmt.executeQuery();
			System.out.println("로그인 성공");
			return 1;
		} catch (Exception e) {}
		
		return 0;
	}

}
