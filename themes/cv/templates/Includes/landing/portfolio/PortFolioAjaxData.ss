<%--<div id="ajax-portfolio-carousel" class="carousel slide" data-ride="carousel">--%>
    <%--<!-- Wrapper for slides -->--%>
    <%--<div class="carousel-inner" role="listbox">--%>
        <%--<% loop $AssocImages %>--%>
            <%--<div class="item <% if $First %>active<% end_if %>">--%>
                <%--<picture>--%>
                    <%-- Simple image - depreciated by <picture> --%>
                    <%--<source srcset="$Me.SetWidth(320).URL" media="(max-width: 320px)" class="img-responsive">--%>
                    <%--<source srcset="$Me.SetWidth(400).URL" media="(max-width: 400px)" class="img-responsive">--%>
                    <%--<source srcset="$Me.SetWidth(768).URL" media="(max-width: 600px)" class="img-responsive">--%>
                    <%--<source srcset="$Me.SetWidth(1100).URL" media="(max-width: 767px)" class="img-responsive">--%>

                    <%-- Layout reflows to 2 column --%>
                    <%--<source srcset="$Me.SetWidth(1170).URL" media="(max-width: 1100px)" class="img-responsive">--%>

                    <%-- Above 1100px width --%>
                    <%--<source srcset="$Me.SetWidth(1170).URL">--%>
                    <%-- Fallback needs to be large enough to fill slider at all screen sizes--%>
                    <%--<img src="$Me.SetWidth(1170).URL" class="img-responsive">--%>
                <%--</picture>--%>
            <%--</div>--%>
        <%--<% end_loop %>--%>

    <%--</div>--%>

    <%--<!-- Left and right controls -->--%>
    <%--<a class="left carousel-control " href="#ajax-portfolio-carousel" role="button" data-slide="prev">--%>
        <%--<span class="left-arrow" aria-hidden="true"></span>--%>
        <%--<span class="sr-only">Previous</span>--%>
    <%--</a>--%>
    <%--<a class="right carousel-control" href="#ajax-portfolio-carousel" role="button" data-slide="next">--%>
        <%--<span class="right-arrow" aria-hidden="true"></span>--%>
        <%--<span class="sr-only">Next</span>--%>
    <%--</a>--%>
<%--</div>--%>


<ul class="portfolioItems-Slider">
    <% loop $AssocImages %>
        <li class="item <% if $First %>active<% end_if %>">
            <picture>
                <%-- Simple image - depreciated by <picture> --%>
                <source srcset="$Me.SetWidth(320).URL" media="(max-width: 320px)" class="img-responsive">
                <source srcset="$Me.SetWidth(400).URL" media="(max-width: 400px)" class="img-responsive">
                <source srcset="$Me.SetWidth(768).URL" media="(max-width: 600px)" class="img-responsive">
                <source srcset="$Me.SetWidth(1100).URL" media="(max-width: 767px)" class="img-responsive">

                <%-- Layout reflows to 2 column --%>
                <source srcset="$Me.SetWidth(1170).URL" media="(max-width: 1100px)" class="img-responsive">

                <%-- Above 1100px width --%>
                <source srcset="$Me.SetWidth(1170).URL">
                <%-- Fallback needs to be large enough to fill slider at all screen sizes--%>
                <img src="$Me.SetWidth(1170).URL" class="img-responsive">
            </picture>
        </li>
    <% end_loop %>
</ul>