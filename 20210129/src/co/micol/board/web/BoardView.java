package co.micol.board.web;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.board.common.Command;
import co.micol.board.dao.BoardDao;
import co.micol.board.vo.BoardVo;
import co.micol.board.vo.ReplyVo;

public class BoardView implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO 상세보기
		BoardDao dao = new BoardDao();
		BoardVo vo = new BoardVo();
		ReplyVo rvo = new ReplyVo();
		ArrayList<ReplyVo> list = new ArrayList<ReplyVo>();   //댓글 담기
		
		vo.setbId(Integer.parseInt(request.getParameter("bId")));
		rvo.setbId(Integer.parseInt(request.getParameter("bId")));
		
		vo = dao.select(vo); //주인 글 읽어옴
		dao = new BoardDao();
		list = dao.replySelect(rvo); //댓글 읽기
		
		request.setAttribute("vo", vo); //주인 글 담았음
		request.setAttribute("rlist", list); //댓글 담았음
		return "board/boardView";
	}

}
