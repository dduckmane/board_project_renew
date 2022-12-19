package com.project.board.domain.member.domain.searchInfo;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.ElementCollection;
import javax.persistence.Embeddable;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import static com.project.board.domain.member.domain.searchInfo.SearchInfo.PRICE;
import static com.project.board.global.util.OrderUtils.order;

@NoArgsConstructor
@Embeddable
@Data
public class TagCnt implements AddCnt {
    private int atmosphere;
    private int money;
    private int reservation;
    private int play;
    @ElementCollection
    private Map<String,Integer> orderMap=new ConcurrentHashMap<>();

    @Override
    public Boolean support(String name) {
        return name.equals("tag");

    }
    @Override
    public void addCnt(String tag) {
        if(tag.equals("atmosphere")) atmosphere++;
        else if(tag.equals("money")) money++;
        else if(tag.equals("reservation")) reservation++;
        else play++;
    }
    public int getScore(String tag){

        String[] orders ={
                Integer.toString(atmosphere)+"atmosphere"
                ,Integer.toString(money)+"money"
                ,Integer.toString(reservation)+"reservation"
                ,Integer.toString(play)+"play"
                ,"0"
        };
        Arrays.sort(orders);

        order(0,orders,orderMap,orders.length-1,0);

        Integer score = getScoreByGroupId(tag);
        return score;
    }

    private Integer getScoreByGroupId(String tag) {
        if(tag.equals("atmosphere")) return orderMap.get("atmosphere");
        if(tag.equals("money")) return orderMap.get("money");
        if(tag.equals("reservation")) return orderMap.get("reservation");
        if(tag.equals("play")) return orderMap.get("play");
        throw new IllegalArgumentException("No search Tag");
    }
}
