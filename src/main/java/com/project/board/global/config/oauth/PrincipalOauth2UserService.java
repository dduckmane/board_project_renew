package com.project.board.global.config.oauth;

import com.project.board.domain.member.domain.Member;
import com.project.board.domain.member.repository.MemberRepository;
import com.project.board.global.config.auth.PrincipalDetails;
import com.project.board.global.config.provider.FaceBookUserInfo;
import com.project.board.global.config.provider.GoogleUserInfo;
import com.project.board.global.config.provider.NaverUserInfo;
import com.project.board.global.config.provider.Oauth2UserInfo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import java.util.Map;


@Service
@Slf4j
@RequiredArgsConstructor
//구글로 부터 받은 userRequest 데이터에 대한 후처리가 되는 메서드
public class PrincipalOauth2UserService extends DefaultOAuth2UserService {
    private final BCryptPasswordEncoder encoder;
    private final MemberRepository memberRepository;
    @Override
    //이 메서드를 사용하면 userRequest매개변수에 사용자 정보와 엑세스토큰이 들어온다ㅏ.
    public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
        log.info("getClientRegistration="+userRequest.getClientRegistration());
        log.info("getAccessToken="+userRequest.getAccessToken().getTokenValue());
        OAuth2User oAuth2User = super.loadUser(userRequest);
        log.info("getAttributes="+oAuth2User.getAttributes());
        Oauth2UserInfo oauth2UserInfo=null;
        if(userRequest.getClientRegistration().getRegistrationId().equals("google")){
            log.info("구글 로그인 요청");
            oauth2UserInfo=new GoogleUserInfo(oAuth2User.getAttributes());
        } else if (userRequest.getClientRegistration().getRegistrationId().equals("facebook")) {
            log.info("페이스북 로그인 요청");
            oauth2UserInfo=new FaceBookUserInfo(oAuth2User.getAttributes());
        }else if (userRequest.getClientRegistration().getRegistrationId().equals("naver")) {
            log.info("네이버 로그인 요청");
            oauth2UserInfo=new NaverUserInfo((Map)oAuth2User.getAttributes().get("response"));
        }else {
            log.info("우리는 구글과 네이버와 페이스북만 지원해요");
        }


        String provider = oauth2UserInfo.getProvider();//구글,페이스북
        String providerId = oauth2UserInfo.getProviderId();//구글이 준 사용자아이디
        String username=provider+"_"+providerId;//이러면 username이 충돌될 일은 없음
        String password= encoder.encode("겟인데어");//그냥 유저정보를 만들어주는 것 뿐 의미가 없다.
        String email = oauth2UserInfo.getEmail();//구글이 준 email
        String role="ROLE_USER";
        String name=oauth2UserInfo.getName();

        Member member = memberRepository.findByUsername(username).orElseGet(()->new Member("optional"));

        if(member.getId()==null){
            member = Member.builder()
                    .username(username)
                    .password(password)
                    .email(email)
                    .role(role)
                    .provider(provider)
                    .providerId(providerId)
                    .name(name)
                    .build();
            memberRepository.save(member);
        }else {
            log.info("로그인을 이미 한적이 있습니다. 당신은 자동회원가입이 되어있습니다.");
        }

        return new PrincipalDetails(member,oAuth2User.getAttributes());

    }


}
