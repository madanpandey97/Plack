
	<%@include  file="base.jsp" %>

 <main>
<%@page import="java.sql.*,getData.GetConnection" %> 
        <!--Main layout-->
        <div class="container">
            <!--First row-->
            <div class="row wow fadeIn" data-wow-delay="0.2s">
                <div class="col-md-12">
                    <div class="jumbotron">
                        <h2 class="h2-responsive">Material Design for Bootstrap</h2>
                        <br>
                        <p>Powerful and free Material Design UI KIT</p>
                        <hr>
                        <p>Register for free and get access to amazing framework and beautiful components</p>
                        <a target="_blank" href="" class="btn btn-mdb btn-stc" data-toggle="modal" data-target="#modalLRFormDemo" rel="nofollow">Download <i class="fa fa-download right"></i></a>
                        <a target="_blank" href="" class="btn btn-unique btn-ptc" rel="nofollow">Learn more <i class="fa fa-book right"></i></a>
                    </div>
                </div>
            </div>
            <!--/.First row-->

            <hr class="extra-margins">

            <!--Second row-->
            <div class="row">
                <!--First columnn-->
                <div class="col-lg-4">
                    <!--Card-->
                    <div class="card wow fadeIn" data-wow-delay="0.4s">

                        <!--Card image-->
                        <div class="view overlay hm-white-slight">
                            <img src="" class="img-fluid" alt="">
                            <a href="#">
                                <div class="mask"></div>
                            </a>
                        </div>
                        <!--/.Card image-->

                        <!--Card content-->
                        <div class="card-block">
                            <!--Title-->
                            <h4 class="card-title">
                            
     <%= request.getSession().getAttribute("name") %>
      <%=  request.getSession().getAttribute("email") %>
                            </h4>
                            <!--Text-->
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-info">Read more</a>
                        </div>
                        <!--/.Card content-->

                    </div>
                    <!--/.Card-->
                </div>
                <!--First columnn-->
                  
       <div class="col-lg-8">
                    <!--Card-->
                    <div class="card wow fadeIn" data-wow-delay="0.4s">

                        
                        <div class="card-block">
                            <!--Title-->
                            <h4 class="card-title text-center">
          			 Profile detail 
                            </h4><hr>
                            <!-- list group -->
                            
   
  <% try{
	Connection cn = GetConnection.getCn();
	String currentUser = (String)request.getSession().getAttribute("email");
	String sql = "select * from userprofile where userinfo=useremail";
	
	PreparedStatement ps = cn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
	%>                         
<ul class="list-group">
    <li class="list-group-item justify-content-between">
        Your Email &nbsp;&nbsp;&nbsp;
        &nbsp;
        -:&nbsp;&nbsp;&nbsp;&nbsp;
        <%= rs.getString(1)%>
        
        
    </li>
</ul>
<br>
<ul class="list-group">
    <li class="list-group-item justify-content-between">
        Cras justo odio
        
    </li>
</ul>
           <br>                 
           
  <ul class="list-group">
    <li class="list-group-item justify-content-between">
        Cras justo odio
        
    </li>
</ul>
                  
  
  
  <% } %>
<%} catch(Exception e){
	System.out.print(e);
	}%>          
           
                          </div>  
                            
                            <a href="#" class="btn btn-info">Read more</a>
                        </div>
                        <!--/.Card content-->

                    </div>
                    <!--/.Card-->
                </div>
                <!--First columnn-->
            </div>
            <!--/.Second row-->
    
        <!--/.Main layout-->
    </main>
    <%@include  file="footer.jsp" %>
