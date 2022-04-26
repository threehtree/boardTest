package org.zerock.boardtest.domain;

import lombok.*;
import org.springframework.beans.factory.annotation.Autowired;

import java.time.LocalDateTime;

@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Reply {

    private Integer rno;
    private Integer bno;
    private String replyText;
    private String replyer;
    private LocalDateTime regDate;
    private LocalDateTime updateDate;
    //나중에 시간 처리 어려울거야

}
