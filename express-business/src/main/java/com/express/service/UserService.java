package com.express.service;

import com.express.domain.Route;
import com.express.domain.RouteInfoVo;
import com.express.domain.User;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by xinghang on 17/9/28.
 */
public interface UserService {
  //String login(String account, String password, HttpServletRequest req, HttpServletResponse resp);

  User login(String account, String password, HttpServletRequest req, HttpServletResponse resp);

  String selByToken(String token);

  void logout(HttpServletRequest req, HttpServletResponse resp);

  int createUser(User user);

  User testFilter(String userName, String password);

  Map<String, Object> commentInfo(long userId);

  User getUser(long userId);

  /**
   * 该方法会遗漏掉routeid的问题
   * @param userIds
   * @return
   */
  List<RouteInfoVo> getRouteInfo(List<Long> userIds );

  List<RouteInfoVo> getInfo(List<Route> routes);
}
