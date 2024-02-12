package com.lky.jsp.pcManager.member;

import com.lky.jsp.pcManager.Rq;

public class MemberController {
  public void showLogin(Rq rq) {
    rq.appendBody("로그인");
  }
}
