<!-- Skills Section -->
<section id="skills" class="skills">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 title-wrap">

                <h1>Skills</h1>
                <i class="fa fa-diamond fa-5x"
                   style="padding-bottom: 50px;"></i>
            </div>
            <% if $getSkills %>
                <% loop $getSkills %>
                    <div class="col-sm-6 col-md-6 col-lg-4">
                        <p>$Title</p>
                        <div class="progress">
                            <div class="progress-bar"
                                 role="progressbar"
                                 aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                                 style="width: $Percentage%;
							background-color: $Color;">
                                <span class="sr-only">$Percentage% Complete</span>
                            </div>
                        </div>
                    </div>
                <% end_loop %>
            <% end_if %>
        </div>
    </div>
</section>