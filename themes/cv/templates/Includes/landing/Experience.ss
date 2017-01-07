<!-- Experience Section -->
<section id="experience" class="experience">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1>Experience</h1>
                <i class="fa fa-calendar-o fa-5x"
                   style="padding-bottom: 50px;"></i>
            </div>
        </div>
        <%-- Loop Experiences --%>
        <% if $getExperiences %>
            <% loop $getExperiences %>
                <div class="experience-item">
                    <div class="experience-details">
                        <span class="title">$JobTitle</span>
                        <span class="date">$DateRange</span>
                    </div>
                    <div class="experience-body">
                        $Body
                    </div>
                </div>
            <% end_loop %>
        <% end_if %>
    </div>
</section>