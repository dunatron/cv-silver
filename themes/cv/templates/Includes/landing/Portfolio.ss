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

                                            <div class="w3-content w3-display-container">
                                                <% loop $PortfolioImages %>
                                                    <img class="mySlides" src="$URL" style="width:100%">
                                                <% end_loop %>
                                                <a class="w3-btn-floating w3-display-left" onclick="plusDivs(-1)">&#10094;</a>
                                                <a class="w3-btn-floating w3-display-right" onclick="plusDivs(1)">&#10095;</a>
                                            </div>

                                        </div>
                                        <div class="col-md-4 portfolio-details">
                                            <h1>$SiteURL</h1>
                                            <h1>$About</h1>
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
</section>
