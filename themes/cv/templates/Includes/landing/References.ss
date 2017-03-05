<!-- References Section -->
<section id="references" class="references">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="references-title">References</h1>
                <hr>
                <% if $getTopReferees %>
                    <% loop $getTopReferees %>
                        <div class="col-md-4 referee-item">
                            <p>$Name</p>
                            <p>$Position</p>
                            <p>$Phone</p>
                            <p>$Email</p>
                            <hr>
                        </div>
                    <% end_loop %>
                <% end_if %>
            </div>
        </div>
    </div>
</section>
