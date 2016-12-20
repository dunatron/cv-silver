<!-- Education Section -->
<section id="education" class="education">
    <div class="container">
        <div class="row">

            <div class="col-lg-12">

                <h1>Education</h1>
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
                    </div>
                    <hr>
                </div>
            <% end_loop %>

            <div class="col-lg-6">
                <h3> Bachelor IT
                    <br>
                    <i>SIT</i></h3>

                <h2><i>2014</i></h2>

                <a href="#bachelor"  data-toggle="collapse" data-target="#bachelor"><i class="fa fa-plus fa-2x"></i></a>

                <div id="bachelor" class="well collapse">

                    <p>
                        I studied a bachelor of Information Technology where I learnt an array of skills including
                        Networking,

                        troubleshooting, hardware skills, software development, web development, and management skills.

                        Familiar with java, XML, C#, C++, html, CSS, PHP, SQL, Eclipse, Dreamweaver, Aptana, Codeblocks,

                        Wordpress, Android
                    </p>

                </div>

                <hr>
            </div>


            <!-- NCEA LEVEL 3 -->
            <div class="col-lg-6">

                <h3> NCEA Level 3
                    <br>
                    <i>Merit Endorsed</i></h3>

                <h2><i>2008</i></h2>

                <a href="#ncea3" class="toggle btn btn-cv"><i class="fa fa-plus fa-2x"></i></a>

                <div id="ncea3" class="well hidden">


                    <div id="carousel-example-ncea3" class="carousel slide" data-ride="carousel">
                        <!-- Wrapper for slides -->
                        <div class="row">
                            <!--<div class="col-xs-offset-3 col-xs-6">-->
                            <div>
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>Mathematics</h3>

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
                                                        <td>4</td>
                                                        <td>6</td>
                                                        <td>6</td>
                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath has made a positive start to statistics, gaining all three
                                                    internal standards.
                                                    He now needs to transfer those results into the external standards,
                                                    making merit, at least, his
                                                    goal for each standard. He will need to ensure that all skills are
                                                    practised thoroughly as each
                                                    external standard contains quite different material.
                                                </p>

                                                <p>- Carolyn Hunter</p>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>Chemistry</h3>

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
                                                        <td>2</td>
                                                        <td>14</td>
                                                        <td>5</td>
                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">
                                                    Following on from last year's pleasing results, Heath began this
                                                    year in a reasonably focused manner.
                                                    He lost this focus in his subsequent return from Mexico and seemed
                                                    to be seriously floundering.
                                                    He has since regained a greater sense of purpose and learnt some of
                                                    the material missed earlier.
                                                    It will be important for him to continue lifting his performance;
                                                    the last part of the year will bring its own
                                                    distractions. Heath proved his ability last year, I look forward to
                                                    a repeat this year.
                                                </p>
                                                <p>- Darrell Sutton</p>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>Physics</h3>

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
                                                        <td>15</td>
                                                        <td>5</td>
                                                        <td>3</td>
                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath is well aware that he starts Physics at a disadvantage having
                                                    not taken the Level 2 course.
                                                    However, I have been impressed with the mature and focused way that
                                                    he has approached his studies.
                                                    Having not taken the level 2 course has set a challenge for Heath
                                                    and he seems to thrive off of it.
                                                </p>

                                                <p>- John Adams</p>


                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>Religious Education</h3>

                                                <table class="table">
                                                    <thead>
                                                    <tr>
                                                        <th>Achieved</th>

                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td>12</td>

                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath is taking a mature attitude towards Religious Education and
                                                    for the majority of class
                                                    time is engaging himself in a meaningful way. He is articulate in
                                                    both his written work and
                                                    class discussions and has the ability to think deeply when he
                                                    chooses to. As the topics become
                                                    progressively more difficult over the year he needs to remain
                                                    focused and ensure that he is
                                                    making the most of all learning opportunities
                                                </p>

                                                <p>- Rosalie Connors</p>


                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>Physical Education</h3>

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
                                                        <td>4</td>
                                                        <td>12</td>
                                                        <td>8</td>
                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">

                                                </p>

                                                <p>- Bronwyn Smith</p>


                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>Biology</h3>

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
                                                        <td>10</td>
                                                        <td>8</td>
                                                        <td>4</td>
                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">

                                                </p>

                                                <p>- Stephanie Green</p>


                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <!-- Controls --> <a class="left carousel-control" href="#carousel-example-ncea3"
                                             data-slide="prev">
                        <i class="fa fa-arrow-left"></i>
                    </a>
                        <a class="right carousel-control" href="#carousel-example-ncea3" data-slide="next">
                            <i class="fa fa-arrow-right"></i>
                        </a>

                    </div>


                </div>

                <hr>

            </div>

            <!-- NCEA LEVEL 2 -->
            <div class="col-lg-6">

                <h3> NCEA Level 2
                    <br>
                    <i>Merit Endorsed</i></h3>

                <h2><i>2007</i></h2>

                <a href="#ncea2" class="toggle btn btn-cv"><i class="fa fa-plus fa-2x"></i></a>

                <div id="ncea2" class="well hidden">


                    <div id="carousel-example-ncea2" class="carousel slide" data-ride="carousel">
                        <!-- Wrapper for slides -->
                        <div class="row">
                            <!--<div class="col-xs-offset-3 col-xs-6">-->
                            <div>
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>Chemistry</h3>

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
                                                        <td>2</td>
                                                        <td>11</td>
                                                        <td>7</td>
                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath has worked steadily for good results so far this year. He has
                                                    a solid grasp of the key
                                                    concepts and his final results will be largely determined by the
                                                    amount of study completed over
                                                    the latter part of the year.
                                                </p>

                                                <p>- Darrell Sutton</p>

                                                <h3>End Report</h3>
                                                <p style="text-align: left; margin: 20px;">

                                                    Heath has improved his learning focus over the last term and this
                                                    has significantly lifted his level of understanding
                                                    in Y12 Chemistry. A final push should see him gain pleasing success
                                                    in the final exams and set him up for a
                                                    successful academic year in 2008.
                                                </p>

                                                <p>- Darrel Sutton</p>


                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>Mathematics</h3>

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
                                                        <td>6</td>
                                                        <td>8</td>
                                                        <td>3</td>
                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">
                                                    I have been impressed by Heath's attitude to succeed in this
                                                    subject. He has shown a willingness
                                                    to learn, both by note making and practising most of the exercises
                                                    set. He is also prepared to contribute
                                                    orally in class and will question when unsure of any work set. This
                                                    approach to the subject will help
                                                    him gain the grades he is aiming for.
                                                </p>
                                                <p>- Carolyn Hunter</p>

                                                <h3>Mid Report</h3>
                                                <p style="text-align: left; margin: 20px;">

                                                    Heath would have been disappointed with his practise exam results as
                                                    he is better mathematically
                                                    than these results suggest. He appeared to be revising for the
                                                    external exams and hopefully he has eliminated
                                                    the silly mistakes that crept into the earlier exams
                                                </p>

                                                <p>- Carolyn Hunter</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>Physical Education</h3>

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
                                                        <td>6</td>
                                                        <td>3</td>
                                                        <td>15</td>
                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">

                                                    Heath is a personable young man who is a pleasure to teach when he
                                                    is focused. Heath had an
                                                    unfocused start to the year but he has since settled well and is now
                                                    producing the quality of
                                                    work that he is capable of. His recent grade in 2.7 reflects this.
                                                    If Heath can stay focused,
                                                    seek clarification in class and reinforce class work with revision
                                                    in his own time then he should
                                                    be able to gain excellence in the remaining standards. Heath is
                                                    busy, but he must prioritise his school
                                                    work occasionally.
                                                </p>

                                                <p>- Jon McDowall</p>

                                                <h3>End Report</h3>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath has had a superb year in terms of academic achievement.
                                                    Although he gained a Not Achieved early
                                                    in the year since then he has taken ownership of his work and has
                                                    produced some outstanding assessments.
                                                    Year 13 Physical Education should be the top of his choices next
                                                    year, as a career in this field is not
                                                    out of the question. Heath has been a pleasure to teach for much of
                                                    the year. He was always polite, and respectful.
                                                    I really have enjoyed his company and wish him all the best for
                                                    2008.
                                                </p>

                                                <p>- Jon McDowall</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>English</h3>

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
                                                        <td>17</td>
                                                        <td>7</td>
                                                        <td>3</td>
                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath is putting in a good effort in English this year. He
                                                    participates in class discussions and is
                                                    confident about sharing ideas with the group. Heath needs to
                                                    continue to work on his essay writing and
                                                    analysis skills this year as he prepares for his exams. I enjoy
                                                    having Heath in class.
                                                </p>

                                                <p>- Caroline Bouffard</p>

                                                <h3>End Report</h3>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath is a talented writer who worked hard on his essay structure
                                                    this year. He should concentrate on
                                                    becoming more familiar with the material next year so that he can
                                                    write detailed analysis. Heath is polite,
                                                    has a great sense of humour and is a leader in class discussion. I
                                                    wish him all the best.

                                                </p>

                                                <p>- Caroline Bouffard</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>Biology</h3>

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
                                                        <td>9</td>
                                                        <td>6</td>
                                                        <td>0</td>
                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath made a great start to the year by gaining Excellence for both
                                                    internal standards, but
                                                    lately I have been worried about the increasing amount of off task
                                                    behaviour that he is displaying.
                                                    Heath is an able student who is capable of doing well in this
                                                    subject but he needs to get his priorities in order.
                                                    More focus in class is required plus a commitment to revise
                                                    regularly. I hope Heath makes the necessary changes
                                                    as I believe he could be very successful in this subject.
                                                </p>

                                                <p>- Stephanie Green</p>

                                                <h3>Mid Report</h3>
                                                <p style="text-align: left; margin: 20px;">
                                                    The school exams gave Heath a wake-up call with regards to his
                                                    efforts in this subject. Heath is a person
                                                    who should be getting much better results in exams but his casual
                                                    efforts in class and a lack of
                                                    revision were reflected in his school exam results. I am pleased to
                                                    say that Heath has really put his head down
                                                    since and made an effort to use his time wisely over the last 4
                                                    weeks, but if he intends to take Level 3 biology
                                                    next year he needs to realise he must work for it, even if it seems
                                                    easy!
                                                </p>

                                                <p>- Stephanie Green</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>Religious Education</h3>

                                                <table class="table">
                                                    <thead>
                                                    <tr>
                                                        <th>Achieved</th>

                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>

                                                        <td>12</td>

                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">


                                                </p>

                                                <p>- Rosalie Connors</p>

                                                <h3>End Report</h3>
                                                <p style="text-align: left; margin: 20px;">


                                                </p>

                                                <p>- Rosalie Connors</p>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <!-- Controls --> <a class="left carousel-control" href="#carousel-example-ncea2"
                                             data-slide="prev">
                        <i class="fa fa-arrow-left"></i>
                    </a>
                        <a class="right carousel-control" href="#carousel-example-ncea2" data-slide="next">
                            <i class="fa fa-arrow-right"></i>
                        </a>

                    </div>


                </div>

                <hr>

            </div>


            <!-- NCEA LEVEL 1 -->
            <div class="col-lg-6">

                <h3> NCEA Level 1
                    <br>
                    <i>Merit Endorsed</i></h3>

                <h2><i>2006</i></h2>

                <a href="#ncea1" class="toggle btn btn-cv"><i class="fa fa-plus fa-2x"></i></a>

                <div id="ncea1" class="well hidden">


                    <div id="carousel-example" class="carousel slide" data-ride="carousel">
                        <!-- Wrapper for slides -->
                        <div class="row">
                            <!--<div class="col-xs-offset-3 col-xs-6">-->
                            <div>
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>Sports Studies</h3>

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
                                                        <td>4</td>
                                                        <td>6</td>
                                                        <td>6</td>
                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">Heath has gone from strength
                                                    to strength this year. Confidence in his ability to think,
                                                    develop ideas and learn new materials grows stronger as he
                                                    successfully completes each assessment.
                                                    Heath's attitude towards achievement and his ability in the
                                                    theoretical aspect of this course has changed
                                                    hugely. Hard work is Heath's biggest asset at the moment and he
                                                    needs to hold onto this.
                                                    There is no place for over confidence and complacency as this will
                                                    destroy all the great work that has been done so far.
                                                    I am proud of Heath and his achievements this year, as he should
                                                    be.</p>

                                                <p>- Ms B Smith</p>

                                                <h3>End Report</h3>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath has completed 2006 with a commendable set of grades in
                                                    Physical Education. I feel
                                                    he lost some momentum in the third term, which was due to a lack of
                                                    interest in the
                                                    achievement standard we were completing. This is a maturity issue
                                                    for Heath. He has made
                                                    positive improvements this year and will continue to do so in 2007.
                                                    The recently completed
                                                    Kiwisport Leadership Award was a high point for Heath. His manner
                                                    with the younger students
                                                    was outstanding and a real credit to him.
                                                </p>

                                                <p>- Ms B Smith</p>


                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>Science</h3>

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
                                                        <td>2</td>
                                                        <td>14</td>
                                                        <td>5</td>
                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">Heath will be disappointed
                                                    that he did not get the Unit Standard in Fuels at the end
                                                    of last year because his work so far in 2006 has been of a very high
                                                    standard.
                                                    He is focused in class and using his homework time intelligently. I
                                                    have appreciated the way
                                                    that Heath will work to ensure he has a sound grasp of the basic
                                                    concepts (achieve level material)
                                                    before turning his attention to Merit and Excellence tasks. As the
                                                    year progresses, I would like
                                                    to see him reach his goal of excellence results</p>
                                                <p>- Mr J Adams</p>

                                                <h3>Mid Report</h3>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath was badly, ill-prepared for the practise exams and his results
                                                    suffered accordingly.
                                                    There is no need for a repeat performance as I have seen him working
                                                    at a Merit and Excellence level in
                                                    the last few weeks. The entry requirement for level 2 courses
                                                    includes a Merit(at least) in the relevant
                                                    level 1 paper
                                                </p>

                                                <p>- Mr J Adams</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>English</h3>

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
                                                        <td>15</td>
                                                        <td>5</td>
                                                        <td>3</td>
                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath is making a good effort in English, taking responsibility for
                                                    his learning and managing his workload well.
                                                    He has achieved remarkably consistent results in internal assessment
                                                    and practises for external assessments.
                                                    If he continues to work diligently and increases the level of detail
                                                    in his written work he should produce a very pleasing
                                                    set of results by the end of the year</p>

                                                <p>- Mr G Leach</p>

                                                <h3>End Report</h3>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath has continued to work steadily following the practise exams.
                                                    He has a good knowledge of the
                                                    texts studied, and has worked well on exercises used to practise for
                                                    the external exams. Provided
                                                    he maintains his attention to detail he should achieve some good
                                                    results in the exams.
                                                </p>

                                                <p>- Mr G Leach</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>Mathematics</h3>

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
                                                        <td>15</td>
                                                        <td>9</td>
                                                        <td>3</td>
                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">Heath is working well but
                                                    does not always complete his homework.
                                                    However he works diligently in class and seeks help when required.
                                                    He is capable of gaining merit in algebra
                                                    but it will demand rigorous practise and determination. This success
                                                    is necessary for level 2 study.
                                                    Continue the positive effort Heath.</p>

                                                <p>- Mrs R Low</p>

                                                <h3>End Report</h3>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath has allowed much of the year to fritter away and is now having
                                                    to spend a great deal
                                                    of study time catching up on the basics. He certainly has the
                                                    ability to achieve well in the
                                                    external examinations but has he left himself enough time? He is
                                                    focusing on algebra and
                                                    graphing because these topics are crucial for success in level 2.
                                                    Heath needs to set goals
                                                    for success and work consistently through the whole year, to attain
                                                    these goals.
                                                </p>

                                                <p>- Mrs R Low</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>Physical Education</h3>

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
                                                        <td>4</td>
                                                        <td>12</td>
                                                        <td>8</td>
                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath is very able physically which enables him to excel at most
                                                    activities in class.
                                                    He does need to develop his attitude toward those who are not as
                                                    able as he is.
                                                    He needs to be inclusive when participating in team games.
                                                </p>

                                                <p>- Mr J McDowall</p>

                                                <h3>Mid Report</h3>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath is a natural athlete whom I have enjoyed teaching. Heath's
                                                    relaxed nature, friendly
                                                    manner and sense of humour have made him a pleasure to teach. I was
                                                    impressed by Heath's
                                                    application to the theoretical component of the course. He worked
                                                    diligently in class and as a
                                                    result produced some extremely high quality work. I have no doubt
                                                    that Heath will continue to succeed
                                                    in this subject if he can remain focused on his long term goals. I
                                                    look forward to seeing him in
                                                    2007 for Y12 Physical Education
                                                </p>

                                                <p>- Mr J McDowall</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>Agriculture</h3>

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
                                                        <td>30</td>
                                                        <td>8</td>
                                                        <td>4</td>
                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath's achievement so far is not a true indication of what he is
                                                    capable of.
                                                    He is articulate and able to present evidence to support his answers
                                                    but too often his
                                                    understanding of basic concepts is shaky. Heath's focus in class is
                                                    patchy - often he appears
                                                    tired and homework is not always completed. I believe that a step up
                                                    in effort in the above areas
                                                    would improve Heath's results enormously.
                                                </p>

                                                <p>- Mrs J Cleland</p>

                                                <h3>End Report</h3>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath has achieved to his potential in the two internal assessment
                                                    tasks where he worked
                                                    well in a very structured environment. His approach was thorough and
                                                    focused and he was able
                                                    to articulate his ideas clearly. Heaths exam results indicate that
                                                    he still needs to learn
                                                    basic concepts in some areas and refine his exam technique so that
                                                    he manages his time more
                                                    effectively in each achievement standard.
                                                </p>

                                                <p>- Mrs J Cleland</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h3>Religious Education</h3>

                                                <table class="table">
                                                    <thead>
                                                    <tr>
                                                        <th>Achieved</th>

                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>

                                                        <td>19</td>

                                                    </tr>

                                                    </tbody>
                                                </table>

                                                <h3>Mid Report</h3>
                                                <p><i>General comment including possible areas for improvement</i></p>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath is generally focused in class and has a positive approach to
                                                    this subject.
                                                    He grasps ideas quickly and processes them well in written form.
                                                    Heath could work on
                                                    eliminating the need to be reminded to stay on task.

                                                </p>

                                                <p>- Mrs M Moore</p>

                                                <h3>End Report</h3>
                                                <p style="text-align: left; margin: 20px;">
                                                    Heath achieved all 19 credits that were available in this years
                                                    course. He is a capable
                                                    young man but needs to remember to be considerate of others
                                                    especially when he has completed
                                                    a task before they have.

                                                </p>

                                                <p>- Mrs M Moore</p>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <!-- Controls --> <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                        <i class="fa fa-arrow-left"></i>
                    </a>
                        <a class="right carousel-control" href="#carousel-example" data-slide="next">
                            <i class="fa fa-arrow-right"></i>
                        </a>

                    </div>


                </div>

                <hr>

            </div>

        </div>
    </div>
    </div>
</section>