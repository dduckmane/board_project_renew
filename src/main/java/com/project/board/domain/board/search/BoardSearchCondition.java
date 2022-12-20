package com.project.board.domain.board.search;

import com.project.board.domain.member.domain.searchInfo.SearchInfo;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import static com.project.board.domain.member.domain.searchInfo.SearchInfo.*;

@Data
public class BoardSearchCondition {
    private String name;
    private String title;
    private String all;
    private String price;
    private String tag;

    public Map<String,String> getInfo(){
        Map<String,String> info= new ConcurrentHashMap<>();

        if(name!=null) info.put("name", name);
        if(title!=null) info.put("title", title);
        if(all!=null) info.put("all", all);
        if(price!=null) info.put(PRICE, price);
        if(tag!=null) info.put("tag", tag);

        return info;
    }
}
