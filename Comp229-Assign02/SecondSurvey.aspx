<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="SecondSurvey.aspx.cs" Inherits="Comp229_Assign02.SecondSurvey" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <div class="container">
       <div>
           <h1>Personal Info</h1>
           <hr />
           <h3>Please fill in the following fields to complete the second part of our survey.</h3>
       </div>
       <h4>Here's your progress</h4>
       <div class="progress">
           <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100" style="width:33%;" >
           <span class="sr-only">33% Complete (success)</span>
           </div>
       </div>
       <%-- even though, there is no login form, I assume that the user is allowed to take survey only if he is the customer of our company --%>
       <asp:Label ID="productsOwnedLbl" Text="What kind of product(s) do you own(ed)?" runat="server"  />
       <asp:CheckBoxList ID="cblProductsOwned" runat="server">
           <asp:ListItem Value="PC" Text="PC" />
           <asp:ListItem Value="Laptop" Text="Laptop" />
           <asp:ListItem Value="Tablet" Text="Tablet" />
           <asp:ListItem Value="Smartphone" Text="Smartphone" />
       </asp:CheckBoxList>
       <%-- <asp:CustomValidator ID="cvProductsOwned" 
           runat="server" ControlToValidate="cblProductsOwned"
           OnServerValidate="CheckBoxRequired_Validate"
           ErrorMessage="Please select at least one product"
           Display="Dynamic" /> --%>

       <asp:Label ID="productPurposeLbl" Text="For what purpose did you buy our product(s)?" runat="server" />
       <asp:RadioButtonList ID="rblProductPurpose" runat="server">
           <asp:ListItem Value="Personal" Text="Personal" />
           <asp:ListItem Value="Business" Text="Business" />
           <asp:ListItem Value="Studying" Text="Studying" />
       </asp:RadioButtonList>
       <asp:RequiredFieldValidator ID="productPurposeReq" 
           runat="server" ControlToValidate="rblProductPurpose"
           ErrorMessage="Please select the purpose of buying our product" 
           Display="Dynamic" />
       <asp:Label ID="deviceUsageLbl" Text="How often do you use our devices?" runat="server" />
       <asp:TextBox ID="deviceUsageRange" type="range" min="1" max="5" runat="server" />
       <!-- oNever-----oSeldom-----oSometimes-----oOften-----oVery often --> 

       <asp:Label ID="satisfiedNeedsLbl" Text="Do they completely satisfy your needs?" runat="server" />
       <asp:RadioButtonList ID="rblSatisfiedNeeds" runat="server">
           <asp:ListItem Value="Yes" Text="Yes" />
           <asp:ListItem Value="No" Text="No" />
       </asp:RadioButtonList>
       <asp:RequiredFieldValidator ID="satisfiedNeedsReq"
           runat="server" ControlToValidate="rblSatisfiedNeeds"
           ErrorMessage="Please select a response"
           Display="Dynamic" />
        
       <asp:Label ID="featuresLbl" Text="What features do you find the most useful?" runat="server" />
       <asp:CheckBoxList ID="cblFeatures" runat="server">
           <asp:ListItem Value="Efficiency" Text="Efficiency" />
           <asp:ListItem Value="Design" Text="Design" />
           <asp:ListItem Value="User Interface" Text="User Interface" />
           <asp:ListItem Value="Integrity" Text="Integrity" />
           <asp:ListItem Value="Perfomance" Text="Perfomance" />
           <asp:ListItem Value="Accessability" Text="Accessability" />
       </asp:CheckBoxList>
       <%-- Add Custom Validation control --%>

       <asp:Button ID="secondBtnSubmit" Text="Next Page > " onclick="btnSubmit_Click" runat="server" />
    </div>
</asp:Content>