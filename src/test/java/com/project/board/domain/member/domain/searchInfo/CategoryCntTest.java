package com.project.board.domain.member.domain.searchInfo;

import com.project.board.domain.member.domain.searchInfo.searchCnt.CategoryCnt;
import org.junit.jupiter.api.Test;

import java.util.Arrays;

class CategoryCntTest {


    @Test
    public void test(){
        CategoryCnt categoryCnt = new CategoryCnt();
        categoryCnt.setAmerica(2);
        categoryCnt.setJapan(3);
        categoryCnt.setKorean(1);
        categoryCnt.setChina(3);
        int score = categoryCnt.getScore(4);
        System.out.println("score = " + score);

    }
    
    @Test
    public void stringOrder(){
        String[] strings={"4DDD","1Japan","2DD","3GG"};
        Arrays.sort(strings);
        for (String string : strings) {
            System.out.println("string = " + string);
        }

    }
}