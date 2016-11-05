<%@ Page Title="Survey" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Comp229_Assign02.Survey" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/Survey.css" rel="stylesheet" type="text/css" />
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
        <div class="survey-wrapper">
            <div class="form-group ">  <%-- if no time to implement has-danger, need to remove it --%>
                <asp:Label ID="firstNameLbl" CssClass="form-control-label" Text="*First Name" runat="server" />
                <asp:TextBox ID="txtFirstName" Placeholder="John" runat="server"
                    CssClass="form-control form-control-lg"  />
                <asp:RequiredFieldValidator ID="firstNameReq" CssClass=""
                    runat="server" ControlToValidate="txtFirstName"
                    SetFocusOnError="True"
                    ErrorMessage="Please enter your first name" 
                    Display="Dynamic" ForeColor="Red" />
                <asp:RegularExpressionValidator ID="fNameRev"
                    runat="server" ControlToValidate="txtFirstName"
                    ValidationExpression ="^[a-zA-Z]+(\-[a-zA-Z]+)?$"
                    ErrorMessage="Please provide a real first name"
                    ForeColor="Red" />
            </div>
        
            <div class="form-group">
                <asp:Label ID="lastNameLbl" CssClass="form-control-label" Text="*Last Name" runat="server" />
                <asp:TextBox ID="txtLastName" CssClass="form-control form-control-lg" Placeholder="Doe" runat="server" />
                <asp:RequiredFieldValidator ID="lastNameReq"
                    runat="server" ControlToValidate="txtLastName"
                    ErrorMessage="Please enter your last name" 
                    Display="Dynamic" ForeColor="Red" />
                <asp:RegularExpressionValidator ID="lNameRev"
                    runat="server" ControlToValidate="txtLastName"
                    ValidationExpression ="^[a-zA-Z-]+(\-[a-zA-Z]+)?$"
                    ErrorMessage="Please provide a real last name"
                    ForeColor="Red" />
            </div>

            <div class="form-group">
                <asp:Label ID="ageLbl" CssClass="form-control-label" Text="*Age" runat="server" />
                <asp:DropDownList ID="ddlAge" CssClass="form-control form-control-ddl" runat="server">
                    <asp:ListItem ></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="ddlAgeReq"
                    runat="server" ControlToValidate="ddlAge"
                    ErrorMessage="Please select your age"
                    ForeColor="Red" />
            </div>

            <div class="form-check-input">
                <asp:Label ID="genderLbl" Text="*Gender" CssClass="form-control-label" runat="server" />
                <asp:RadioButtonList CssClass="form-check-inline" ID="rblGender"  runat="server">
                    <asp:ListItem Value="Male" Text="Male" />
                    <asp:ListItem Value="Female" Text="Female" />
                    <asp:ListItem Value="other" Text="Other" />
                </asp:RadioButtonList>    
                <asp:RequiredFieldValidator ID="genderReq" 
                    runat="server" ControlToValidate="rblGender"
                    ErrorMessage="Please select your gender" 
                    ForeColor="Red" />
            </div>

            <div class="form-group">
                    <%--  ValidationExpression="^[a-zA-Z0-9]+([a-zA-Z0-9\_\.\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\}\~\|]+)*[a-zA-Z0-9]+@[a-zA-Z0-9]+(\.[a-zA-Z0-9\-]+)*(\.[a-z]{2,6})$" 
                if "\_" is included in regular expression it throws an argument exception  --%>
                <asp:Label ID="emailLbl" CssClass="form-control-label" Text="*Email" runat="server" />
                <asp:TextBox ID="txtEmail" Placeholder="j.doe@mail.com" CssClass="form-control form-control-lg" runat="server" />
                <asp:RegularExpressionValidator ID="emailRev"
                    runat="server" ControlToValidate="txtEmail"
                    ValidationExpression="^[a-zA-Z0-9]+([\w\.!#$%&'*+-/=?^`{}~|]+)*[a-zA-Z0-9]+@[a-zA-Z0-9]+(\.[a-zA-Z0-9\-]+)*(\.[a-z]{2,6})$" 
                    ErrorMessage="Please enter a valid email" 
                    Display="Dynamic" ForeColor="Red" />
                <asp:RequiredFieldValidator ID="emailReq"
                    runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Please enter an email" 
                    ForeColor="Red" />
            </div>

            <div class="form-group">
                <asp:Label ID="phoneLbl" CssClass="form-control-label" Text="*Phone" runat="server" />
                <asp:TextBox ID="txtPhone" Placeholder="(647)647-6477" CssClass="form-control form-control-lg" runat="server" />
                <asp:RegularExpressionValidator ID="phoneRev"
                    runat="server" ControlToValidate="txtPhone"
                    ValidationExpression="(\+[1]\s?)?(\(|\-|\.)?[0-9]{3}(\)|\-|\.)[.-]?[0-9]{3}[.-]?[0-9]{4}"
                    ErrorMessage="Please enter a valid phone. For example (647)123-1234"
                    Display="Dynamic" ForeColor="Red" />
                <asp:RequiredFieldValidator ID="phoneReq"
                    runat="server" ControlToValidate="txtPhone"
                    ErrorMessage="Please enter your phone" 
                    Display="Static" ForeColor="Red" />
            </div>

            <div class="form-check-input">
                <asp:Label ID="countryLbl" CssClass="form-control-label" Text="*Country" runat="server" />
                <asp:RadioButtonList ID="rblCountry" CssClass="form-check-inline" runat="server">
                    <asp:ListItem Value="Canada" Text="Canada" />
                    <asp:ListItem Value="USA" Text="USA" />
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="countryReq"
                    runat="server" ControlToValidate="rblCountry"
                    ErrorMessage="Please select your country"
                    ForeColor="Red" />
            </div>
            <asp:Button ID="btnSubmit" CssClass="btn btn-primary" Text="Next Page > " onclick="btnSubmit_Click" runat="server" />
        </div>  
    </div>
</asp:Content>

