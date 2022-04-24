package org.zerock.boardtest.dto;

import lombok.Getter;
import lombok.ToString;

@ToString
@Getter
public class ListDTO {

    private int page;
    private int size;

    public ListDTO() {
        this.page = 1;
        this.size = 10;
    }

    public void setPage(int page) {
        this.page = page <= 0 ? 1 : page;
    }

    public void setSize(int size) {
        // 다중 상함 효력은 좋으나 가독성 나쁨
        //        this.size = size <10 ? 10 : size >= 1000 ? 10 : size;
        this.size = size < 10 ? 10 : size;
    }

    public int getSkip(){
        return(this.page - 1) * size;
    }

}