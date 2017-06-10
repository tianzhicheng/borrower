<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../commons/taglibs.jsp" %>
<!-- 顶部开始 -->
<div class="page-header navbar navbar-fixed-top">
    <div class="page-header-inner">
        <!-- LOGO区域开始 -->
        <div class="page-logo">
            <a href="index.do">
                <img src="${ctx}/resources/weway/assets/layouts/layout/img/logo.png" alt="logo" class="logo-default" /> </a>
        </div>
        <!-- LOGO区域结束 -->

        <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a>
        <div class="top-menu">
            <ul class="nav navbar-nav pull-right">
                <!-- 用户登录菜单开始 -->
                <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                <li class="dropdown dropdown-user">
                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                        <img class="img-circle" src="${ctx}/resources/weway/assets/layouts/layout/img/avatar3_small.jpg" />
                        <span class="username username-hide-on-mobile"> 超级管理员</span>
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-default">
                        <li>
                            <a href="page_user_profile_1.html"><i class="icon-user"></i> 修改资料 </a>
                        </li>
                        <li>
                            <a href="app_inbox.html">
                                <i class="icon-envelope-open"></i> 我的消息<span class="badge badge-danger"> 3 </span>
                            </a>
                        </li>
                        <li>
                            <a href="app_todo.html">
                                <i class="icon-rocket"></i> 待办事项<span class="badge badge-success"> 7 </span>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="${ctx}/admin/logout.do">
                                <i class="icon-key"></i> 退出
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- 用户登录菜单结束 -->
            </ul>
        </div>
    </div>
</div>
<!-- 顶部结束 -->