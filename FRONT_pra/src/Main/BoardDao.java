package Main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDao {

	private Connection conn;
	private static BoardDao instance = new BoardDao();
	public static BoardDao getinstance() {
		return instance;
	}
	public BoardDao() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?serverTime=UTC","root","971130");
			System.out.println("DB연동성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//게시물 등록
	public int boardadd(Board board) {
		String sql = "insert into board(btitle,bwriter,bdate,bcontentds) value(?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getBtitle());
			pstmt.setString(2, board.getBwriter());
			pstmt.setString(3, board.getBdate());
			pstmt.setString(4, board.getBcontents());
			
			pstmt.executeUpdate();
			System.out.println("게시글 등록성공");
			return 1;
		
		} catch (Exception e) {}
		return 0;
	}
	
	//게시물 출력
	public ArrayList<Board> bbslist(){
		ArrayList<Board> boards = new ArrayList<Board>();
		String sql = "select * from board";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				Board board = new Board(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5));
				boards.add(board);
			}
			return boards;
		} catch (Exception e) {}
		return null;
	}
	//게시글 조회
	public Board bview(int bno) {
		String sql = "select * from board where bno = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				Board board = new Board(rs.getInt(1), rs.getString(2), rs.getString(5));
				return board;
			}
		} catch (Exception e) {}
		return null;
	}
	//게시물 수정(글 수정 안됨...)
	public int boardupdate(int bno, Board board) {
		String sql = "update board set btitle = ? , bcontentds = ? where bno = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getBtitle());
			pstmt.setString(2, board.getBcontents());
			pstmt.setInt(3, board.getBno());
			
			pstmt.executeUpdate();
			System.out.println("수정완료");
			return 1;
		} catch (Exception e) {}
		return 0;
	}
	//게시물 삭제
	public int boarddelete(int bno) {
		String sql = "delete from board where bno = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			pstmt.executeUpdate();
			System.out.println("삭제완료");
			return 1;
		} catch (Exception e) {}
		return 0;
	}
}
