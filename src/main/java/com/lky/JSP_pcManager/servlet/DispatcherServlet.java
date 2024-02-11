package com.lky.JSP_pcManager.servlet;

import com.lky.JSP_pcManager.Rq;
import com.lky.JSP_pcManager.article.ArticleController;
import com.lky.JSP_pcManager.member.MemberController;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

/*@WebServlet("/usr/article/list")
 원래라면 어노테이션을 통한 정확한 url을 적음 */

@WebServlet("/usr/*")
public class DispatcherServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    Rq rq = new Rq(req, resp);

    MemberController memberController = new MemberController();
    ArticleController articleController = new ArticleController();

    //getRequestURI ->
    //http://localhost:8080/usr/article/list/free?page=1
    // /usr/article/list/free 부분만 가져온다
    String url = req.getRequestURI();

    switch (url){
      case "/usr/article/list/free":
        articleController.showList(rq);
        break;
      case "/usr/member/login":
        memberController.showLogin(rq);
        break;

    }

  }
}
