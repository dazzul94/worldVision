package java100.app.web.index;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class IndexDAO {
	@Autowired
	private JdbcTemplate jTmp;
	
	public History[] getHistory(String sql) {	
		RowMapper<History> mapper = new RowMapper<History>() {
			@Override
			public History mapRow(ResultSet rs, int idx) 
					throws SQLException {				
				return new History(
					rs.getString("contents"),
					rs.getString("year"),
					rs.getString("month"),
					rs.getInt("cate")
				);
			}				
		};		
		List<History> list = jTmp.query(sql, mapper);		
		return list.toArray(new History[0]);
	}
	
	public Board[] getBoard(String sql) {
		
		RowMapper<Board> mapper = new RowMapper<Board>() {
			@Override
			public Board mapRow(ResultSet rs, int idx) 
					throws SQLException {				
				return new Board(
					rs.getInt("bbs_no"),
					rs.getString("bbs_name"),
					rs.getString("bbs_subject"),
					rs.getString("bbs_content"),
					rs.getInt("bbs_hit"),
					rs.getString("bbs_date")
				);
			}				
		};		
		List<Board> list = jTmp.query(sql, mapper);		
		return list.toArray(new Board[0]);
	}
	public Comment[] getComment(String sql) {	
		RowMapper<Comment> mapper = new RowMapper<Comment>() {
			@Override
			public Comment mapRow(ResultSet rs, int idx) 
					throws SQLException {				
				return new Comment(
					rs.getInt("comm_no"),
					rs.getString("comm_bbs_id"),
					rs.getString("comm_name"),
					rs.getString("comm_content"),
					rs.getString("comm_pass"),
					rs.getString("comm_date")
				);
			}				
		};		
		List<Comment> list = jTmp.query(sql, mapper);		
		return list.toArray(new Comment[0]);
	}
	
	
}
