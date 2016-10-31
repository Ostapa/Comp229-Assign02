<%@ Page Title="Survey" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Comp229_Assign02.Survey" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div>
            <h1>Personal Info</h1>
            <hr />
            <h3>Please fill in the following fields to complete the first part of our survey.</h3>
        </div>
        <h4>Here's your progress</h4>
        <div class="progress">
            
            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="2" aria-valuemax="100" style="width:2%;" >
                <span class="sr-only">40% Complete (success)</span>
            </div>
        </div>
        
        <div class="form-group">
            <p><asp:Label ID="firstNameLbl" Text="First Name" runat="server" /></p>
            <p><asp:TextBox ID="txtFirstName" placeholder="John" runat="server" /></p>
            <asp:RequiredFieldValidator ID="firstNameReq" 
                runat="server" ControlToValidate="txtFirstName"
                ErrorMessage="Please enter your first name" 
                Display="Dynamic"/>
            <p><asp:Label ID="lastNameLbl" Text="Last Name" runat="server" /></p>
            <p><asp:TextBox ID="txtLastName" placeholder="Doe" runat="server" /></p>
            <asp:RequiredFieldValidator ID="lastNameReq"
                runat="server" ControlToValidate="txtLastName"
                ErrorMessage="Please enter your last name" 
                Display="Dynamic"/>
            <p><asp:Label ID="ageLbl" Text="Age" runat="server" /></p>
            <p><asp:DropDownList ID="ddlAge" runat="server">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList></p>
            <asp:RequiredFieldValidator ID="ddlAgeReq"
                runat="server" ControlToValidate="ddlAge"
                ErrorMessage="Please select your age"
                Display="Dynamic" />
            <p><asp:Label ID="genderLbl" Text="Gender" runat="server" /></p>
            <p><asp:RadioButtonList ID="rblGender" runat="server">
                    <asp:ListItem Value="male">Male</asp:ListItem>
                    <asp:ListItem Value="female">Female</asp:ListItem>
                    <asp:ListItem Value="other">Other</asp:ListItem>
               </asp:RadioButtonList>    
            </p>
            <p>
            <asp:RequiredFieldValidator ID="genderReq" 
                runat="server" ControlToValidate="rblGender"
                ErrorMessage="Please select your gender" 
                Display="Dynamic" />
            <p><asp:Label ID="emailLbl" Text="Email" runat="server" /></p>
            <p><asp:TextBox ID="txtEmail" placeholder="j.doe@mail.com" runat="server" /></p>
            <%-- if "\_" is included in regular expression it throws an argument exception --%>
            <asp:RegularExpressionValidator ID="emailRev"
                runat="server" ControlToValidate="txtEmail"
                ValidationExpression="^[a-zA-Z0-9]+([\w\.\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\}\~\|]+)*@[a-zA-Z0-9]+(\.[a-zA-Z0-9\-]+)*(\.[a-z]{2,6})$" 
                ErrorMessage="Please enter a valid email" 
                Display="Dynamic" />
            <asp:RequiredFieldValidator ID="emailReq"
                runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Please enter an email" 
                Display="Dynamic" />
            <p><asp:Label ID="phoneLbl" Text="Phone" runat="server" /></p>
            <p><asp:TextBox ID="txtPhone" placeholder="(647)-647-6477" runat="server" /></p>
            <asp:RegularExpressionValidator ID="phoneRev"
                runat="server" ControlToValidate="txtPhone"
                ValidationExpression="(\+[1]\s?)?(\(|\-|\.)?[0-9]{3}(\)|\-|\.)[.-]?[0-9]{3}[.-]?[0-9]{4}"
                ErrorMessage="Please enter a valid phone. For example (647)-123-1234"
                Display="Dynamic" />
            <asp:RequiredFieldValidator ID="phoneReq"
                runat="server" ControlToValidate="txtPhone"
                ErrorMessage="Please enter your phone" 
                Display="Dynamic" />
            <p><asp:Label ID="countryLbl" Text="Country" runat="server" /></p>
            <p><asp:RadioButtonList ID="rblCountry" runat="server">
                    <asp:ListItem Value="canada">Canada</asp:ListItem>
                    <asp:ListItem Value="usa">USA</asp:ListItem>
               </asp:RadioButtonList>
            </p>
            <asp:RequiredFieldValidator ID="countryReq"
                runat="server" ControlToValidate="rblCountry"
                ErrorMessage="Please select your country"
                Display="Dynamic" />
            <p><asp:Button ID="btnSubmit" Text="Next Page > " onclick="btnSubmit_Click" runat="server" /></p>
        </div>
    </div>
</asp:Content>

