package com.project.board.domain.member.domain.searchInfo;

import com.project.board.domain.board.domain.Board;
import com.project.board.domain.member.domain.Member;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Getter
public class SearchInfo {

    public static String CATEGORY="category";
    public static String REGION="regions";
    public static String PRICE="price";

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "searchInfo_id", nullable = false)
    private Long id;

    @Embedded
    private CategoryCnt category;
    @Embedded
    private RegionsCnt regionsCnt;
    @Embedded
    private PriceCnt priceCnt;
    @Embedded
    private TagCnt tagCnt;
    @OneToOne(mappedBy = "searchInfo", fetch = FetchType.LAZY)
    private Member member;

    public SearchInfo(Member member) {
        category=new CategoryCnt();
        regionsCnt=new RegionsCnt();
        priceCnt=new PriceCnt();
        tagCnt=new TagCnt();

        this.member = member;
        member.addSearchInfo(this);
    }

    public void addCnt(Member member, String type, String param){
        findAddCnt(type).addCnt(param);
        member.addSearchInfo(this);
    }


    AddCnt findAddCnt(String name){
        List<AddCnt> info =new ArrayList<>();

        info.add(priceCnt);
        info.add(regionsCnt);
        info.add(category);
        info.add(tagCnt);

        return info.stream()
                .filter(addCnt -> addCnt.support(name))
                .findFirst()
                .orElseThrow(()->new IllegalArgumentException());
    }

    public int getTotalScore(Board board){
        int score = category.getScore(board.getGroupId());
        int score1 = priceCnt.getScore(board.getPrice());
        int score2 = regionsCnt.getScore(board.getAddress().getRepresentativeArea());

        return score1+score1+score2;
    }



}
