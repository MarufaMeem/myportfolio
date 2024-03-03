<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="work1.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">




      <div class="main-container">

    <div class="main-content">
  <!-- home section -->
 <section class="home section" id="home">
  <div class="container">
    <div class="row">
      <div class="home-info padd-15">
        <h3 class="hello">I Am  <span class="name">Marufa Meem</span></h3>
        <h3 class="my-profession">i'm a <span class="typing">student</span></h3>
        <span id="element"></span>
      <div class="social-links">
    <asp:Repeater ID="SocialLinksRepeater" runat="server">
        <ItemTemplate>
            <a href='<%# Eval("Link") %>' class='<%# Eval("Icon") %>' style='<%# Eval("Style") %>' target="_blank">
             
            </a>
        </ItemTemplate>
    </asp:Repeater>
</div>
<a href="images/CV1.pdf.docx" download>          <asp:Button class="btnn" runat="server" Text="download CV" />
 </a>



      </div>
      <div class="home-img padd-15">  <img class="img-fluid" src="images/marufa.jpg" alt="">
       
      </div>
      </div>
      
    </div>
  </div>
 </section>
    <!-- home section -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js"></script>
    <script src="js/mask.js"></script>
   
<!-- about section -->

<section id="about" class="about section-show">

  <!-- ======= About Me ======= -->
  <div class="about-me container">
  
    <div class="section-title padd-15">
      <h2>About</h2>
      <p>Learn more about me</p>
    </div>
  
    <div class="row">
      <div class="col-log-4" data-aos="fade-right">
        <img class="img-fluid" src="images/marufa.jpg" alt="">
      </div>
      <div class="content about-text">
            <h3>WEB DEVELOPER</h3>
               <p class="fst-italic">
                I am professional web designer and developer. I have over 3 years working experience on it. I have strong knowledge about HTML, HTML5, CSS, CSS3, JavaScript/j Query and PHP.
                   </p>
                <div class="row">
                <div class="col-lg-6">
                 <ul>
              <li><i class="fa fa-angle-double-right" aria-hidden="true"></i>
             <strong>Birthday:</strong> <span>20-4-2002</span></li>
              <li>
              <li><i class="fa fa-angle-double-right" aria-hidden="true"></i><strong>Website:</strong><a href="https://github.com/MarufaMeem"><span>www.meem.com</span></a> </li>
              <li>
              <li><i class="fa fa-angle-double-right" aria-hidden="true"></i><strong>Phone:</strong> <span>01575606177</span></li>
              <li>
              <li><i class="fa fa-angle-double-right" aria-hidden="true"></i><strong>City:</strong> <span>Dhaka</span></li>
            </ul>
          </div>
          <div class="col-lg-6"
          >
            <ul>
              
              <li><i class="fa fa-angle-double-right" aria-hidden="true"></i> <strong>Age:</strong> <span>21</span></li>
              <li>
              <li><i class="fa fa-angle-double-right" aria-hidden="true"></i><strong>Degree:</strong> <span>Undergraduate</span></li>
              <li>
              <li><i class="fa fa-angle-double-right" aria-hidden="true"></i><strong>Email:</strong> <a href="https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox"><span>meem@gmail.com</span></a></li>
              <li>
              <li><i class="fa fa-angle-double-right" aria-hidden="true"></i><strong>Freelance:</strong> <span>
  available
  
              </span></li>
            </ul>
          </div>
        </div>
        <p>
      I am professional web designer and developer. I have over 3 years working experience on it. I have strong knowledge about HTML, HTML5, CSS, CSS3, JavaScript/j Query and PHP.
        </p>
      </div>
    </div>
  
  </div><!-- End About Me -->
  
  <!-- ======= Counts ======= -->
  
  
  
<div class="counts container">
    <div class="row">
        <asp:Repeater ID="CountsRepeater" runat="server">
            <ItemTemplate>
                <div class="col-lg-3 col-md-6">
                    <div class="count-box">
                        <i class='<%# Eval("icon") %>'></i>
                        <span class="num" data-val='<%# Eval("data_val") %>'>000</span>
                        <p><%# Eval("p") %></p>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
<!-- End Counts -->
  <script src="js/count.js"></script>
  <!-- ======= Skills  ======= -->
  <div class="skills container">
  
  <div class="section-title">
    <h2>Skills</h2>
  </div>
  
  <div class="row skills-content">
  
    <div class="col-lg-6">
  
      <div class="progress">
        <span class="skill">HTML <i class="val" >100%</i></span>
        <div class="progress-bar-wrap">
          <div class="progress-bar html"  style="width: 100%;"></div>
        </div>
      </div>
  
      <div class="progress">
        <span class="skill">CSS <i class="val" >90%</i></span>
        <div class="progress-bar-wrap">
          <div class="progress-bar css"  style="width: 90%;" ></div>
        </div>
      </div>
  
      <div class="progress">
        <span class="skill">JavaScript <i class="val">75%</i></span>
        <div class="progress-bar-wrap">
          <div class="progress-bar js"  style="width: 76%;"></div>
        </div>
      </div>
  
    </div>
  
    <div class="col-lg-6">
  
      <div class="progress">
        <span class="skill">PHP <i class="val">80%</i></span>
        <div class="progress-bar-wrap">
          <div class="progress-bar php"  style="width: 80%;"></div>
        </div>
      </div>
  
      <div class="progress">
        <span class="skill">WordPress/CMS <i class="val">90%</i></span>
        <div class="progress-bar-wrap">
          <div class="progress-bar cms" style="width: 90%;"></div>
        </div>
      </div>
  
      <div class="progress">
        <span class="skill">Photoshop <i class="val">55%</i></span>
        <div class="progress-bar-wrap">
          <div class="progress-bar photoshop" style="width: 55%;"></div>
        </div>
      </div>
  
    </div>
  
  </div>
  
  </div><!-- End Skills -->
  
  <!-- ======= Interests ======= -->
 <%-- <div class="interests container">
  
    <div class="section-title">
      <h2>Interests</h2>
    </div>
  
    <div class="row">
      <div class="col-lg-3 col-md-4">
        <div class="icon-box">
          <i class="fa-solid fa-fingerprint" style="color: #ffbb2c;"></i>
          <h3>Biometric</h3>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 mt-4 mt-md-0">
        <div class="icon-box">
          <i class="fa-solid fa-wifi" style="color: #5578ff;"></i>
          <h3>Network</h3>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 mt-4 mt-md-0">
        <div class="icon-box">
          <i class="fa-solid fa-hat-cowboy" style="color: #e80368;"></i>
          <h3>Hacking</h3>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 mt-4 mt-lg-0">
        <div class="icon-box">
          <i class="fa-solid fa-x-ray" style="color: #e361ff;"></i>
          <h3>Biomedical</h3>
        </div>
      </div>
     
      <div class="col-lg-3 col-md-4 mt-4">
        <div class="icon-box">
          <i class="fa-solid fa-desktop" style="color: #b2904f;"></i>
          <h3>Hardware</h3>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 mt-4">
        <div class="icon-box">
          <i class="fa-solid fa-code" style="color: #b20969;"></i>
          <h3>CP</h3>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 mt-4">
        <div class="icon-box">
          <i class="fa-solid fa-user" style="color: #ff5828;"></i>
          <h3>Verdo Park</h3>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 mt-4">
        <div class="icon-box">
          <i class="fa-solid fa-music" style="color: #29cc61;"></i>
          <h3>Flavor Nivelanda</h3>
        </div>
      </div>
    </div>
  
  </div>--%>


        <div class="row">
          <div class="education padd-15">
            <h3 class="title">Education</h3>  
            <div class="row">
              <div class="timeline-box padd-15">
                <div class="timeline shadow-dark">
                  <!-- timeline -->
                  <div class="timeline-item">
                    <div class="circle-dot"></div>
                    <h3 class="timeline-date">
                     <i class="fa fa-calendar"></i>2020-2024
                    </h3>
                    <h4 class="timeline-title">Bsc in Computer Science and Engineering</h4>
                    <p class="timeline-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Expedita labore nobis doloribus possimus atque similique enim, saepe dicta voluptatum blanditiis?</p>
                  </div>

                  <div class="timeline-item">
                    <div class="circle-dot"></div>
                    <h3 class="timeline-date">
                     <i class="fa fa-calendar"></i>2020-2024
                    </h3>
                    <h4 class="timeline-title">Bsc in Computer Science and Engineering</h4>
                    <p class="timeline-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Expedita labore nobis doloribus possimus atque similique enim, saepe dicta voluptatum blanditiis?</p>
                  </div>

                  <div class="timeline-item">
                    <div class="circle-dot"></div>
                    <h3 class="timeline-date">
                     <i class="fa fa-calendar"></i>2020-2024
                    </h3>
                    <h4 class="timeline-title">Bsc in Computer Science and Engineering</h4>
                    <p class="timeline-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Expedita labore nobis doloribus possimus atque similique enim, saepe dicta voluptatum blanditiis?</p>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <div class="experience padd-15">
            <h3 class="title">Experience</h3>
            <div class="row">
              <div class="timeline-box padd-15">
                <div class="timeline shadow-dark">
                  <!-- timeline -->
                  <div class="timeline-item">
                    <div class="circle-dot"></div>
                    <h3 class="timeline-date">
                     <i class="fa fa-calendar"></i>2020-2024
                    </h3>
                    <h4 class="timeline-title">Bsc in Computer Science and Engineering</h4>
                    <p class="timeline-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Expedita labore nobis doloribus possimus atque similique enim, saepe dicta voluptatum blanditiis?</p>
                  </div>

                  <div class="timeline-item">
                    <div class="circle-dot"></div>
                    <h3 class="timeline-date">
                     <i class="fa fa-calendar"></i>2020-2024
                    </h3>
                    <h4 class="timeline-title">Bsc in Computer Science and Engineering</h4>
                    <p class="timeline-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Expedita labore nobis doloribus possimus atque similique enim, saepe dicta voluptatum blanditiis?</p>
                  </div>

                  <div class="timeline-item">
                    <div class="circle-dot"></div>
                    <h3 class="timeline-date">
                     <i class="fa fa-calendar"></i>2020-2024
                    </h3>
                    <h4 class="timeline-title">Bsc in Computer Science and Engineering</h4>
                    <p class="timeline-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Expedita labore nobis doloribus possimus atque similique enim, saepe dicta voluptatum blanditiis?</p>
                  </div>

                </div>
              </div>
            </div>

          </div>
        </div>
      
</section>


<!-- about section -->

<!-- services section -->
<section class="service section " id="service">
  <div class="container">
    <div class="row">
      <div class="section-title padd-15">
<h2>Services</h2>
      </div>
    </div>
   <div class="row">
    <asp:Repeater ID="ServiceRepeater" runat="server">
        <ItemTemplate>
            <div class="service-item padd-15">
                <div class="service-item-inner">
                    <div class="icon">
                        <i class='<%# Eval("icon") %>'></i>
                    </div>
                    <h4><%# Eval("title") %></h4>
                    <p><%# Eval("p") %></p>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>

</section>
<!-- services section -->

<!-- portfolio section -->

</section>

<section id="portfolio" class="portfolio section-bg">
      <div class="container">

        <div class="section-title">
          <h2>Portfolio</h2>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi, ducimus?</p>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active current" >All</li>
              <li data-filter=".filter-app"  >Android App</li>
              <li data-filter=".filter-card" >JavaFX</li>
              <li data-filter=".filter-web" >Asp.NET</li>
            </ul>
          </div>
        </div>

        <div class="portfolio-container" data-aos="fade-up" data-aos-delay="100">

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="images/b.jpg" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="images/b.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 1"><i class="bx bx-plus"></i></a>
                <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="images/c.jpg" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="images/c.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 3"><i class="bx bx-plus"></i></a>
                <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="images/a.jpg" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="images/a.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 2"><i class="bx bx-plus"></i></a>
                <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="images/b.jpg" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="images/b.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 2"><i class="bx bx-plus"></i></a>
                <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="images/b.jpg" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="images/b.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 2"><i class="bx bx-plus"></i></a>
                <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="images/a.jpg" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="images/a.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 3"><i class="bx bx-plus"></i></a>
                <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="images/c.jpg" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="images/c.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 1"><i class="bx bx-plus"></i></a>
                <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="images/b.jpg" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="images/b.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 3"><i class="bx bx-plus"></i></a>
                <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="images/c.jpg" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="images/c.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 3"><i class="bx bx-plus"></i></a>
                <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.6/isotope.pkgd.min.js"></script>
<script>
  $(window).on("load", function() {
    var $container = $('.portfolio-container');
    $container.isotope({
      filter: '*',
      animationOptions: {
        queue: true
      }
    });
    $('#portfolio-flters li').click(function() {
      $('#portfolio-flters .current').removeClass('current');
      $(this).addClass('current');
      var selector = $(this).attr('data-filter');
      $container.isotope({
        filter: selector,
        animationOptions: {
          queue: true
        }
      });
      return false;
    });
    $('.portfolio-item').mixItUp(); // corrected selector
  });
</script>


 

<!-- portfolio section -->
<!-- contact section -->
<section class="contact section" id="contact">
  <div class="container">
    <div class="row">
      <div class="section-title padd-15">
        <h2>Contact Me</h2>
      </div>
    </div>
 
    <h4 class="contact-sub-title padd-15">I Would Be Happy to Hear You!</h4>

    <div class="row">

      <!-- contact info item  -->

      <div class="contact-info-item padd-15">
        <div class="icon">
          <i class="fa fa-phone"></i>
        </div>
        <h4>Call Us</h4>
        <p>0156789365</p>
      </div>


      <!-- contact info item  -->
        <!-- contact info item  -->
        <div class="contact-info-item padd-15">
          <div class="icon">
            <i class="fa fa-map-marker-alt"></i>
          </div>
          <h4>Office</h4>
          <p>Dhaka</p>
        </div>
  
  
        <!-- contact info item  -->
  <!-- contact info item  -->
  <div class="contact-info-item padd-15">
    <div class="icon">
      <i class="fa fa-phone"></i>
    </div>
    <h4>Email</h4>
   <a href="https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox"> <p>meem2007105@stud.kuet.ac.bd</p></a>
  </div>


  <!-- contact info item  -->

  <!-- contact info item  -->
  <div class="contact-info-item padd-15">
    <div class="icon">
      <i class="fa fa-phone"></i>
    </div>
    <h4>Website</h4>
   <a href="https://github.com/MarufaMeem"><p>www.domain.com</p></a> 
  </div>


  <!-- contact info item  -->

    </div>
    <h3 class="contact-title padd-15">SEND MESSAGES</h3>
    <h4 class="contact-sub-title padd-15">You can send me your inquiries , problems or your thought! 
    </h4>

<!-- contact form -->
<div class="row">
  <div class="contact-form padd-15">
    <div class="row">
      <div class="form-item col-6 padd-15">
        <div class="form-group">
            <asp:TextBox runat="server" ID="name" type="text" class="form-control" placeholder="Name" Rows="1"></asp:TextBox>
        </div>
      </div>
      <div class="form-item col-6 padd-15">
        <div class="form-group">
                        <asp:TextBox runat="server" ID="email" type="email" class="form-control" placeholder="Name" Rows="1"></asp:TextBox>

        
        </div>
      </div>
    </div>
    <div class="row">
      <div class="form-item col-12 padd-15">
        <div class="form-group">
            <asp:TextBox runat="server" ID="msg" class="form-control" placeholder="Message" OnTextChanged="Unnamed2_TextChanged" Rows="5" TextMode="MultiLine"></asp:TextBox>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="form-item col-12 padd-15">
        <div class="form-group">
            <asp:Button class="btn" runat="server" Text="Send Message" OnClick="Unnamed2_Click" />
        </div>
      </div>
    </div>
    <hr class="hr1">
    <div class="grid final" style="grid-template-columns: 34% auto;">
      <div class="flexCol">
        <img src="images/Animation - 1707683992439.gif" alt="" height="50px">
      
        </div>
      <div class="flexCol">
          <p>Most leaders struggle talking about their business in a way that interests others. I help them get (even more) clear about their business. Then write words that inspire readers to click their buy, try &amp; call buttons.</p>
      </div>
  </div>
  <hr class="hr2">
  <div class="social">
    <span class="fa-stack">
        <i class="fab fa-facebook fa-stack-1x" aria-hidden="true"></i>
       
    </span>

    <span class="fa-stack">
        <i class="fab fa-instagram-square fa-stack-1x" aria-hidden="true"></i>
        
    </span>

    <span class="fa-stack">
        <i class="fa-brands fa-square-x-twitter fa-stack-1x" aria-hidden="true"></i>
       
    </span>

    <span class="fa-stack">
        <i class="fab fa-google-plus fa-stack-1x" aria-hidden="true"></i>
       
    </span>

    <span class="fa-stack">
        <i class="fab fa-youtube fa-stack-1x" aria-hidden="true"></i>
       
    </span>

    <span class="fa-stack">
        <i class="fab fa-pinterest fa-stack-1x" aria-hidden="true"></i>
       
    </span>

 
</div>
  </div>
</div>
<!-- contact form -->

  </div>

</section>

<!-- contact section -->
          <div>
<asp:Button id="adminbtn" class="adminbtn" runat="server" Text="AdminLogin" OnClick="adminbtn_Click"/>

         <div class="signn"><svg viewBox="0 0 512 512"><path d="M377.9 105.9L500.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L377.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1-128 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM160 96L96 96c-17.7 0-32 14.3-32 32l0 256c0 17.7 14.3 32 32 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-64 0c-53 0-96-43-96-96L0 128C0 75 43 32 96 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32z"></path></svg></div>
  
  
  

          </div>


<style>
    .adminbtn {
  display: flex;
  align-items: center;
  justify-content: flex-start;
  width: 45px;
  height: 45px;
  border: none;
  border-radius: 50%;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  transition-duration: .3s;
  box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.199);
  background-color: lightpink;
}

/* plus sign */
.signn {
  width: 100%;
  transition-duration: .3s;
  display: flex;
  align-items: center;
  justify-content: center;
}

.signn svg {
  width: 17px;
}

.signn svg path {
  fill: white;
}
/* text */
.textt {
  position: absolute;
  right: 0%;
  width: 0%;
  opacity: 0;
  color: white;
  font-size: 1.2em;
  font-weight: 600;
  transition-duration: .3s;
}
/* hover effect on button width */
.adminbtn:hover {
  width: 125px;
  border-radius: 40px;
  transition-duration: .3s;
}

.adminbtn:hover .signn {
  width: 30%;
  transition-duration: .3s;
  padding-left: 20px;
}
/* hover effect button's text */
.adminbtn:hover .textt {
  opacity: 1;
  width: 70%;
  transition-duration: .3s;
  padding-right: 10px;
}
/* button click effect*/
.adminbtn:active {
  transform: translate(2px ,2px);
}
</style>


</div>

<!-- main content -->

  </div>
<!-- style  -->
<div class="style-switcher">
  <div class="style-switcher-toggler ">
   
   </div>
 
  
</div>
<!-- style -->

<script>
  const navLinkEls=document.querySelectorAll('.navlink');
navLinkEls.forEach(navLinkEl =>
  {
    navLinkEls.addEventListener('click',function()
    {
      document.querySelector('.active')?.classList.remove('active');
      this.classList.add('active');
    });
  });

</script>


  <!-- main container -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.1.0/typed.umd.js" integrity="sha512-+2pW8xXU/rNr7VS+H62aqapfRpqFwnSQh9ap6THjsm41AxgA0MhFRtfrABS+Lx2KHJn82UOrnBKhjZOXpom2LQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="js/script.js"></script>

<script src="js/style-switcher.js"></script>


    <style>
        
@import url('https://fonts.googleapis.com/css2?family=Clicker+Script&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

 body.dark {
     --bg-black-900: black;
 --bg-black-100: #222222;
 --bg-black-50: #393939;
 --text-black-900: #ffb996;
 --bg-black-1: #151515;
 --text-black-700: rgba(255,255,255,.2);
 --bg-black-2: rgb(238, 237, 236);
   
}
:root{
  --bg-black-900:#f4e8f3;
  --bg-black-100:#e3d5ea;
  --bg-black-50:#e8dfec;
  --text-black-900:#9f7b1e;
 --bg-black-2: #ae7b47;
  --bg-black-1:#fff5f1;
  --text-black-700:#1c1518;
}

body{
 
  line-height: 1.5;
  font-size: 16px;
font-family: 'Poppins' , sans-serif;

}
*
{
  margin: 0;
  padding: 0;
  outline:none;
  text-decoration: none;
  box-sizing: border-box;
  scroll-behavior: smooth;
}

::before,::after{
  box-sizing: border-box;

}
ul
{
  list-style: none;
}
.section
{
  background: var(--bg-black-900);
  
  min-height: 100vh;
  display: block;

  padding: 0 30px;
 
  opacity: 1;


}
.hidden

{
  display: none !important;


}

.padd-15
{
  padding-left: 15px;
  padding-right: 15px;

}
.container
{
max-width: 1100px;
width: 100%;

margin: auto;
}
.section .container
{
  
  padding-top: 60px;
  padding-bottom:70px ;
}
.section-title
{
  flex-direction: 0 0 100%;
  max-width: 100%;
  margin-bottom: 60px;
  padding-bottom: 30px;
  
 
}
.section-title h2
{
  font-size: 40px;
  color: var(--text-black-900
  );
  font-weight: 700;
  position: relative;
  margin-bottom: 20px;
}
.section-title h2::before
{
  content: '';
  height: 4px;
  width: 50px;
  background-color: var(--skin-color);
  position: absolute;
  top: 100%;
  left: 0;
}
.section-title h2::after
{
  content: '';
  height: 4px;
  width: 25px;
  background-color: var(--skin-color);
  position: absolute;
  top: 100%;
  left: 0;
  margin-top: 8px;
  
}
.row
{
  display: flex;
  flex-wrap: wrap;
  margin-left:10px ;
  
  position: relative;

  margin-top: calc(-1 * 1.5);
  margin-right: calc(-.5 * 1.5);
  margin-left: calc(-.5 * 2.5);

}

.btn
{
  font-size: 16px;
  font-weight: 500;
  padding: 2px 25px;
  
  color: white;
  border-radius: 40px;
  display: inline-block;
  white-space: nowrap;
  border: none;
  background: var(--skin-color);
  transition: all 0.4s ease;
}
.btn:hover{
  transform: scale(1.05);
}
.shadow-dark
{
  box-shadow: 0 0 20px rgb(48, 46, 77,0.15);
}

section.section-show {
  top: 100px;
  bottom: auto;
  opacity: 1;
  padding-bottom: 45px;
  
}


h1,
h2,
h3,
h4,
h5,
h6 {
  font-family: "Raleway", sans-serif;
  margin-bottom: .5rem;
  line-height: 1.2;
}

.fst-italic {
  font-style: italic !important;
}
p {
  margin-top: 0;
  margin-bottom: 1rem;
}

@media (min-width: 992px) {
  .col-lg-6 {
    flex: 0 0 auto;
    width: 50%;
  }
}

.col-log-4 {
  flex: 0 0 50%; /* Make the image take up half of the row */
}

.img-fluid {
  max-width: 100%;
  height: 400px;
  margin: 70px;
  margin-top: 10px;
  
}
img {
  vertical-align: middle;
}
/* 
aside */
.nav {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100px;
  background-color: var(--bg-black-100);
  color:rgb(164, 48, 48);
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 10px 20px;
  z-index: 1000;

}


.logo img {
  height: 50px;
  
}

.logo a {
  color:var(--text-black-900);
  font-size: 1.5rem;
  font-weight: bold;
  text-decoration: none;
  
}

.logo a span{
  font-family: 'Clicker Script' , cursive;
  font-size: 50px;
}

/* .menu-toggle {
  display: none;
  cursor: pointer;
} */

/* .nav {
  list-style: none;
  display: flex;
} */

.nav ul{
  float: right;
  margin-right: 40px;
}
.nav li {
  display: inline-block;
  margin: 0 8px;
  line-height: 80px;

}

.nav li a {
  color:var(--text-black-900) ;
  text-decoration: none;
  font-size: 18px;
  text-transform: uppercase;
  padding: 7px 10px;
}

.nav ul a:hover, .nav ul a.active{
  color:var(--text-black-700) ;
}
.menu-toggle i{
  display: none;
  color: wheat;
  font-size: 30px;
  line-height: 80px;
  float: right;
  margin-right:40px ;
  margin-right: 40px;
  cursor: pointer;
  
}
.nav li .buttons {
  
  height: 50px;
  background: var(--bg-black-1);
}
@media screen and (max-width: 1048px) {
  .logo{
    font-size: 20px;
    padding-left:60px ;
  }
 .nav ul{
    margin-right: 20px;
    
  }
  .nav a{
    font-size: 17px;
  }
}
@media screen and (max-width: 990px)
{
  .menu-toggle i{
    display: block;
  }
  .nav ul{
    position: fixed;
    width: 130px;
    height: 100vh;
    background:rgba(255,255,255,.2);
    backdrop-filter: blur(10px);
    top: 100px;
    right: -100%;
    text-align: center;
    transition: all .5s;
  }
  .nav li{
    display: block;
    margin: 50px 0;
    line-height: 30px;

  }
  .nav a{
    font-size: 20px;
  }
  a.active,a:hover{
    color: #504e70;
  }
  .nav ul.show{
    right: 0;
  }
}

/* homw */
.home
{
  min-height: 100vh;
  display: flex;
  color: var(--bg-black-900);
}
.home .row
{
  flex: 0 0 50%;
}
.home .home-info
{
  flex: 0 0 50%;
  max-width: 60%;
/* position: relative;
display: flex;
justify-content: center;
align-items: center;
height:100vh; */
color: #e0850e;
 border: none;
 border-radius: 2px;
 cursor: pointer;
 margin-right: 0px;
 margin-top: 100px;
 text-align: center;
 font-size: 2rem;
 
}
h3{
  position: flex;
}
h3.hello
{
  font-size: 28px;
  margin-top: 180px;
  margin-bottom: 10px;


}
h3.hello span
{
  font-family: 'Clicker Script' , cursive;
  font-size: 30px;
  font-weight: 700;
  color: var(--skin-color);
}
H3.my-profession
{
  font-size: 30px;
  margin: 1px 0;
}
.typing
{
  color: var(--skin-color);
}
.home-info p
{
  margin-bottom: 70px;
  font-size: 20px;
  color: var(--text-black-700);
}
/* .home-info img{
  position: absolute;
  top: 0;

  left: 0;
  width: 100%;
  pointer-events: none;
} */

/* #h7
{
  right: 0;
  top: 0;
}
#h6
{
  left: 0;
  top: 0;
}
#h5{
  left: 0;
  bottom: 0;
}
#h4{
  right: 0;
  bottom: 0;
} */
.home .home-img
{
  
  flex: 0 0 40%;
  max-width: 40%;
 margin-top: 150px;
  text-align: center;
  position: relative;
left: 90px;
}

.mask{
  position: absolute;
  width: 330px;
  height: 400px;
 /* background: url(/images/marufa.jpg) no-repeat 50% 50%;*/
  background-size: cover;
}

.mask:nth-child(1)
{
  clip-path: polygon(0% 0,0% 0,0% 100%,0% 100%);
}
.mask:nth-child(2)
{
  clip-path: polygon(10% 0,10% 0,10% 100%,10% 100%);
}
.mask:nth-child(3)
{
  clip-path: polygon(20% 0,20% 0,20% 100%,20% 100%);
}
.mask:nth-child(4)
{
  clip-path: polygon(30% 0,30% 0,30% 100%,30% 100%);
}.mask:nth-child(5)
{
  clip-path: polygon(40% 0,40% 0,40% 100%,40% 100%);
}.mask:nth-child(6)
{
  clip-path: polygon(50% 0,50% 0,50% 100%,50% 100%);
}.mask:nth-child(7)
{
  clip-path: polygon(60% 0,60% 0,60% 100%,60% 100%);
}.mask:nth-child(8)
{
  clip-path: polygon(70% 0,70% 0,70% 100%,70% 100%);
}.mask:nth-child(9)
{
  clip-path: polygon(80% 0,80% 0,80% 100%,80% 100%);
}.mask:nth-child(10)
{
  clip-path: polygon(90% 0,90% 0,90% 100%,90% 100%);
}
/* .home .home-img img
{
  height: 400px;
  width: 330px;
  border-radius: 60%;

} */
.social-links {
  margin-top: 40px;
  display: flex;
  margin-left: 110px;
}

 .social-links a {
  font-size: 16px;
  display: flex;
  justify-content: center;
  align-items: center;
  background: rgba(235, 165, 195, 0.1);
  color: #fff;
  line-height: 1;
  margin-right: 8px;
  border-radius: 50%;
  width: 40px;
  height: 40px;
}

.social-links a:hover {
  background: #f8d5d7;
}

@media (max-width: 992px) {
 

  .social-links {
    margin-top: 15px;
  }

  .container {
    display: flex;
    flex-direction: column;
    align-items: center;
  }
}

.btnn{
  background-color: rgb(242, 188, 188);
  border-radius: 15%;
  border: none;
  cursor:pointer;
  position: flex;
 padding: 2px;
 margin-left: 0px;
 }
 .btnn:hover{
 background-color: rgb(200, 84, 84);
 box-shadow: 10px 10px 10px rgba(48, 2, 2, 0.15) ;
 
 }

/* paralax */
/* about */
.about{
  margin: 0px;
  padding: 96px;
 background: var(--bg-black-1);
 border:5px solid var(--bg-black-100);
  }
  
   .about-text
  {
   flex: 0 0 50%;
   max-width: 100%;
  
  
  }
   .about-text h3
  {
   font-size: 24px;
   margin-bottom:15px ;
   font-weight: 700;
   color:var(--skin-color);
  }
  
  .about-me .content h3 {
    font-weight: 700;
    font-size: 26px;
    color: var(--skin-color);
  }
  .about-me .content p{
    color: var(--bg-black-2);
  }
  
  .about-me .content ul {
    list-style: none;
    padding: 0;
    margin-top: 0px;
    margin-bottom: 1rem;
    padding-left: 2rem;
   
  }
  .about-me .content ul li {
    margin-bottom: 20px;
    display: flex;
    align-items: center;
    color: rgb(125, 125, 19);
  }
  
  .about-me .content ul strong {
    margin-right: 10px;
    color:  rgb(125, 125, 19);
  }
  
  .about-me .content ul i {
    font-size: 16px;
    margin-right: 5px;
    color: var(--skin-color);
    line-height: 0;
  }
  
  .about-me .content p:last-child {
    margin-bottom: 0;
  }
  
  /*--------------------------------------------------------------
  # Counts
  --------------------------------------------------------------*/
  .counts {
    padding: 70px 0 60px;
   
  
  }
  
  .col-lg-3 {
    margin-bottom: 30px;
    flex: 0 0 25%;
    max-width: 25%;
  }
  .counts .count-box {
    
  margin-left: 10px;
  margin-right: 10px;
    
    padding: 30px 30px 25px 30px;
    
    position: relative;
    text-align: center;
    background: var(--bg-black-100);
    border:3.5px solid var(--bg-black-1);
  }
  
  .counts .count-box i {
    display: block;
    position: absolute;
    top: -25px;
    left: 50%;
    transform: translateX(-50%);
    font-size: 24px;
    background:var(--bg-black-1);
    padding: 12px;
    color: var(--text-black-700);
    border-radius: 50px;
    line-height: 0;
  }
  
  .counts .count-box span {
    font-size: 36px;
    display: block;
    font-weight: 600;
    color: var(--bg-black-2);
  }
  
  .counts .count-box p {
    padding: 0;
    margin: 0;
    font-family: "Raleway", sans-serif;
    font-size: 14px;
    color: var(--text-black-700);
  }
  
  /*--------------------------------------------------------------
  # Skills
  --------------------------------------------------------------*/
  .skills{
    margin-bottom: 50px;
    
  }
  .skills .progress {
    height: 60px;
    display: block;
    background: none;
    border-radius: 0;
  margin-bottom: 5px;
    padding-right: 65px;
    
  }
  
  .skills .progress .skill {
    padding: 10px 0;
    margin: 0;
    text-transform: uppercase;
    display: block;
    font-weight: 600;
    font-family: "Poppins", sans-serif;
    color: var(--bg-black-2);
  }
  
  .skills .progress .skill .val {
    float: right;
    font-style: normal;
  }
  
  .skills .progress-bar-wrap {
    background: rgba(211, 129, 129, 0.2);
  }
  
  .skills .progress-bar {
    width: 1px;
    height: 10px;
    transition: 3s;
    background-color: var(--skin-color);
   
  }
  
  
  .skills .html
  {
    animation:html 1s 1;
  }
  
  .skills .php
  {
    animation:php 1s 1;
  }
  
  .skills .css
  {
    animation:css 1s 1;
  }
  
  .skills .cms
  {
    animation:cms 1s 1;
  }
  
  .skills .photoshop
  {
    animation:photoshop 1s 1;
  }
  .skills .js
  {
    animation:js 1s 1;
  }
  
  @keyframes html{
   from{
      width: 0%;
    }
    to{
      width: 100%;
    }
    
  }
  @keyframes css{
    from{
       width: 0%;
     }
     to{
       width: 90%;
     }
     
   }
   
   @keyframes js{
    from{
       width: 0%;
     }
     to{
       width: 75%;
     }
     
   }
   
   @keyframes php{
    from{
       width: 0%;
     }
     to{
       width: 80%;
     }
     
   }
   
   @keyframes cms{
    from{
       width: 0%;
     }
     to{
       width: 90%;
     }
     
   }
   
   @keyframes photoshop{
    from{
       width: 0%;
     }
     to{
       width: 55%;
     }
     
   }
   
  /*--------------------------------------------------------------
  # Interests
  --------------------------------------------------------------*/
  .interests{
    margin-bottom:50px ;
  }
  .interests .icon-box {
    display: flex;
    align-items: center;
    margin: 10px;
    padding: 20px;
    background:var(--bg-black-100);
    transition: ease-in-out 0.3s;
  }
  
  .interests .icon-box i {
    font-size: 32px;
    padding-right: 10px;
    line-height: 1;
  }
  
  .interests .icon-box h3 {
    font-weight: 700;
    margin: 0;
    padding: 0;
    line-height: 1;
    font-size: 16px;
    color: var(--bg-black-2);
  }
  
  .interests .icon-box:hover {
    background: var(--bg-black-50);
  }
  
.about  .education ,
.about .experience
{
  flex: 0 0 50%;
  max-width: 50%;
  margin-top: 30px;

}
.about h3.section-title

{
  font-size: 24px;
  margin-bottom: 30px
  ;
  font-weight: 700;
  color: var(--bg-black-2);
}
.about .timeline-box
{
  flex: 0 0 100%;
  max-width: 100%;

}

.about .timeline
{
  background-color: var(--bg-black-100);
  padding: 30px 15px;
  border: 1px solid var(--bg-black-50);
  border-radius: 10px;
  width: 100%;
  position: relative;

}
.about .timeline .timeline-item
{
  position: relative;
  padding-left: 37px;
  padding-bottom: 50px;

}
.about .timeline .timeline-item:last-child
{
  padding-bottom: 0;
}
.about .timeline .timeline-item::before
{
  content: '';
  width: 1px;
  position: absolute;
  height: 100%;
  left: 7px;
  top: 0;
  background-color: var(--skin-color);
}
.about .timeline .circle-dot
{
  position: absolute;
  left: 0;
  top: 0;
  height: 15px;
  width: 15px;
  border-radius: 50%;
  background-color: var(--skin-color);
}
.about .timeline .timeline-date
{
  font-weight: 5px;
  font-size: 14px;
  margin-bottom: 12px;
  color: var(--bg-black-2);
}
.about .timeline .timeline-date
.fa
{
  margin-right: 5px;
}
.about .timeline .timeline-title
{
  font-weight: 700;
  font-size: 18px;
  margin-bottom: 15px;
  text-transform: capitalize;
  color: var(--bg-black-2);
}
.about .timeline .timeline-text
{
  line-height: 25px;
  font-size: 16px;
  text-align: justify;
  color: var(--bg-black-2);
}
.about .timeline .timeline-date
{
  font-weight: 400;
  font-size: 14px;
  margin-bottom: 12px;
  color: var(--bg-black-2);
}
.about .timeline .timeline-date .fa
{
  margin-right: 5px;

}
.about .timeline .timeline-title
{
  font-weight: 700;
  font-size: 18px;
  margin-bottom: 15px;
  text-transform: capitalize;
  color: var(--text-black-700);
}
.about .timeline .timeline-text
{
  line-height: 25px;
  font-size: 16px;
  text-align: justify;
  color: var(--bg-black-2);
}
/* service */
.service .container 
{
  padding-bottom: 40px;
}
.service .service-item

{
  margin-bottom: 30px;
  flex: 0 0 30.33%;
  max-width: 33.33%;
}
.service .service-item .service-item-inner{
  background-color: var(--bg-black-100);
  border: 1px solid var(--bg-black-50);
  border-radius: 10px;
  padding:30px 15px;
  text-align: center;
  transition: all .3s ease;
}
.service .service-item .service-item-inner:hover
{
  box-shadow: 0 0 20px rgb(48, 46, 77,0.15);
}
.service .service-item .service-item-inner .icon{
  height: 60px;
  width: 60px;
  border-radius: 50%;
  display: block;
  
  margin: 0 auto 30px;
  text-align: center;
  transition: all .3s ease;
}
.service .service-item .service-item-inner .icon .fa{
  font-size: 40px;
  line-height: 60px;
  color: var(--skin-color);
  transition: all .3s ease;
}
.service .service-item .service-item-inner:hover .icon
{
  background: var(--skin-color);
 
}

.service .service-item .service-item-inner:hover .icon .fa{
  font-size: 25px;
  color: #ffffff;
}
.service .service-item .service-item-inner h4
{
  font-size: 18px;
  margin-bottom: 15px;
  color: var(--text-black-900);
  font-weight: 700;
  text-transform: capitalize;
}
.service .service-item .service-item-inner p{
  font-size: 16px;
  color: var(--bg-black-2);
  line-height:25px ;
}


/* portfolio */
.portfolio{
background: var(--bg-black-100);
  padding: 60px;
    }
    .portfolio p{
      margin-top: 30px;
    }
  
    .portfolio-container{
      display: flex;
  
  align-items: center;
  
  margin-bottom: 30px;
      flex: 0 0 30%;
  max-width: 100%;
    }
  
    .portfolio .portfolio-item {
      width: 350px;
    }
    
    .portfolio #portfolio-flters {
      padding: 0;
      margin: 0 auto 50px auto;
      list-style: none;
      text-align: center;
      background: #e9f2f6;
      border-radius: 50px;
      padding: 2px 15px;
      margin-left: 490px;
    }
    
    .portfolio #portfolio-flters li {
      cursor: pointer;
      display: inline-block;
      padding: 10px 15px 8px 15px;
      font-size: 14px;
      font-weight: 600;
      line-height: 1;
      text-transform: uppercase;
      color: #272829;
      margin-bottom: 5px;
      transition: all 0.3s ease-in-out;
    }
    
    .portfolio #portfolio-flters li:hover,
    .portfolio #portfolio-flters li.filter-active {
      color: #149ddd;
    }
    
    .portfolio #portfolio-flters li:last-child {
      margin-right: 0;
    }
    
    .portfolio .portfolio-wrap {
      transition: 0.3s;
      position: relative;
      overflow: hidden;
      z-index: 1;
      margin: 15px;
      
    }
    
    .portfolio .portfolio-wrap .img-fluid{
  
  height: 250px;
  width: 400px;
  padding: 0px;
  
  margin: 0px;
  
    }
  
    .portfolio .portfolio-wrap::before {
      content: "";
      background: rgba(220, 190, 247, 0.5);
      position: absolute;
      width: 400px;
      height: 100%; /* Adjusted to cover the entire .portfolio-wrap */
      top: 0;
      left: 0;
      transition: all ease-in-out 0.3s;
      z-index: 2;
      opacity: 0;
      margin-right: 0px;
    }
    
    
    
    .portfolio .portfolio-wrap .portfolio-links {
      opacity: 1;
      left: 0;
      right: 0;
      bottom: -60px;
      z-index: 3;
      position: absolute;
      transition: all ease-in-out 0.3s;
      display: flex;
      justify-content: center;
      width: 400px;
    }
    
    .portfolio .portfolio-wrap .portfolio-links a {
      color: #fff;
      font-size: 28px;
      text-align: center;
      background: rgba(184, 80, 239, 0.75);
      transition: 0.3s;
      width: 50%;
    }
    
    .portfolio .portfolio-wrap .portfolio-links a:hover {
      background: rgba(197, 49, 234, 0.95);
      
    }
    
    .portfolio .portfolio-wrap .portfolio-links a+a {
      border-left: 1px solid #b337ed;
    }
    
    .portfolio .portfolio-wrap:hover::before {
     width: 400px;
      opacity: 1;
    }
    
    .portfolio .portfolio-wrap:hover .portfolio-links {
      opacity: 1;
      bottom: 0;
     
    }
    
    /*--------------------------------------------------------------
    # Portfolio Details
    --------------------------------------------------------------*/
   
    
   
   
  
    
    .portfolio-details .portfolio-info {
      padding: 30px;
      
      box-shadow: 0px 0 30px rgba(251, 252, 254, 0.151);
      top: 0px;
      right: 0px;
    }
    
    .portfolio-details .portfolio-info h3 {
      font-size: 22px;
      font-weight: 700;
      color: rgb(255, 196, 0);
      margin-bottom: 20px;
      padding-bottom: 20px;
      border-bottom: 1px solid #eee;
    }
    
    .portfolio-details .portfolio-info ul {
      list-style: none;
      padding: 0;
      font-size: 15px;
    }
    
    .portfolio-details .portfolio-info ul li+li {
      margin-top: 10px;
    }
    
    .portfolio-details .portfolio-description {
      padding-top: 40px;
      padding-left: 10px;
    }
    
    .portfolio-details .portfolio-description h2 {
      font-size: 26px;
      font-weight: 700;
      color: rgb(255, 153, 0);
      margin-bottom: 20px;
    }
    
    .portfolio-details .portfolio-description p {
      padding: 0;
    }
    

/* CONTACT */
.contact
{
  background: var(--bg-black-900);
}
.contact-title
{
  color: var(--skin-color);
  text-align: center;
  font-size: 25px;
  margin-bottom: 20px;
}

.contact-sub-title
{
  color: #c0864c;
 
  text-align: center;
  font-size: 15px;
  margin-bottom: 60px;
}
.contact .contact-info-item
{
  flex: 0 0 25%;
  max-width: 25%;
  text-align: center;
  margin-bottom: 60px;
}

.contact .contact-info-item .icon{
  display: inline-block;
}
.contact .contact-info-item .icon .fa
{
  font-size: 25px;
  color: var(--skin-color);

}
.contact .contact-info-item h4
{
  font-size: 18px;
  font-weight: 700;
  color: #c0864c;
  text-transform: capitalize;
  margin: 15px 0 5px;
}
.contact .contact-info-item p 
{
  font-size: 16px;
  line-height: 25px;
  color: #505050;
  font-weight: 400;

}

.contact .contact-form
{
  flex: 0 0 100%;
  max-width: 100%;
}
.contact .contact-form .col-6
{
  flex: 0 0 50%;
  max-width: 100%;
 
}
.contact .contact-form .col-12
{
  flex: 0 0 100%;
  max-width: 100%;
 
}
.contact .contact-form .form-item
{
  margin-bottom: 30px;
}
.contact .contact-form .form-item .form-control
{
  width: 100%;
  height: 50px;
  border-radius: 25px;
  background: var(--bg-black-100);
  border: 1px solid var(--bg-black-50);
  padding: 10px 25px;
  font-size: 16px;
  color: var(--text-black-700);
  transition: all .3s ease;
}

.contact .contact-form .form-item .form-control:focus
{
  box-shadow: 0 0 20px rgb(48, 46, 77,0.15);
}
.contact .contact-form .form-item textarea.form-control
{
  height: 140px;
}

.contact .contact-form .btn
{
  height: 50px;
  padding: 0 50px;
}

hr.hr1 {
  margin: 30px 0 30px 0;
}
hr {
  opacity: 20%;
  width: 100%;
  background-color: var(--bg-black-1);
}
hr {
  height: 1px;
  background-color: var(--text-black-700);
  border: none;
  margin-top: 70px;
  margin-bottom: 70px;
}

hr {
  display: block;
  unicode-bidi: isolate;
  margin-block-start: 0.5em;
  margin-block-end: 0.5em;
  margin-inline-start: auto;
  margin-inline-end: auto;
  overflow: hidden;
  border-style: inset;
  border-width: 1px;
}
.final.grid {
  margin: -15px 0 -30px 0;

}
.grid {
  display: grid;
  color: #c0864c;
  grid-template-columns: auto auto auto;
  margin-top: 20px;
  text-align: center;
  max-width: 100%;
}
div {
  display: block;
}
hr.hr2 {
  margin: 50px 0 40px 0;
}
 hr {
  opacity: 20%;
  width: 100%;
  background-color: var(--bg-black-1);
}

hr {
  height: 1px;
  background-color: var(--text-color);
  border: none;
  margin-top: 70px;
  margin-bottom: 70px;
}

hr {
  display: block;
  unicode-bidi: isolate;
  margin-block-start: 0.5em;
  margin-block-end: 0.5em;
  margin-inline-start: auto;
  margin-inline-end: auto;
  overflow: hidden;
  border-style: inset;
  border-width: 1px;
}
.social {
  font-size: 30px;
  filter: opacity(50%);
  
  margin-top: 40px;
  display: flex;
  justify-content: center;
}


div {
  display: block;
  color:var(--bg-black-2);
}

.adminBtn {
    display: flex;
    align-items: center;
    justify-content: flex-start;
    width: 45px;
    height: 45px;
    border: none;
    border-radius: 50%;
    cursor: pointer;
    position: relative;
    overflow: hidden;
    transition-duration: .3s;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.199);
    background-color: rgb(255, 65, 65);
}

/* plus sign */
.sign {
    width: 100%;
    transition-duration: .3s;
    display: flex;
    align-items: center;
    justify-content: center;
}

    .sign svg {
        width: 17px;
    }

        .sign svg path {
            fill: white;
        }
/* text */
.text {
    position: absolute;
    right: 0%;
    width: 0%;
    opacity: 0;
    color: white;
    font-size: 1.2em;
    font-weight: 600;
    transition-duration: .3s;
}
/* hover effect on button width */
.adminBtn:hover {
    width: 125px;
    border-radius: 40px;
    transition-duration: .3s;
}

    .adminBtn:hover .sign {
        width: 30%;
        transition-duration: .3s;
        padding-left: 20px;
    }
    /* hover effect button's text */
    .adminBtn:hover .text {
        opacity: 1;
        width: 70%;
        transition-duration: .3s;
        padding-right: 10px;
    }
/* button click effect*/
.adminBtn:active {
    transform: translate(2px,2px);
}

@media (max-width:1199px)
{
  .aside
  {
    left: -270px;
  }
  .main-content
  {
    padding-left: 0;
  }
  .about .about-content .personal-info .info-item p span
  {
    display: block;
    margin-left: 0;
  }
}
@media (max-width:1148px) {

  .contact .contact-info-item,
  .portfolio .portfolio-item,
  .service .service-item
  {
    flex: 0 0 50%;
    max-width: 50%;
  }
 
  .home .home-info
  {
    max-width: 100%;
    flex: 0 0 100%;
  }
.home .home-img,.about .img-fluid {
  display: none;
}
}
@media (max-width:815px)
{
  .about .about-content .experience,
  .about .about-content .education,
  .about .about-content .skills,
  .about .about-content .personal-info
  {
    flex: 0 0 100%;
    max-width: 100%;
  }
}
@media (max-width:771px)
{
  .portfolio .portfolio-item,
  .service .service-item
  {
    flex: 0 0 100%;
    max-width: 100%;
  }
}
@media (max-width:1184px)
{.about .about-content{
     flex: 0 0 100%;
max-width: 100%;
 }


@media (max-width:551px)
{.about .about-content .personal-info .info-item,
  .contact .contact-info-item
  {
    flex: 0 0 100%;
    max-width: 100%;
  }
}
@media (max-width:441px)
{
  .contact .contact-form .form-item
  {
    flex: 0 0 100%;
    max-width: 100%;
  }
}



/* Medium devices (tablets, 768px and up) */
@media (max-width: 768px) {
 .portfolio #portfolio-flters {
      flex:0 0 100%;
      max-width:100%;
  
  }
}

/* Large devices (desktops, 992px and up) */


/* Extra large devices (large desktops, 1200px and up) */
@media (max-width: 1200px) {
  .portfolio #portfolio-flters li {
    margin: 0 10px;
    padding: 8px 16px;
    font-size: 14px;
  }

  .portfolio .portfolio-item {
    margin-bottom: 20px;
  }

  .portfolio .portfolio-wrap {
    border-radius: 12px;
    box-shadow: 0px 0 30px rgba(0, 0, 0, 0.2);
  }

  .portfolio .portfolio-wrap .portfolio-links a {
    font-size: 22px;
  }
}


    </style>

    <script>

    </script>

</asp:Content>
