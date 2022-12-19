package com.project.board.domain.member.domain.searchInfo;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Arrays;

import static org.junit.jupiter.api.Assertions.*;

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