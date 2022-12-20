package com.project.board.domain.member.domain.searchInfo.searchCnt;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class NameInfoAddTest {

    @Test
    void addCnt() {
        NameInfoAdd nameInfoAdd = new NameInfoAdd();
        nameInfoAdd.addCnt("title");
        nameInfoAdd.addCnt("title");
        nameInfoAdd.addCnt("title name");

        nameInfoAdd.getOrderMap().entrySet().stream().forEach(stringIntegerEntry -> {
            System.out.println("stringIntegerEntry.getKey() = " + stringIntegerEntry.getKey());
            System.out.println("stringIntegerEntry.getValue() = " + stringIntegerEntry.getValue());
        });
    }
}