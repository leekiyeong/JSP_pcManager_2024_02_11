package com.lky.JSP_pcManager.member;

import com.lky.JSP_pcManager.Rq;

public class MemberController {
  public void showLogin(Rq rq) {
    rq.appendBody("로그인");
  }
}
