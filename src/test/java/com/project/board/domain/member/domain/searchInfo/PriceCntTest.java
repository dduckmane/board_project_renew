package com.project.board.domain.member.domain.searchInfo;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class PriceCntTest {

    @Test
    public void getScore(){
        PriceCnt priceCnt = new PriceCnt();
        priceCnt.setOne(1);
        priceCnt.setTwo(2);
        priceCnt.setThree(3);
        priceCnt.setFour(4);

        int score = priceCnt.getScore(50000);
        System.out.println("score = " + score);
    }

}