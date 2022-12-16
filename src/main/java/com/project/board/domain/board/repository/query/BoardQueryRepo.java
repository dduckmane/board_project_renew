package com.project.board.domain.board.repository.query;

import com.project.board.domain.board.domain.Board;
import com.project.board.domain.board.domain.QBoard;
import com.project.board.domain.board.dto.response.BestDto;
import com.project.board.domain.board.dto.response.QBestDto;
import com.querydsl.jpa.impl.JPAQuery;
import com.querydsl.jpa.impl.JPAQueryFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.support.PageableExecutionUtils;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.List;

import static com.project.board.domain.board.domain.QBoard.board;

@Repository
public class BoardQueryRepo {
    private final JPAQueryFactory queryFactory;
    public BoardQueryRepo(EntityManager em) {
        this.queryFactory = new JPAQueryFactory(em);
    }


}
