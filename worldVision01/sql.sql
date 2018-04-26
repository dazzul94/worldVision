SELECT * FROM bluead_wv_board;
SELECT contents, year, month, cate FROM bluead_history
WHERE cate = '1' ORDER BY year DESC, month DESC
SELECT bbs_no, bbs_name, bbs_subject, bbs_content, bbs_hit, bbs_date FROM bluead_wv_gallery02 ORDER BY bbs_no DESC LIMIT 0, 10;