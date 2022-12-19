package com.project.board.domain.member.domain.searchInfo;

import org.junit.jupiter.api.Test;

import java.lang.reflect.Field;

import static org.junit.jupiter.api.Assertions.*;

class RegionsCntTest {

    @Test
    void addCnt() throws NoSuchFieldException {
        RegionsCnt regionsCnt = new RegionsCnt();
        Field seoul = regionsCnt.getClass().getDeclaredField("seoul");

        System.out.println("seoul = " + seoul);
    }
}