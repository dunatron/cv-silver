<div id="carousel-example-ncea3" class="carousel slide" data-ride="carousel">
    <!-- Wrapper for slides -->
    <div class="row">
        <div class="carousel-inner">
            <% loop $Subjects %>
                <div class="item<% if $First %> active<% end_if %>">
                    <div class="carousel-content">
                        <div>
                            <h3>$Title</h3>
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>Achieved</th>
                                    <th>Merit</th>
                                    <th>Excellence</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>$APoint</td>
                                    <td>$MPoint</td>
                                    <td>$EPoint</td>
                                </tr>
                                </tbody>
                            </table>
                            <h3>$ReportType</h3>
                            <p><i>General comment including possible areas for improvement</i></p>
                            <p style="text-align: left; margin: 20px;">
                                $Comment
                            </p>
                            <%--<p>- $getTeacherName</p>--%>
                        </div>
                    </div>
                </div>
            <% end_loop %>
        </div>
    </div>
    <!-- Controls -->
    <%-- Previous slide --%>
    <a class="left carousel-control" href="#carousel-example-ncea3"
       data-slide="prev">
        <i class="fa fa-arrow-left"></i>
    </a>
    <%-- Next Slide --%>
    <a class="right carousel-control" href="#carousel-example-ncea3" data-slide="next">
        <i class="fa fa-arrow-right"></i>
    </a>
</div>