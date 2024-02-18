package com.lky.jsp.pcManager.article;

import com.lky.jsp.pcManager.Rq;
import com.lky.jsp.pcManager.article.dto.ArticleDto;

import java.util.ArrayList;
import java.util.List;

public class ArticleController {
  public void showList(Rq rq) {

    List<ArticleDto> articleDtos = new ArrayList<>();
    for (int i = 5; i >= 1; i--) {
      articleDtos.add(new ArticleDto(i, "제목" + i, "내용" + i));
    }
    rq.setAttr("articles", articleDtos);
    System.out.println("showList set 메서드가 호출 되었습니다.");
    System.out.println(rq);
    rq.view("usr/article/list");
    System.out.println("showList view 메서드가 호출 되었습니다.");
  }

  public void showWrite(Rq rq) {
    rq.view("usr/article/write");
  }

  public void doWrite(Rq rq) {
    String title = rq.getParam("title", "");
    String body = rq.getParam("body","");

    rq.appendBody("<div>title : %s</div>".formatted(title));
    rq.appendBody("<div>body : %s</div>".formatted(body));
  }
}
