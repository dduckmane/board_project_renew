package com.project.board.domain.member.service;

import com.project.board.domain.board.controller.request.ListParam;
import com.project.board.domain.board.search.BoardSearchCondition;
import com.project.board.domain.member.domain.Member;
import com.project.board.domain.member.domain.searchInfo.SearchInfo;
import com.project.board.domain.member.repository.MemberRepository;
import com.project.board.domain.member.repository.SearchInfoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Map;

@Service
@Transactional
@RequiredArgsConstructor
public class MemberService {

    private final MemberRepository memberRepository;
    private final SearchInfoService searchInfoService;
    public void choiceBoard(Long boardId, Member member) {
        Member findMember = memberRepository.findByUsername(member.getUsername()).orElseThrow();
        findMember.choiceBoard(boardId);
    }

    public void collectInfo(Member member, ListParam listParam, BoardSearchCondition searchCondition) {
        Map<String, String> info = listParam.getInfo();
        Map<String, String> info1 = searchCondition.getInfo();

        info.putAll(info1);

        info.entrySet().stream()
                .filter(entry -> !entry.getValue().equals("sort"))
                .forEach(entry ->{
                    searchInfoService.addCnt(member,entry.getKey(), entry.getValue());
                 });

    }
}
