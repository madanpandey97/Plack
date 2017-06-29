
	<%@include  file="base.jsp" %>

 <main>
<%@page import="javax.servlet.http.*,java.sql.*,getData.GetConnection" %> 


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
                        <a target="_blank" href="" class="btn btn-mdb btn-stc" data-toggle="modal" data-target="#modalLRFormDemo" rel="nofollow">Post New Update <i class="fa fa-download right"></i></a>
                        <a target="_blank" href="" class="btn btn-unique btn-ptc" rel="nofollow"  data-toggle="modal" data-target="#modalEDForm">Edit Profile <i class="fa fa-book right"></i></a>
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
                   <div class="view hm-zoom">
    <img src="img/img.jpg" class="img-fluid " alt="">
    <div class="mask flex-center">
        
    </div>
</div>
                   
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
                            
   
  <% 
//HttpSession s = request.getSession();
//String currentUser = (String)s.getAttribute("email");
Connection cn = GetConnection.getCn();
  try{
	
	String sql = "select * from dashboard join user on dashboard.useremail=user.useremail where dashboard.useremail=?;";
	PreparedStatement ps = cn.prepareStatement(sql);
	ps.setString(1, currentUser);
	ResultSet rs = ps.executeQuery();
	if(rs.next()) {
		
			String name = rs.getString(12);
			String email = rs.getString(1);
			String fname = rs.getString(2);
			String dob = rs.getString(3);
			String college  = rs.getString(4);
			String branch = rs.getString(5);
			String year = rs.getString(6);
			String furl = rs.getString(8);
			String lurl = rs.getString(9);
			String quote = rs.getString(10);
			String phone = rs.getString(14);
			

%>

	     
<ul class="list-group">
    <li class="list-group-item justify-content-between">
        User Name &nbsp;&nbsp;&nbsp;
        &nbsp;
        -:
        <h5 style="color:#2BBBAD;margin-right:300px;"><%=name %></h5>
    </li>
</ul>
<br>
<ul class="list-group">
    <li class="list-group-item justify-content-between">
      Your Email &nbsp;&nbsp;&nbsp;
        &nbsp;
        -:
        <h4 style="color:#2BBBAD; margin-right:290px;"><%=email %></h4>
        
    </li>
</ul>
<br>
<ul class="list-group">
    <li class="list-group-item justify-content-between">
      your Name &nbsp;&nbsp;&nbsp;
        &nbsp;
        -:
        <h4 style="color:#2BBBAD; margin-right:290px;"><%=fname %></h4>
        
    </li>
</ul>
<br>
<ul class="list-group">
    <li class="list-group-item justify-content-between">
      Profile &nbsp;&nbsp;&nbsp;
        &nbsp;
        -:
        <h4 style="color:#2BBBAD; margin-right:290px;"><%=quote %></h4>
        
    </li>
</ul>
      
      <br>
<ul class="list-group">
    <li class="list-group-item justify-content-between">
     Mobile No. &nbsp;&nbsp;&nbsp;
        &nbsp;
        -:
        <h4 style="color:#2BBBAD; margin-right:290px;"><%=phone %></h4>
        
    </li>
</ul>
      
      
      <br>
<ul class="list-group">
    <li class="list-group-item justify-content-between">
      Date of Birth &nbsp;&nbsp;&nbsp;
        &nbsp;
        -:
        <h4 style="color:#2BBBAD; margin-right:290px;"><%=dob %></h4>
        
    </li>
</ul>
      
      <br>
<ul class="list-group">
    <li class="list-group-item justify-content-between">
     College &nbsp;&nbsp;&nbsp;
        &nbsp;
        -:
        <h4 style="color:#2BBBAD; margin-right:290px;"><%=college %></h4>
        
    </li>
</ul>
      
      <br>
<ul class="list-group">
    <li class="list-group-item justify-content-between">
      Branch &nbsp;&nbsp;&nbsp;
        &nbsp;
        -:
        <h4 style="color:#2BBBAD; margin-right:290px;"><%= branch%></h4>
        
    </li>
</ul>
<br>
<ul class="list-group">
    <li class="list-group-item justify-content-between">
      Semester/Year &nbsp;&nbsp;&nbsp;
        &nbsp;
        -:
        <h4  style="color:#2BBBAD; margin-right:290px;"><%=year %></h4>
        
    </li>
</ul>
      
      <br>
<ul class="list-group">
    <li class="list-group-item justify-content-between">
      Facebook year &nbsp;&nbsp;&nbsp;
        &nbsp;
        -:
        <h4 class="text-left" style="color:#2BBBAD;"><%=furl %></h4>
        
    </li>
</ul>
      
      <br>
<ul class="list-group">
    <li class="list-group-item justify-content-between">
      LInkedIn Url &nbsp;&nbsp;&nbsp;
        &nbsp;
        -:
        <h4 style="color:#2BBBAD; margin-right:290px;"><%=lurl %></h4>
        
    </li>
</ul>

      
                       
           
            
<%
			}
			else{
				System.out.println("no record found");
			}
			
	
  }
		catch(Exception e){
			e.printStackTrace();
		}
	%>                      </div>  
                            
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
    
    
    
    
         
        
   <!--  sign up form  -->
   
   
   
    
<div class="modal fade" id="modalEDForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog cascading-modal" role="document">
                <!--Content-->
                <div class="modal-content">

                    <!--Modal cascading tabs-->
                    <div class="modal-c-tabs">

                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs tabs-2 light-blue darken-3" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#panel17" role="tab">Add Detail</a>
                            </li>
                          
                        </ul>

                        <!-- Tab panels -->
                        <div class="tab-content">
                            <!--Panel 17-->
                            <div class="tab-pane fade in show active" id="panel17" role="tabpanel">
                            <form action="AddDetail" method="POST">
                               <div class="modal-body">
                               		<div class="md-form form-sm">
                                        <input type="text" id="form14" class="form-control" name="name">
                                        <label for="form14">Your Name</label>
                                    </div>
                                    
                                    <div class="md-form form-sm">
                             
                                        <input type="text" id="form14" class="form-control" name="dob">
                                        <label for="form14">Date Of Birth(dd/mm/yyyy)</label>
                                    </div>
									
									<div class="md-form form-sm">
                                      
                                        <input type="text" id="form14" class="form-control" name="college">
                                        <label for="form14">College</label>
                                    </div>
                                    
                                    <div class="md-form form-sm">
                                      
                                        <input type="text" id="form5" class="form-control" name="branch">
                                        <label for="form5">Branch/Stream</label>
                                    </div>

                                    <div class="md-form form-sm">
                                        
                                        <input type="text" id="form6" class="form-control" name="year">
                                        <label for="form6">Semester/Year</label>
                                    </div>
                                    
                                  
                                     <div class="md-form form-sm">
                                        
                                        <input type="text" id="form6" class="form-control" name="furl">
                                        <label for="form6">Facebook Url</label>
                                    </div>
                                     <div class="md-form form-sm">
                                        
                                        <input type="text" id="form6" class="form-control" name="lurl">
                                        <label for="form6">LinkedIn Url</label>
                                    </div>
									
									 <div class="md-form form-sm">
                                        
                                        <input type="text" id="form6" class="form-control" name="quote">
                                        <label for="form6">Quote</label>
                                    </div>
									
                                    <div class="text-center form-sm mt-2">
                                        <button class="btn btn-info">Add Detail <i class="fa fa-sign-in ml-1"></i></button>
                                    </div>
                                    
                                </div>
                               </form>
                                <!--Footer-->
                                <div class="modal-footer">
                                  
                                    <button type="button" class="btn btn-outline-info waves-effect ml-auto" data-dismiss="modal">Close <i class="fa fa-times-circle ml-1"></i></button>
                                </div>
                            </div>
                            <!--/.Panel 8-->

                            </div>
                        

                        </div>

                    </div>
                </div>
            </div>
