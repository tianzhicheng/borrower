<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../commons/taglibs.jsp" %>
<!-- 底部开始 -->
<div class="page-footer">
    <div class="page-footer-inner"> 2015 &copy;
        <a href="http://www.vibeac.com" title="微位科技" target="_blank">微位科技</a>
    </div>
    <div class="scroll-to-top">
        <i class="icon-arrow-up"></i>
    </div>
</div>
<script>
    $(function () {
        // 提示
        $("[data-toggle='tooltip']").tooltip();

        //set the assets path
        App.setAssetsPath('${ctx}/resources/weway/assets/');
        App.setAppPath('${ctx}');
        //
        var url = window.location.href;
        $('#sidebarNav').find('li.nav-item').each(function () {
            var $this = $(this);
            var cUrl = $this.children('a').attr('href');
            if (cUrl != '') {
                if (url.indexOf(cUrl) != -1) {
                    $this.addClass("start open active");
                    $this.parents("li").addClass("start open active").children('a').children('span.arrow').addClass('open');
                }
            }
        });
    });
</script>
<script src="${ctx}/resources/weway/assets/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="${ctx}/resources/weway/assets/global/plugins/respond.min.js"></script>
<script src="${ctx}/resources/weway/assets/global/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="${ctx}/resources/weway/assets/global/scripts/group-checkable.js" type="text/javascript"></script>
<script src="${ctx}/resources/weway/assets/global/plugins/layer/layer.js" type="text/javascript"></script>
<!-- 底部结束 -->