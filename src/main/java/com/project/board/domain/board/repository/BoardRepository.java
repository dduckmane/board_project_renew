package com.project.board.domain.board.repository;

import com.project.board.domain.board.domain.Board;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BoardRepository extends JpaRepository<Board,Long>,BoardRepositoryCustom {

}

