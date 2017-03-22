<!-- Achievements Section -->
<section id="achievements" class="achievements">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="achievement-title" style="visibility: hidden;">Achievements</h1>
                <div class="achievement-toggle-wrap" style="visibility: hidden;">
                    <div class="section-icon"><img src="$ThemeDir/img/svg/trophy.svg" data-toggle="collapse" data-target="#achievments-accordion"></div>
                    <p class="toggle-text">( Toggle Me )</p>
                </div>
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