package com.project.board;

import com.project.board.domain.board.dto.response.BestDto;
import com.project.board.domain.board.repository.BoardRepository;
import com.project.board.domain.board.repository.query.BoardQueryRepo;
import com.project.board.domain.member.domain.Member;
import com.project.board.domain.member.repository.MemberRepository;
import com.project.board.global.config.auth.PrincipalDetails;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.net.MalformedURLException;

@Controller
@Slf4j
@RequiredArgsConstructor
public class HomeController {
    private final BoardRepository boardRepository;

    @GetMapping({ "", "/" })
    public String index(
            @PageableDefault(page = 0) Pageable pageable
            , Model model
    ) {
            Page<BestDto> bestDtos = boardRepository.searchBestInfo(pageable).map(board -> {
                try {
                    return new BestDto(board);
                } catch (MalformedURLException e) {
                    throw new RuntimeException(e);
                }
            });
            model.addAttribute("items", bestDtos.getContent());
            return "index";

        }

    @GetMapping("/login")
    public String loginForm(){
        return "loginForm";
    }

}
