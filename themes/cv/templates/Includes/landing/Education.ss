<!-- Education Section -->
<section id="education" class="education">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 id="#education">Education</h1>
                <i class="fa fa-graduation-cap fa-5x"></i>
            </div>
            <%-- Educational Years --%>
            <% loop $AssociatedEducationPages %>
                <div class="col-lg-6">
                    <h3>$Title</h3>
                    <h2 class="year-achieved"><i>$Year</i></h2>
                    <%-- Accordion --%>
                    <i class="fa fa-plus fa-2x" data-toggle="collapse" data-target="#{$ID}"></i>
                    <div id="{$ID}" class="well collapse">
                        $EducationSummary
                            <%-- Loop Subjects --%>
                        <% if $Subjects %>
                            <% include CourseSlider %>
                        <% end_if %>
                    </div>
                    <hr>
                </div>
            <% end_loop %>
        </div>
    </div>
</section>