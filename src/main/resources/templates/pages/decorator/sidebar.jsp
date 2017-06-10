<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../commons/taglibs.jsp" %>

<!-- 侧栏开始 -->
<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
<div class="page-sidebar navbar-collapse collapse">
    <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
    <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
    <ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="true" data-auto-scroll="true" data-slide-speed="200" id="sidebarNav">
        <li class="sidebar-toggler-wrapper">
            <!-- 侧栏切换按钮 -->
            <div class="sidebar-toggler"></div>
            <!-- 侧栏切换按钮 -->
        </li>
        <li class="nav-item start">
            <a href="" class="nav-link">
                <i class="icon-home"></i>
                <span class="title">首页</span>
            </a>
        </li>
        <li class="heading">
            <h3 class="uppercase">系统功能</h3>
        </li>
        <li class="nav-item">
            <a href="" class="nav-link nav-toggle">
                <i class="icon-user"></i>
                <span class="title">系统管理</span>
                <span class="arrow"></span>
            </a>
            <ul class="sub-menu">

                <li class="nav-item">
                    <a href="${ctx}/admin/app/index" class="nav-link">
                        <span class="title">应用场景</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a href="javascript:;" class="nav-link nav-toggle">
                <i class="icon-briefcase"></i>
                <span class="title">开发者管理</span>
                <span class="arrow"></span>
            </a>
            <ul class="sub-menu">
                <li class="nav-item">
                    <a href="${ctx}/admin/style/index" class="nav-link">
                        <span class="title">风格管理</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${ctx}/admin/template/index" class="nav-link">
                        <span class="title">模板管理</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${ctx}/admin/author/index" class="nav-link">
                        <span class="title">作者管理</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${ctx}/admin/game/index" class="nav-link">
                        <span class="title">奖项管理</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a href="javascript:;" class="nav-link nav-toggle">
                <i class="icon-user"></i>
                <span class="title">大客户集群</span>
                <span class="arrow"></span>
            </a>
            <ul class="sub-menu">
                <li class="nav-item">
                    <a href="${ctx}/admin/bizCompany/index" class="nav-link">
                        <span class="title">商家管理</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${ctx}/admin/bizUser/index" class="nav-link">
                        <span class="title">用户管理</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${ctx}/admin/userApp/index" class="nav-link">
                        <span class="title">商家场景</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${ctx}/admin/beacon/index.do" class="nav-link">
                        <span class="title">信标管理</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${ctx}/admin/org/index.do" class="nav-link">
                        <span class="title">组织层级</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a href="javascript:;" class="nav-link nav-toggle">
                <i class="icon-user"></i>
                <span class="title">接入用户管理</span>
                <span class="arrow"></span>
            </a>
            <ul class="sub-menu">
                <li class="nav-item">
                    <a href="${ctx}/admin/clientUser/list" class="nav-link">
                        <span class="title">接入用户</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${ctx}/admin/clientUser/visitor/list" class="nav-link">
                        <span class="title">访客记录</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${ctx}/admin/userApp/shakeLogList" class="nav-link">
                        <span class="title">摇一摇日志</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${ctx}/admin/user/broadcast/list" class="nav-link">
                        <span class="title">手机广播收集</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${ctx}/admin/clientUser/statistics/list" class="nav-link">
                        <span class="title">场景访客统计</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${ctx}/admin/clientUser/statistics/beaconList" class="nav-link">
                        <span class="title">信标访客统计</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${ctx}/admin/clientUser/dayStatistic/list" class="nav-link">
                        <span class="title">场景单日访客统计</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${ctx}/admin/game/log/gameLog/list" class="nav-link">
                        <span class="title">奖项记录</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="heading">
            <h3 class="uppercase">系统管理</h3>
        </li>
        <li class="nav-item">
            <a href="javascript:;" class="nav-link nav-toggle">
                <i class="icon-settings"></i>
                <span class="title">后台管理</span>
                <span class="arrow"></span>
            </a>
            <ul class="sub-menu">
                <li class="nav-item">
                    <a href="" class="nav-link">
                        <span class="title">权限管理</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="" class="nav-link">
                        <span class="title">角色管理</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="" class="nav-link">
                        <span class="title">管理员管理</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="" class="nav-link">
                        <span class="title">系统参数管理</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a href="" class="nav-link nav-toggle">
                <i class="icon-notebook"></i>
                <span class="title">日志审核</span>
                <span class="arrow"></span>
            </a>
            <ul class="sub-menu">
                <li class="nav-item  ">
                    <a href="${ctx}/admin/report/apiInvokeLog" class="nav-link">
                        <span class="title">接口访问日志</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a href="" class="nav-link">
                <i class="icon-wrench"></i>
                <span class="title">修改密码</span>
            </a>
        </li>
    </ul>
</div>
<!-- 侧栏结束 -->