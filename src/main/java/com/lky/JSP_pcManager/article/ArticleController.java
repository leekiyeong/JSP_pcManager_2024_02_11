package com.lky.JSP_pcManager.article;

import com.lky.JSP_pcManager.Rq;

public class ArticleController {
  public void showList(Rq rq) {
    rq.appendBody("게시물 리스트");
  }
}
