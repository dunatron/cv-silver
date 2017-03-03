<!-- Portfolio Section -->
<section id="portfolio" class="portfolio">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Portfolio</h1>
            </div>

            <div class="col-md-12">
                <div id="carousel-portfolio" class="carousel slide" data-ride="carousel">
                    <!-- Wrapper for slides -->
                    <div class="row">
                        <div class="carousel-inner">
                            <% loop $getPortfolioItems %>
                                <div class="item<% if $First %> active<% end_if %>">
                                    <div class="carousel-content">
                                        <div class="col-md-8 portfolio-images">
                                            <picture class="soBored" data-portfolio-id="$ID">
                                                <%-- Simple image - depreciated by <picture> --%>
                                                <source srcset="$BannerImage.SetWidth(320).URL" media="(max-width: 320px)">
                                                <source srcset="$BannerImage.SetWidth(400).URL" media="(max-width: 400px)">
                                                <source srcset="$BannerImage.SetWidth(768).URL" media="(max-width: 600px)">
                                                <source srcset="$BannerImage.SetWidth(1100).URL" media="(max-width: 767px)">

                                                <%-- Layout reflows to 2 column --%>
                                                <source srcset="$BannerImage.SetWidth(1170).URL" media="(max-width: 1100px)">

                                                <%-- Above 1100px width --%>
                                                <source srcset="$BannerImage.SetWidth(1170).URL">
                                                <%-- Fallback needs to be large enough to fill slider at all screen sizes--%>
                                                <img src="$BannerImage.SetWidth(1170).URL" class="img-responsive">

                                            </picture>
                                        </div>
                                        <div class="col-md-4 portfolio-details">
                                            <a href="$SiteURL" class="animate-link">$SiteURL</a>
                                            <p>$About</p>
                                        </div>
                                    </div>
                                </div>
                            <% end_loop %>
                        </div>
                    </div>
                    <!-- Controls -->
                    <%-- Previous slide --%>
                    <a class="left carousel-control next-site-left" href="#carousel-portfolio"
                       data-slide="prev">
                        <%--<i class="fa fa-arrow-left"></i>--%>
                        <div class="left-control"></div>
                    </a>
                    <%-- Next Slide --%>
                    <a class="right carousel-control next-site-right" href="#carousel-portfolio" data-slide="next">
                        <%--<i class="fa fa-arrow-right"></i>--%>
                        <div class="right-control"></div>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <% include PortFolioModal %>
    <%--<!-- Button trigger modal -->--%>
    <%--<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#portfolioModal">--%>
        <%--Launch demo modal--%>
    <%--</button>--%>

    <%--<!-- Modal -->--%>
    <%--<div class="modal fade" id="portfolioModal" tabindex="-1" role="dialog" aria-labelledby="portfolioModal">--%>
        <%--<div class="modal-dialog" role="document">--%>
            <%--<div class="modal-content">--%>
                <%--<div class="modal-header">--%>
                    <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>--%>
                    <%--<h4 class="modal-title" id="portfolioModal">Modal title</h4>--%>
                <%--</div>--%>
                <%--<div class="modal-body">--%>
                    <%--<div class="">--%>
                        <%----%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="modal-footer">--%>
                    <%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
                    <%--<button type="button" class="btn btn-primary">Save changes</button>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>

</section>
