<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="row page_row">
    <div class="page col-md-5 col-sm-5">
        <div class="dataTables_info" id="pageInfo" role="status" aria-live="polite">
            当前显示 ${(page.pageNo - 1)*page.pageSize + 1} 到 ${page.pageNo*page.pageSize} of ${page.totalCount} 条
        </div>
    </div>
    <div class="col-md-7 col-sm-7 pagination">
        <div class="dataTables_paginate paging_bootstrap_full_number" id="sample_1_paginate">
            <ul class="pagination" style="visibility: visible;">
                <c:choose>
                    <c:when test="${page.isHasPre()}">
                        <li class="prev">
                            <a href="javascript:pageInfo(1)" title="First"><i class="fa fa-angle-double-left"></i></a>
                        </li>
                        <li class="prev">
                            <a href="javascript:pageInfo(${page.prePage})" title="Prev"><i class="fa fa-angle-left"></i></a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="prev disabled">
                            <a href="javascript:void(0)" title="First"><i class="fa fa-angle-double-left"></i></a>
                        </li>
                        <li class="prev disabled">
                            <a href="javascript:void(0)" title="Prev"><i class="fa fa-angle-left"></i></a>
                        </li>
                    </c:otherwise>
                </c:choose>

                <c:if test="${(page.pageNo - 2) > 0}">
                    <li><a href="javascript:pageInfo(${page.pageNo - 2})">${page.pageNo - 2}</a></li>
                </c:if>
                <c:if test="${(page.pageNo - 1) > 0}">
                    <li><a href="javascript:pageInfo(${page.pageNo - 1})">${page.pageNo - 1}</a></li>
                </c:if>
                <li class="active"><a href="#">${page.pageNo}</a></li>
                <c:if test="${(page.totalPages - page.pageNo) > 0}">
                    <li><a href="javascript:pageInfo(${page.pageNo + 1})">${page.pageNo + 1}</a></li>
                </c:if>
                <c:if test="${(page.totalPages - page.pageNo - 1) > 0}">
                    <li><a href="javascript:pageInfo(${page.pageNo + 2})">${page.pageNo + 2}</a></li>
                </c:if>

                <c:choose>
                    <c:when test="${page.isHasNext()}">
                        <li class="next">
                            <a href="javascript:pageInfo(${page.nextPage})" title="Next"><i class="fa fa-angle-right"></i></a>
                        </li>
                        <li class="next">
                            <a href="javascript:pageInfo(${page.totalPages})" title="Last"><i class="fa fa-angle-double-right"></i></a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="next disabled">
                            <a href="javascript:void(0)" title="Next"><i class="fa fa-angle-right"></i></a>
                        </li>
                        <li class="next disabled">
                            <a href="javascript:void(0)" title="Last"><i class="fa fa-angle-double-right"></i></a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</div>