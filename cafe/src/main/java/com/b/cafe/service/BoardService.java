package com.b.cafe.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.b.cafe.model.Board;
import com.b.cafe.model.Reply;
import com.b.cafe.model.User;
import com.b.cafe.repository.BoardRepository;
import com.b.cafe.repository.ReplyRepository;

@Service
public class BoardService {

	@Autowired
	private ReplyRepository replyRepository;

	@Autowired
	private BoardRepository boardRepository;

	@Transactional
	public void 글쓰기(Board board, User user) {
		board.setCount(0);
		board.setUser(user);
		boardRepository.save(board);
	}

	@Transactional(readOnly = true)
	public Page<Board> 글목록(Pageable pageable) {
		return boardRepository.findAll(pageable);
	}

	@Transactional(readOnly = true)
	public Board 글상세보기(int id) {
		return boardRepository.findById(id).orElseThrow(() -> {
			return new IllegalArgumentException("글 상세보기 실패");
		});
	}

	@Transactional
	public void 글삭제하기(int id) {
		boardRepository.deleteById(id);
	}

	@Transactional
	public void 글수정하기(int id, Board requestBoard) {
		Board board = boardRepository.findById(id).orElseThrow(() -> {
			return new IllegalArgumentException("글 찾기 실패");
		});
		board.setTitle(requestBoard.getTitle());
		board.setContent(requestBoard.getContent());
	}

	@Transactional
	public void 댓글쓰기(User user, int boardId, Reply requestReply) {

		Board board = boardRepository.findById(boardId).orElseThrow(() -> {
			return new IllegalArgumentException("댓글쓰기 실패");
		});

		requestReply.setUser(user);
		requestReply.setBoard(board);
		replyRepository.save(requestReply);
	}

	@Transactional
	public void 댓글삭제(int replyid) {
		replyRepository.deleteById(replyid);
	}
	@Transactional
	public Board detail(int id) {
	    boardRepository.updateCount(id);
	    return boardRepository.findById(id).orElseThrow(() -> {
	        return new IllegalArgumentException("글 상세보기 실패: 아이디를 찾을 수 없습니다.");
	    });
	}
}