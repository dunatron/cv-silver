<!-- Achievements Section -->
<section id="achievements" class="achievements">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1>Achievements</h1>
                <i class="fa fa-trophy fa-3x" data-toggle="collapse" data-target="#achievments-accordion"></i>
                <p>( Toggle Me )</p>
                <div id="achievments-accordion" class="well collapse">
                    <% loop $getAchievementTypes %>
                        <ul class="list-unstyled">
                            <li><h3>$Title</h3></li>
                            <% if $AssociatedAchievements %>
                                <% loop $AssociatedAchievements %>
                                    <li>$AchievementText ($AchievementYear)</li>
                                <% end_loop %>
                            <% end_if %>
                        </ul>
                    <% end_loop %>
                </div>
            </div>
        </div>
    </div>
</section>