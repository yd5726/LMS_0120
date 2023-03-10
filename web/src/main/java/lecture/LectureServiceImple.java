package lecture;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vo.BoardVO;
import vo.ExamVO;
import vo.HomeworkVO;
import vo.LectureVO;
import vo.MemberVO;

@Service
public class LectureServiceImple  implements LectureService {

	@Autowired private LectureDAO dao;
	
	@Override
	public List<LectureVO> lecture_list(int member_code) {
		
		return dao.lecture_list(member_code);
	}

	@Override
	public MemberVO info(int lecture_code) {
		return dao.info(lecture_code);
	}

	@Override
	public List<BoardVO> notice_list(int lecture_code) {
		return dao.notice_list(lecture_code);
	}

	@Override
	public BoardVO notice_info(int board_code) {
		return dao.notice_info(board_code);
	}

	@Override
	public List<HomeworkVO> homework_list(HashMap<String, Object> map) {
		return dao.homework_list(map);
	}

	@Override
	public HomeworkVO homework_info(HashMap<String, Object> map) {
		return dao.homework_info(map);
	}

	@Override
	public List<BoardVO> video_list(int lecture_code) {
		return dao.video_list(lecture_code);
	}

	@Override
	public List<ExamVO> exam_list(HashMap<String, Object> map) {
		return dao.exam_list(map);
	}

	@Override
	public List<LectureVO> te_lec_list(HashMap<String, String> tempMap) {
		return dao.te_lec_list(tempMap);
	}

	@Override
	public int open_new_lecture(LectureVO lecturevo) {
		return dao.open_new_lecture(lecturevo);
	}

	@Override
	public int modify_lecture(LectureVO lecturevo) {
		return dao.modify_lecture(lecturevo);
	}

	@Override
	public void delete_lecture(int lecture_code) {
		dao.delete_lecture(lecture_code);
	}

	@Override
	public List<LectureVO> lecture_code_list(int teacher_code) {
		return dao.lecture_code_list(teacher_code);
	}

	@Override
	public List<LectureVO> sys_lec_list() {
		return dao.sys_lec_list();
	}

	public LectureVO sys_lec_one(int lecture_code) {
		return dao.sys_lec_one(lecture_code);
	}
}
