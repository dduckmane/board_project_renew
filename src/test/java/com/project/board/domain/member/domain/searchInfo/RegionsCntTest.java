package com.project.board.domain.member.domain.searchInfo;

import com.project.board.domain.member.domain.searchInfo.searchCnt.RegionsCnt;
import org.junit.jupiter.api.Test;

import java.lang.reflect.Field;

class RegionsCntTest {

    @Test
    void addCnt() throws NoSuchFieldException {
        RegionsCnt regionsCnt = new RegionsCnt();
        Field seoul = regionsCnt.getClass().getDeclaredField("seoul");

        System.out.println("seoul = " + seoul);
    }
}