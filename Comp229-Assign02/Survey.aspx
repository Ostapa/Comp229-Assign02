<%@ Page Title="Survey" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Comp229_Assign02.Survey" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div>
            <h1>Survey</h1>
            <hr />
            <h3>Please fill in the following fields to complete the first part of our survey.</h3>
        </div>
        <h4>Here's your progress</h4>
        <div class="progress">
            
            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="2" aria-valuemax="100" style="width:2%;" >
                <span class="sr-only">40% Complete (success)</span>
            </div>
        </div>
        
        <div class="container">
            <p><asp:Label ID="firstNameLbl" Text="First Name" runat="server" /></p>
            <p><asp:TextBox ID="firstNameTextBox" runat="server" /></p>
            <p><asp:Label ID="lastNameLbl" Text="Last Name" runat="server" /></p>
            <p><asp:TextBox ID="lastNameTextBox" runat="server" /></p>
            <p><asp:Label ID="ageLbl" Text="Age" runat="server" /></p>
            <p><asp:DropDownList ID="ageLst" runat="server">
            </asp:DropDownList></p>
            <p><asp:Label ID="genderLbl" Text="Gender" runat="server" /></p>
            <p><asp:RadioButton ID="maleRadioBtn" Text="Male" GroupName="gender" runat="server"  /></p>
            <p><asp:RadioButton ID="femaleRadioBtn" Text="Female" GroupName="gender" runat="server" /></p>
            <p><asp:RadioButton ID="otherRadioBtn" Text="Other" GroupName="gender" runat="server" /></p>
            <p><asp:Label ID="emailLbl" Text="Email" runat="server" /></p>
            <p><asp:TextBox ID="emailTextBox" TextMode="email" runat="server" /></p>
            <p><asp:Label ID="phoneLbl" Text="Phone" runat="server" /></p>
            <p><asp:TextBox ID="phoneTextBox" TextMode="phone" runat="server" /></p>
            <p><asp:Label ID="countryLbl" Text="Country" runat="server" /></p>
            <p><asp:RadioButton ID="canadaRadioBtn" Text="Canada" GroupName="country" runat="server" /></p>
            <p><asp:RadioButton ID="usaRadioBtn" Text="USA" GroupName="country" runat="server" /></p>
            <p><asp:Button Text="Next Page > " runat="server"/></p>
        </div>
    </div>
</asp:Content>

