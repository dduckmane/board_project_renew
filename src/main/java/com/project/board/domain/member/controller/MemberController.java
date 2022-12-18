package com.project.board.domain.member.controller;

import com.project.board.domain.member.controller.request.ChoiceBoard;
import com.project.board.domain.member.domain.Member;
import com.project.board.domain.member.repository.MemberRepository;
import com.project.board.domain.member.service.MemberService;
import com.project.board.global.config.auth.PrincipalDetails;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/user")
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;
    private final MemberRepository memberRepository;
    @PostMapping("/board")
    public void selectedBoard(
            @AuthenticationPrincipal PrincipalDetails principalDetails
            , @RequestBody ChoiceBoard choiceBoard
            ){
        memberService.choiceBoard(
                choiceBoard.getBoardId()
                , principalDetails.getMember());

        Member member = memberRepository.findByUsername(principalDetails.getUsername()).orElseThrow();
        List<Long> choiceBoard1 = member.getChoiceBoard();
        for (Long aLong : choiceBoard1) {
            System.out.println("aLong = " + aLong);
        }
    }
    @GetMapping("/board")
    public List<Long> findChoiceBoardId(
            @AuthenticationPrincipal PrincipalDetails principalDetails
    ){
        return memberRepository
                .findByUsername(principalDetails.getUsername())
                .orElseThrow()
                .getChoiceBoard();
    }

}
