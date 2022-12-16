package com.project.board.domain.board.dto.response;

import com.project.board.domain.board.domain.Board;
import com.project.board.global.util.FileUtils;
import com.querydsl.core.annotations.QueryProjection;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.core.io.UrlResource;

import java.net.MalformedURLException;

@Data
@NoArgsConstructor
public class BestDto {
    private static final String UPLOAD_PATH = "C:\\sl_dev\\upload";
    private String name;
    private Long viewCnt;
    private Long itemId;

    public BestDto(Board board) throws MalformedURLException {
        this.name = board.getTitle();
        this.viewCnt = board.getViewCnt();
        this.itemId= board.getId();

    }
}
