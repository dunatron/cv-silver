<!-- Experience Section -->
<section id="experience" class="experience">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 title-wrap">
                <h1>Experience</h1>
                <div class="section-icon"><img src="$ThemeDir/img/svg/calendar.svg"></div>
            </div>
        </div>
        <%-- Loop Experiences --%>
        <% if $getExperiences %>
            <% loop $getExperiences %>
                <div class="experience-item">
                    <div class="experience-details">
                        <span class="title">$JobTitle</span>
                        <span class="date">$DateRange</span><span>$TimeAtJob</span>
                    </div>
                    <div class="experience-body">
                        $Body
                    </div>
                </div>
            <% end_loop %>
        <% end_if %>
    </div>
</section>