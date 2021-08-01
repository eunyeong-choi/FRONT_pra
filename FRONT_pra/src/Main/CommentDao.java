package Main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CommentDao {
	
	private Connection conn;
	private static CommentDao instance = new CommentDao();
	public static CommentDao getinstance() {
		return instance;
	}
	public CommentDao() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?serverTime=UTC","root","971130");
			System.out.println("DB연동성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//댓글 등록
	public int commentadd(Comment comment) {
		String sql = "insert into comment(ccomment, cdate, cid, bno) value(?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, comment.getCcomment());
			pstmt.setString(2, comment.getCdate());
			pstmt.setString(3, comment.getCid());
			pstmt.setInt(4, comment.getBno());
			
			pstmt.executeUpdate();
			System.out.println("댓글 등록성공");
			return 1;
		} catch (Exception e) {}
		return 0;
	}
	//댓글출력
	public ArrayList<Comment> clist(int bno){
		ArrayList<Comment> comments = new ArrayList<Comment>();
		String sql = "select * from comment where bno = ? order by cno desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				Comment comment = new Comment(rs.getInt(1),
						rs.getString(2),rs.getString(3),rs.getString(4));
				comments.add(comment);
			}
			return comments;
		} catch (Exception e) {}
		return null;
	}
}
