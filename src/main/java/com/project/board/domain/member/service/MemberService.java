package com.project.board.domain.member.service;

import com.project.board.domain.member.domain.Member;
import com.project.board.domain.member.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
@RequiredArgsConstructor
public class MemberService {

    private final MemberRepository memberRepository;

    public void choiceBoard(Long boardId, Boolean choice, Member member) {
        Member findMember = memberRepository.findByUsername(member.getUsername()).orElseThrow();
        findMember.choiceBoard(choice, boardId);
    }
}
