package com.project.board.domain.board.controller.adapter;

import com.project.board.domain.board.controller.adapter.dto.RecommendDto;
import com.project.board.domain.board.domain.Board;
import com.project.board.domain.board.repository.BoardRepositoryImpl;
import com.project.board.domain.board.search.BoardSearchCondition;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.support.PageableExecutionUtils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@RequiredArgsConstructor
public class SearchByRecommend implements findQueryAdapter{

    private final BoardRepositoryImpl boardRepository;
    private List<RecommendDto> recommendDtos=new ArrayList<>();

    @Override
    public boolean supports(Object param) {
        if(!(param instanceof String)) return false;

        String changeParam = (String) param;
        return changeParam.equals("recommend");
    }

    @Override
    public Page<Board> handle(Object param, BoardSearchCondition searchCondition, Pageable pageable) {
        recommendDtos.clear();

        Page<Board> boards = boardRepository.searchAll(searchCondition, pageable);
        List<Board> content = boards.getContent();

        content.stream().forEach(board -> {
            int totalScore = board.getMember().getSearchInfo().getTotalScore(board);
            recommendDtos.add(new RecommendDto(totalScore,board));
        });
        Collections.sort(recommendDtos);

        List<Board> result = recommendDtos.stream().map(recommendDto -> recommendDto.getBoard()).collect(Collectors.toList());
        return new PageImpl<>(result,pageable,boards.getTotalElements());
    }
}
