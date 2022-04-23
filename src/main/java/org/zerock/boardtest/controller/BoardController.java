package org.zerock.boardtest.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.boardtest.dto.BoardDTO;

@Log4j2
@Controller
@RequestMapping("/board/")
public class BoardController{

    @GetMapping("/")
    public String basic(){
        return "redirect:/board/list";
    }

    @GetMapping("/list")
    //@RequestParam 디폴트 설정 및 주소 파라미터 자동 잡아주기 단 현재로서는 -100 같은 값을 주어도 그대로 되어버림 -> DTO 설정으로 이를 막음
    //public void list(@RequestParam(name = "page", defaultValue = "1", required = true) int page)
    public void list(){
        log.info("board test............");

    }

    @GetMapping("/register")
    public void registerGET(){

    }

    @PostMapping("/register")
    public String registerPOST(BoardDTO boardDTO, RedirectAttributes rttr){

        log.info("----------------------");
        log.info(boardDTO);

        // 단순하게 파라미터 데이터 쏴주는 방벙
//        return "redirect:/board/list?result=123";

        // 보내고 데이터 사라짐
        rttr.addFlashAttribute("result",123);
        // 보내고 데이터 유지됨됨
       //        rttr.addAttribute("num",321);

        return "redirect:/board/list";
    }

}
