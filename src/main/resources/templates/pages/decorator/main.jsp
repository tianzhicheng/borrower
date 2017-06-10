<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../commons/taglibs.jsp" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8"/>
    <title>${title_prefix}<sitemesh:write property='title'/></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta content="${title_prefix}管理后台" name="description"/>
    <!--全局必须样式开始-->
    <link href="${ctx}/resources/weway/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/weway/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/weway/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/weway/assets/global/plugins/uniform/css/uniform.default.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/weway/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
    <%--<link rel="stylesheet" href="${ctx}/resources/weway/asset/global/plugins/bootstrap/css/bootstrap.min.css" type="text/css">--%>
    <link rel="shortcut icon" href="${ctx}/resources/favicon.ico"/>
    <!--全局必须样式结束-->
    <!--核心插件开始-->
    <script src="${ctx}/static/js/widget/jquery/jquery-1.11.3.min.js"></script>
    <script src="${ctx}/resources/weway/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${ctx}/resources/weway/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
    <script src="${ctx}/resources/weway/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
    <script src="${ctx}/resources/weway/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="${ctx}/resources/weway/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
    <script src="${ctx}/resources/weway/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
    <script src="${ctx}/resources/weway/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
    <!--核心插件结束-->
    <!--全局脚本开始-->
    <script src="${ctx}/resources/weway/assets/global/scripts/app.js" type="text/javascript"></script>
    <!--全局脚本结束-->
    <link href="${ctx}/resources/weway/assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css"/>
    <link href="${ctx}/resources/weway/assets/global/css/plugins.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/weway/assets/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/weway/assets/layouts/layout/css/themes/darkblue.min.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="${ctx}/resources/weway/assets/layouts/layout/css/custom.min.css" rel="stylesheet" type="text/css"/>
    <sitemesh:write property='head'/>
</head>

<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
<jsp:include page="header.jsp"/>
<div class="clearfix"></div>

<div class="page-container">
    <div class="page-sidebar-wrapper">
        <jsp:include page="sidebar.jsp"/>
    </div>

    <div class="page-content-wrapper">
        <div class="page-content">
            <sitemesh:write property='body'/>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>