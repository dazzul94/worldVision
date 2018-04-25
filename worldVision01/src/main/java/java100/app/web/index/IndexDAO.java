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
	
	public History[] getHistory1() {
		String sql = "SELECT contents, year, month, cate FROM bluead_history WHERE cate = '1' ORDER BY year DESC, month DESC";
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
	
	public History[] getHistory2() {
		String sql = "SELECT contents, year, month, cate FROM bluead_history WHERE cate = '2' ORDER BY year DESC, month DESC";
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
	
}
