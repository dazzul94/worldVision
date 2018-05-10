SELECT * FROM bluead_wv_board;
SELECT contents, year, month, cate FROM bluead_history
WHERE cate = '1' ORDER BY year DESC, month DESC
SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date FROM bluead_wv_gallery02 ORDER BY bbs_no DESC LIMIT 0, 10;
SELECT bbs_subject, bbs_content FROM bluead_wv_webzine WHERE bbs_subject like '%월드%' or bbs_content like '%월드%' ORDER BY bbs_no DESC LIMIT 0, 2
SELECT comm_no, comm_bbs_id, comm_name, comm_content, comm_pass, comm_date 
FROM bluead_comment 
WHERE comm_bbs_id = 'wv_gallery02' && comm_bbs_no = 20
ORDER BY comm_no DESC;
SELECT * FROM bluead_member WHERE member_pass = old_password('1234');
SELECT * FROM bluead_comment WHERE comm_name = '공'
SELECT * FROM bluead_member WHERE member_name = '성예진'
SELECT member_id, member_pass FROM bluead_member WHERE member_pass = ? && member_id = ?;
SELECT member_id, member_pass FROM bluead_member WHERE member_id = '1'
DELETE FROM bluead_member WHERE member_name='1'
DELETE FROM bluead_comment WHERE comm_name = '공'
SELECT * FROM bluead_chior NATURAL JOIN bluead_chior_teacher NATURAL JOIN bluead_chior_member WHERE c_no = 1
SELECT * FROM bluead_chior WHERE c_no = 3;
SELECT * FROM bluead_chior_teacher WHERE c_no = 3;
SELECT * FROM bluead_chior_member WHERE c_no = 3 ORDER BY sort;