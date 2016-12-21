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
                    <h3> $Title
                        <br>
                        <i>$Achievement</i></h3>
                    <h2><i>$Year</i></h2>
                    <%-- Accordion --%>
                    <i class="fa fa-plus fa-2x" data-toggle="collapse" data-target="#bachelor"></i>
                    <div id="bachelor" class="well collapse">
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