<!-- Skills Section -->
<section id="skills" class="skills">
    <div class="container">
        <div class="row">

            <div class="col-lg-12">

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


            <!-- HTML PROGRESS BAR START -->
            <div class="col-sm-6 col-md-6 col-lg-4">

                <p>
                    HTML
                </p>

                <div class="progress">
                    <div class="progress-bar"
                         role="progressbar"
                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                         style="width: 86%;
							background-color: #0085c3">
                        <span class="sr-only">96% Complete</span>
                    </div>
                </div>

            </div>
            <!-- HTML PROGRESS BAR END -->

            <!--  CSS PROGRESS BAR START -->
            <div class="col-sm-6 col-md-6 col-lg-4">

                <p>
                    CSS
                </p>

                <div class="progress">
                    <div class="progress-bar"
                         role="progressbar"
                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                         style="width: 75%;
							background-color: #7ab800">
                        <span class="sr-only">85% Complete</span>
                    </div>
                </div>

            </div>
            <!-- CSS PROGRESS BAR END -->

            <!-- PHP PROGRESS BAR START -->
            <div class="col-sm-6 col-md-6 col-lg-4">

                <p>
                    PHP
                </p>

                <div class="progress">
                    <div class="progress-bar"
                         role="progressbar"
                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                         style="width: 83%;
							background-color: #f58026">
                        <span class="sr-only">93% Complete</span>
                    </div>
                </div>

            </div>
            <!-- PHP PROGRESS BAR END -->

            <!-- JAVA PROGRESS BAR START -->
            <div class="col-sm-6 col-md-6 col-lg-4">

                <p>
                    Java
                </p>

                <div class="progress">
                    <div class="progress-bar"
                         role="progressbar"
                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                         style="width: 56%;
							background-color: #dc5034">
                        <span class="sr-only">66% Complete</span>
                    </div>
                </div>

            </div>
            <!-- JAVA PROGRESS BAR END -->

            <!-- JAVASCRIPT PROGRESS BAR START -->
            <div class="col-sm-6 col-md-6 col-lg-4">

                <p>
                    Javascript
                </p>

                <div class="progress">
                    <div class="progress-bar"
                         role="progressbar"
                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                         style="width: 55%;
							background-color: #ce1126">
                        <span class="sr-only">65% Complete</span>
                    </div>
                </div>

            </div>
            <!-- JAVASCRIPT PROGRESS BAR END -->

            <!-- C# PROGRESS BAR START -->
            <div class="col-sm-6 col-md-6 col-lg-4">

                <p>
                    C#
                </p>

                <div class="progress">
                    <div class="progress-bar"
                         role="progressbar"
                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                         style="width: 55%;
							background-color: #b72959">
                        <span class="sr-only">65% Complete</span>
                    </div>
                </div>

            </div>
            <!-- C# PROGRESS BAR END -->

            <!-- LARAVEL PROGRESS BAR START -->
            <div class="col-sm-6 col-md-6 col-lg-4">

                <p>
                    Laravel
                </p>

                <div class="progress">
                    <div class="progress-bar"
                         role="progressbar"
                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                         style="width: 82%;
							background-color: #6e2585">
                        <span class="sr-only">92% Complete</span>
                    </div>
                </div>

            </div>
            <!-- LARAVEL PROGRESS BAR END -->

            <!-- CAKEPHP PROGRESS BAR START -->
            <div class="col-sm-6 col-md-6 col-lg-4">

                <p>
                    CakePhp
                </p>

                <div class="progress">
                    <div class="progress-bar"
                         role="progressbar"
                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                         style="width: 70%;
							background-color: #71c6c1">
                        <span class="sr-only">80% Complete</span>
                    </div>
                </div>

            </div>
            <!-- CAKEPHP PROGRESS BAR END -->

            <!--BOOTSTRAP PROGRESS BAR START -->
            <div class="col-sm-6 col-md-6 col-lg-4">

                <p>
                    Bootstrap
                </p>

                <div class="progress">
                    <div class="progress-bar"
                         role="progressbar"
                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                         style="width: 82%;
							background-color: #5482ab">
                        <span class="sr-only">92% Complete</span>
                    </div>
                </div>

            </div>
            <!-- BOOTSTRAP PROGRESS BAR END -->

            <!-- ASP.NET PROGRESS BAR START -->
            <div class="col-sm-6 col-md-6 col-lg-4">

                <p>
                    Asp.net
                </p>

                <div class="progress">
                    <div class="progress-bar"
                         role="progressbar"
                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                         style="width: 65%;
							background-color: #009bbb">
                        <span class="sr-only">55% Complete</span>
                    </div>
                </div>

            </div>
            <!-- ASP.NET PROGRESS BAR END -->

            <!-- SQL PROGRESS BAR START -->
            <div class="col-sm-6 col-md-6 col-lg-4">

                <p>
                    SQL
                </p>

                <div class="progress">
                    <div class="progress-bar"
                         role="progressbar"
                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                         style="width: 73%;
							background-color: #444444">
                        <span class="sr-only">83% Complete</span>
                    </div>
                </div>

            </div>
            <!-- SQL PROGRESS BAR END -->

            <!-- SILVERSTRIPE PROGRESS BAR START -->
            <div class="col-sm-6 col-md-6 col-lg-4">

                <p>
                    SilverStripe
                </p>

                <div class="progress">
                    <div class="progress-bar"
                         role="progressbar"
                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                         style="width: 92%;
							background-color: #1B354B">
                        <span class="sr-only">92% Complete</span>
                    </div>
                </div>

            </div>
            <!-- SilverStripe PROGRESS BAR END -->

        </div>
    </div>
</section>