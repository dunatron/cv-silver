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
                                        <div class="col-md-12 portfolio-title-block">
                                            <a href="$SiteURL" class="animate-link portfolio-title">$SiteURL</a>
                                        </div>
                                        <div class="col-md-8 portfolio-images">
                                            <picture class="soBored" data-portfolio-id="$ID">
                                                <%-- Simple image - depreciated by <picture> --%>
                                                <source srcset="$BannerImage.ScaleWidth(320).URL" media="(max-width: 320px)">
                                                <source srcset="$BannerImage.ScaleWidth(400).URL" media="(max-width: 400px)">
                                                <source srcset="$BannerImage.ScaleWidth(768).URL" media="(max-width: 600px)">
                                                <source srcset="$BannerImage.ScaleWidth(1100).URL" media="(max-width: 767px)">

                                                <%-- Layout reflows to 2 column --%>
                                                <source srcset="$BannerImage.ScaleWidth(1170).URL" media="(max-width: 1100px)">

                                                <%-- Above 1100px width --%>
                                                <source srcset="$BannerImage.ScaleWidth(1170).URL">
                                                <%-- Fallback needs to be large enough to fill slider at all screen sizes--%>
                                                <img src="$BannerImage.ScaleWidth(1170).URL" class="img-responsive" draggable="false">
                                            </picture>
                                        </div>
                                        <% include Includes\landing\portfolio\PortfolioDetails %>

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
    <% include Includes\landing\portfolio\PortFolioModal %>
</section>
