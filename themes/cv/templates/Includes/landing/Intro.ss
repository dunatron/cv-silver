<!-- Intro Section -->
<section id="statement" class="statement">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <%--<img src="img/heath.jpg" class="img-responsive" alt="Heath Profile Image">--%>
                <% with $ProfileImage %>
                    <img src="$URL" class="img-responsive cv-portfolio-image" alt="Heath Profile Image">
                <% end_with %>

            </div>
            <div class="col-md-8 intro-details">
                <h1 class="cv-name">Heath Dunlop</h1>
                <div class="contact-details-wrap">
                    <i class="fa fa-phone fa"><a href="tel:$Phone">$Phone</a></i>
                    <i class="fa fa-envelope-o" style="padding-bottom: 40px;"><a href="mailto:$Email">$Email</a></i>
                </div>

                <hr>
                <div class="intro-content">
                    $Intro
                </div>
                <hr>
            </div>
            <div class="col-md-12 arrow-container">
                <a class="btn btn-arrow page-scroll scroll-down" href="#skills"><i class="fa fa-chevron-circle-down fa-5x"></i></a>
            </div>
        </div>
    </div>
</section>