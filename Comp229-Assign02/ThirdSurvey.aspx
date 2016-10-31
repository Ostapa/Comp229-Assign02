<%@ Page Language="C#" MasterPageFile ="~/Site.Master" AutoEventWireup="true" CodeBehind="ThirdSurvey.aspx.cs" Inherits="Comp229_Assign02.ThirdSurvey" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
         <div>
               <h1>Personal Info</h1>
               <hr />
               <h3>Please fill in the following fields to complete the final part of our survey.</h3>
           </div>
           <h4>We just need a a little bit more information based on your previous responses. You're almost done</h4>
           <div class="progress">
               <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100" style="width:33%;" >
               <span class="sr-only">33% Complete (success)</span>
               </div>
           </div>
        <asp:Label ID="firstQ" runat="server" />
        <asp:TextBox ID="txtFirstQ" runat="server" />
        <asp:RequiredFieldValidator ID="firstQReq"
            runat="server" ControlToValidate="txtFirstQ"
            ErrorMessage="Please fill in the field above."
            Display="Dynamic" />
    
        <asp:Label ID="secondQ" runat="server" />
        <asp:TextBox ID="txtSecondQ" runat="server" />
        <asp:RequiredFieldValidator ID="secondQReq"
            runat="server" ControlToValidate="txtSecondQ"
            ErrorMessage="Please fill in the field"
            Display="Dynamic" />
    
        <asp:Label ID="thirdQ" runat="server" />
        <asp:RadioButtonList ID="rblRating" runat="server">
        </asp:RadioButtonList>

        <asp:Label ID="fourthQ" runat="server" />
        <asp:TextBox ID="txtFourthQ" runat="server" />
        <asp:RequiredFieldValidator ID="fourthQReq"
            runat="server" ControlToValidate="txtFourthQ"
            ErrorMessage="Please provide an answer"
            Display="Dynamic" />
    
        <asp:Label ID="fifthQ" runat="server" />
        <asp:TextBox ID="txtFifthQ" runat="server" />
        <asp:RequiredFieldValidator ID="fifthQReq"
            runat="server" ControlToValidate="txtfifthQ"
            ErrorMessage="This field is required"
            Display="Dynamic" />

        <asp:Button ID="btnSubmit" Text="Finish" OnClick="btnSubmit_Click" runat="server" />
    </div>
</asp:Content>
