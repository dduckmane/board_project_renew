package com.project.board.domain.board.repository;

import com.project.board.domain.board.domain.Board;
import com.project.board.domain.board.search.BoardSearchCondition;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface BoardRepositoryCustom {

    Page<Board>searchAllCondition(int groupId, BoardSearchCondition searchCondition, Pageable pageable);
}
