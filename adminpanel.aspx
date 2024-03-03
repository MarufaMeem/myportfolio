<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminpanel.aspx.cs" Inherits="work1.adminpanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     
    <title>Admin Panel</title>
     <style>
       /* General Styles */
body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    margin: 0;
    padding: 0;
}

.container {
    width: 80%;
    margin: 0 auto;
    padding: 20px;
  /*  border: 3px solid rgb(242, 193, 141);*/ /* Border color */
    border-radius: 10px;
}

/* Navigation styles */
ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
    background-color: rgb(246, 241, 147); /* Navbar background color */
    overflow: hidden;
    border-bottom: 3px solid rgb(242, 193, 141); /* Border color */
}

li {
    float: left;
}

li a {
    display: block;
    color: #333; /* Navbar link color */
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: rgb(197, 235, 170); /* Navbar link hover color */
}



/* Section styles */
section {
    padding: 20px;
    background-color: #fff;
    margin-top: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
   /* border: 3px solid rgb(242, 193, 141);*/ /* Border color */
}

section h2 {
    margin-top: 0;
    color: #333;
}

section h3 {
    margin-bottom: 10px;
    color: rgb(165, 221, 155); /* Section title color */
}

/* Form styles */
form {
    width: 100%;
}

.form-group {
    margin-bottom: 20px;
    border-bottom: 2px solid rgb(242, 193, 141); /* Border color */
    padding-bottom: 15px;
}

.form-group label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
    color: #333;
}

.form-group input[type="text"],
.form-group input[type="email"],
.form-group input[type="password"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.form-group button {
    padding: 10px 20px;
    background-color: rgb(165, 221, 155); /* Button background color */
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.form-group button:hover {
    background-color: rgb(197, 235, 170); /* Button hover background color */
}

/* Table styles */
table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    border: 3px solid rgb(242, 193, 141); /* Table border color */
    border-radius: 5px;
}

table th,
table td {
    border: 1px solid #ccc;
    padding: 10px;
    text-align: left;
}

table th {
    background-color: #f2f2f2;
}

/* Label styles */
label {
    font-weight: bold;
}

/* Alert styles */
.alert {
    padding: 15px;
    margin-bottom: 20px;
    border: 1px solid transparent;
    border-radius: 4px;
}

.alert-success {
    background-color: #ffd4e5; /* Misty Rose */
    border-color: #ff99cc; /* Light Pink */
    color: #ff69b4; /* Hot Pink */
}

.alert-danger {
    background-color: #ffcccc; /* Light Coral */
    border-color: #ff6666; /* Pastel Red */
    color: #ff0000; /* Red */
}
ul #Button1{
    border:1px solid pink;
    background-color:#ffcccc;
}
ul #Button1:hover{
    border:1px solid red;
    background-color: #ffd4e5;
}
    </style>


 
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Navigation -->
            <ul>
               
                                <li> <a><asp:Label ID="Label1" runat="server" Text="" Class="label1"></asp:Label></a>
</li>
                <li><a href="#dashboard">Dashboard</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="#social-media">Social Media</a></li>
                <li><a href="#counts">Counts</a></li>
                  <li><a href="#Messages">Messages</a></li>
              <li>
                <a> <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" /></a> </li>
                <!-- Add links for other tables -->
            </ul>
            
            <!-- Dashboard Section -->
            <section id="dashboard">
                <h2>Dashboard</h2>
                <!-- Display important statistics, summaries, or overviews -->
                <div>
                    <!-- Example: Display total number of services, social media links, counts, etc. -->
                    <!-- Service Section -->
<div>
    <h3>Total Service </h3>
    <asp:Label ID="lblTotalServiceCount" runat="server"></asp:Label>
</div>

<!-- Social Media Section -->
<div>
    <h3>Total Social Media</h3>
    <asp:Label ID="lblTotalSocialMediaCount" runat="server"></asp:Label>
</div>
<div>
    <h3>Total Count</h3>
    <asp:Label ID="lblTotalCount" runat="server"></asp:Label>
</div>

                    <!-- Add more statis                    tics here -->
                </div>
            </section>

            <!-- Services Section -->
            <section id="services">

                 
        <div>
            <!-- Service Section -->
            <h2>Service Section</h2>
            <div>
                <h3>Add New Service</h3>
                <div>
                     <asp:TextBox ID="txtserviceId" runat="server" placeholder="serviceId"></asp:TextBox>
                    <asp:TextBox ID="txtTitle" runat="server" placeholder="Title"></asp:TextBox>
                    <asp:TextBox ID="txtIcon" runat="server" placeholder="Icon"></asp:TextBox>
                    <asp:TextBox ID="txtDescription" runat="server" placeholder="Description"></asp:TextBox>
                    <asp:Button ID="btnAddService" runat="server" Text="Add Service" OnClick="InsertService" />
                </div>
            </div>
            <br />
            <div>
                <h3>Manage Services</h3>
                <asp:GridView ID="gvServices" runat="server" AutoGenerateColumns="False"
                    OnRowEditing="EditService" OnRowCancelingEdit="CancelEditService" OnRowUpdating="UpdateService"
                    OnRowDeleting="DeleteService" DataKeyNames="serviceId">
                    <Columns>
                        <asp:TemplateField HeaderText="serviceId">
     <ItemTemplate>
         <asp:Label ID="lblserviceId" runat="server" Text='<%# Eval("ServiceId") %>'></asp:Label>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txtEditserviceId" runat="server" Text='<%# Bind("ServiceId") %>'></asp:TextBox>
     </EditItemTemplate>
 </asp:TemplateField>
                        <asp:TemplateField HeaderText="Title">
                            <ItemTemplate>
                                <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEditTitle" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Icon">
                            <ItemTemplate>
                                <asp:Label ID="lblIcon" runat="server" Text='<%# Eval("Icon") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEditIcon" runat="server" Text='<%# Bind("Icon") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("p") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEditDescription" runat="server" Text='<%# Bind("p") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
  
                <!-- Service form for CRUD operations -->
                <!-- Implement CRUD operations for services -->
            </section>

            <!-- Social Media Section -->
           <section id="social-media">
    <div>
        <!-- Social Media Section -->
        <h2>Social Media Section</h2>
        <div>
            <h3>Add New Social Media Link</h3>
            <div>
                <!-- Add social media link form -->
                                     <asp:TextBox ID="txtid" runat="server" placeholder="Id"></asp:TextBox>

                <asp:TextBox ID="txtLink" runat="server" placeholder="Link"></asp:TextBox>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Icon"></asp:TextBox>
                <asp:TextBox ID="txtStyle" runat="server" placeholder="Style"></asp:TextBox>
                <asp:Button ID="btnAddSocialMedia" runat="server" Text="Add Social Media" OnClick="InsertSocialMedia" />
            </div>
        </div>
        <br />
        <div>
            <h3>Manage Social Media Links</h3>
            <asp:GridView ID="gvSocialMedia" runat="server" AutoGenerateColumns="False"
                OnRowEditing="EditSocialMedia" OnRowCancelingEdit="CancelEditSocialMedia" OnRowUpdating="UpdateSocialMedia"
                OnRowDeleting="DeleteSocialMedia" DataKeyNames="id">
                <Columns>
                                           <asp:TemplateField HeaderText="Id">
    <ItemTemplate>
        <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtEditId" runat="server" Text='<%# Bind("Id") %>'></asp:TextBox>
    </EditItemTemplate>
</asp:TemplateField>
                    <asp:TemplateField HeaderText="Link">
                        <ItemTemplate>
                            <asp:Label ID="lblLink" runat="server" Text='<%# Eval("Link") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEditLink" runat="server" Text='<%# Bind("Link") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Icon">
                        <ItemTemplate>
                            <asp:Label ID="lblIcon" runat="server" Text='<%# Eval("Icon") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEditIcon" runat="server" Text='<%# Bind("Icon") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Style">
                        <ItemTemplate>
                            <asp:Label ID="lblStyle" runat="server" Text='<%# Eval("Style") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEditStyle" runat="server" Text='<%# Bind("Style") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</section>


            <!-- Counts Section -->
          <section id="counts">
    <div>
        <!-- Counts Section -->
        <h2>Counts Section</h2>
        <div>
            <h3>Add New Count</h3>
            <div>
                <!-- Add count form -->
                <asp:TextBox ID="textID" runat="server" placeholder="Id"></asp:TextBox>
                <asp:TextBox ID="txtcounticon" runat="server" placeholder="Icon"></asp:TextBox>
                <asp:TextBox ID="txtDataVal" runat="server" placeholder="data-val"></asp:TextBox>
                <asp:TextBox ID="txtP" runat="server" placeholder="p"></asp:TextBox>
                <asp:Button ID="btnAddCount" runat="server" Text="Add Count" OnClick="InsertCount" />
            </div>
        </div>
        <br />
        <div>
            <h3>Manage Counts</h3>
            <asp:GridView ID="gvCounts" runat="server" AutoGenerateColumns="False"
                OnRowEditing="EditCount" OnRowCancelingEdit="CancelEditCount" OnRowUpdating="UpdateCount"
                OnRowDeleting="DeleteCount" DataKeyNames="countId">
                <Columns>
                    <asp:TemplateField HeaderText="countId">
                        <ItemTemplate>
                            <asp:Label ID="lblcountId" runat="server" Text='<%# Eval("countId") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEditcountId" runat="server" Text='<%# Bind("countId") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="countIcon">
                        <ItemTemplate>
                            <asp:Label ID="lblcountIcon" runat="server" Text='<%# Eval("counticon") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEditcountIcon" runat="server" Text='<%# Bind("counticon") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Dataval">
                        <ItemTemplate>
                            <asp:Label ID="lblDataVal" runat="server" Text='<%# Eval("dataval") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEditDataVal" runat="server" Text='<%# Bind("dataval") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="P">
                        <ItemTemplate>
                            <asp:Label ID="lblP" runat="server" Text='<%# Eval("p") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEditP" runat="server" Text='<%# Bind("p") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</section>

<section id="Messages"><div>

    <h2>Message for me</h2>
    <br />
           <asp:GridView ID="GridViewContacts" runat="server" AutoGenerateColumns="False" CssClass="gridview">
               <Columns>
                   <asp:BoundField DataField="Name" HeaderText="Name" />
                   <asp:BoundField DataField="Email" HeaderText="Email" />
                   <asp:BoundField DataField="msg" HeaderText="Message" />
               </Columns>
           </asp:GridView>
       </div></sectio>
 

        </div>
    </form>
</body>
</html>
