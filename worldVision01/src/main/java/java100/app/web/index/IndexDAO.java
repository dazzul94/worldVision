package java100.app.web.index;

import java.security.MessageDigest;
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
	
	public int insertMember(Member member) {
		String sql = "INSERT INTO bluead_member (member_id, member_nick, member_pass, member_name, member_reg_no1, "
				+ "member_reg_no2, member_birth1, member_birth2, member_email, member_zip1, member_zip2, "
				+ "member_address1, member_address2, member_tel1, member_tel2, member_tel3, member_htel1,"
				+ "member_htel2, member_htel3) VALUES (?, ?, OLD_PASSWORD(?), ?, ?, ? ,? ,? ,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		return jTmp.update(sql, member.getMember_id(), member.getMember_nick(), member.getMember_pass(), 
				member.getMember_name(), member.getMember_reg_no1(), member.getMember_reg_no2(), member.getMember_birth1(),
				member.getMember_birth2(), member.getMember_email(), member.getMember_zip1(), member.getMember_zip2(),
				member.getMember_address1(), member.getMember_address2(), member.getMember_tel1(), member.getMember_tel2(),
				member.getMember_tel3(), member.getMember_htel1(), member.getMember_htel2(), member.getMember_htel3());	
	}
	
	public String getFindId(String sql) {
		RowMapper<Member> mapper = new RowMapper<Member>() {
			@Override
			public Member mapRow(ResultSet rs, int idx) 
					throws SQLException {				
				return new Member(
					rs.getString("member_id")
				);
			}				
		};		

		return jTmp.query(sql, mapper).get(0).getMember_id();
	}
	
	public boolean checkId(String id) {
		String sql = "SELECT member_id FROM bluead_member WHERE member_id = '" + id + "'";
		
		RowMapper<Member> mapper = new RowMapper<Member>() {
			@Override
			public Member mapRow(ResultSet rs, int idx) 
					throws SQLException {				
				return new Member(
					rs.getString("member_id")
				);
			}				
		};		
		
		return jTmp.query(sql, mapper).size() != 0;
	}
	
	public boolean checkPass(String id, String pass) {
		
		String sql = "SELECT member_id, member_pass FROM bluead_member "
				+ "WHERE member_id='" + id + "' && member_pass = OLD_PASSWORD('" + pass + "')";
		RowMapper<Member> mapper = new RowMapper<Member>() {
			@Override
			public Member mapRow(ResultSet rs, int idx) 
					throws SQLException {				
				return new Member(
					rs.getString("member_id"),
					rs.getString("member_pass")
				);
			}				
		};		
		
		return jTmp.query(sql, mapper).size() != 0;
	}
	
	public int insertApplication(Application application) {
		String sql = "INSERT INTO bluead_online (type, member_id, name, tel1, tel2, tel3, htel1, htel2, htel3, email, zip1, zip2, address1, address2, contents) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		return jTmp.update(sql, application.getType(), application.getMember_id(), application.getName(), application.getTel1(), application.getTel2(), application.getTel3(),
				application.getHtel1(), application.getHtel2(), application.getHtel3(), application.getEmail(), application.getZip1(),
				application.getZip2(), application.getAddress1(), application.getAddress2(), application.getContents());	
	}
	
	public int insertComment(Comment comment) {
		String sql = "INSERT INTO bluead_comment(comm_fid, comm_thread, comm_bbs_id, comm_bbs_no, "
				+ "comm_name, comm_content, comm_date) VALUES(?, ? ,?, ?, ?, ?, ?)";
		
		return jTmp.update(sql, comment.getComm_fid(),	comment.getComm_thread(), comment.getComm_bbs_id(), 
				comment.getComm_bbs_no(), comment.getComm_name(), comment.getComm_content(), comment.getComm_date());
	}
	
//	public String encrypt(String planText) {
//        try{
//            MessageDigest md = MessageDigest.getInstance("SHA-256");
//            md.update(planText.getBytes());
//            byte byteData[] = md.digest();
//
//            StringBuffer sb = new StringBuffer();
//            for (int i = 0; i < byteData.length; i++) {
//                sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
//            }
//
//            StringBuffer hexString = new StringBuffer();
//            for (int i=0;i<byteData.length;i++) {
//                String hex=Integer.toHexString(0xff & byteData[i]);
//                if(hex.length()==1){
//                    hexString.append('0');
//                }
//                hexString.append(hex);
//            }
//
//            return hexString.toString();
//        }catch(Exception e){
//            e.printStackTrace();
//            throw new RuntimeException();
//        }
//    }
}
