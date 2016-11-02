<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="SecondSurvey.aspx.cs" Inherits="Comp229_Assign02.SecondSurvey" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/Survey.css" rel="stylesheet" type="text/css" />
   <div class="container">
       <div>
           <h1>Customer Feedabck</h1>
           <hr />
           <h3>Please fill in the following fields to complete the second part of our survey.</h3>
       </div>
       <h4>Here's your progress</h4>
       <div class="progress">
           <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100" style="width:33%;" >
           <span class="sr-only">33% Complete (success)</span>
           </div>
       </div>

       <div class="survey-wrapper">
       <%-- even though, there is no login form, I assume that the user is allowed to take survey only if he is the customer of our company --%>
            <div class="form-check-input">
                <asp:Label ID="productsOwnedLbl" CssClass="form-control-label" 
                    Text="What kind of product(s) do you own?" runat="server"  />
                <asp:CheckBoxList ID="cblProductsOwned" CssClass="form-check-grid" runat="server">
                    <asp:ListItem Value="Desktop" Text="Desktop" />
                    <asp:ListItem Value="Laptop" Text="Laptop" />
                    <asp:ListItem Value="Tablet" Text="Tablet" />
                    <asp:ListItem Value="Smartphone" Text="Smartphone" />
                </asp:CheckBoxList>
                <asp:CustomValidator ID="cvProductsOwned" 
                    runat="server" ControlToValidate=""
                    OnServerValidate="CheckBoxRequired_Validate"
                    ErrorMessage="Please select at least one product" 
                    Display="Static" ForeColor="Red" /> 
            </div>
            <div class="form-check-input">
                <asp:Label ID="productPurposeLbl" CssClass="form-control-label"
                    Text="For what purpose did you buy our product(s)?" runat="server" />
                <asp:RadioButtonList ID="rblProductPurpose" CssClass="form-check-inline" runat="server">
                    <asp:ListItem Value="Personal" Text="Personal" />
                    <asp:ListItem Value="Business" Text="Business" />
                    <asp:ListItem Value="Studying" Text="Studying" />
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="productPurposeReq" 
                    runat="server" ControlToValidate="rblProductPurpose"
                    ErrorMessage="Please select the purpose of buying our product" 
                    Display="Static" ForeColor="Red" />
            </div>
            <div class="form-check-input" >
                <asp:Label ID="deviceUsageLbl" CssClass="form-control-label"
                    Text="How often do you use our devices?" runat="server" />
                <asp:RadioButtonList ID="rblDeviceUsage" CssClass="form-check-grid"  runat="server">
                    <asp:ListItem Value="1" Text="Never" />
                    <asp:ListItem Value="2" Text="Seldom" />
                    <asp:ListItem Value="3" Text="Sometimes" />
                    <asp:ListItem Value="4" Text="Often" />
                    <asp:ListItem Value="5" Text="Very often" />
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="deviceUsageReq"
                    runat="server" ControlToValidate="rblDeviceUsage"
                    ErrorMessage="Please select one of the options"
                    Display="Static" ForeColor="Red" />
            </div>
            <div class="form-check-input">
                <asp:Label ID="satisfiedNeedsLbl" CssClass="form-control-label"
                    Text="Do they completely satisfy your needs?" runat="server" />
                <asp:RadioButtonList ID="rblSatisfiedNeeds" CssClass="form-check-inline" runat="server">
                    <asp:ListItem Value="Yes" Text="Yes" />
                    <asp:ListItem Value="No" Text="No" />
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="satisfiedNeedsReq"
                    runat="server" ControlToValidate="rblSatisfiedNeeds"
                    ErrorMessage="Please select a response"
                    Display="Static" ForeColor="Red" />
            </div>
            <%-- prof suggested to use validation groups --%>
            <div class="form-check-input">
                <asp:Label ID="featuresLbl" CssClass="form-control-label"
                    Text="What features do you find the most useful?" runat="server" />
                <asp:CheckBoxList ID="cblFeatures" CssClass="form-check-grid" runat="server">
                    <asp:ListItem Value="Efficiency" Text="Efficiency" />
                    <asp:ListItem Value="Design" Text="Design" />
                    <asp:ListItem Value="User Interface" Text="User Interface" />
                    <asp:ListItem Value="Integrity" Text="Integrity" />
                    <asp:ListItem Value="Perfomance" Text="Perfomance" />
                    <asp:ListItem Value="Accessability" Text="Accessability" />
                </asp:CheckBoxList>
                <asp:CustomValidator ID="cvFeatures" 
                    runat="server" ControlToValidate=""
                    ErrorMessage = "Please choose at least one feature"
                    OnServerValidate="CheckBoxRequired_Validate"
                    ForeColor="Red" />
            </div>
       </div>
       <asp:Button ID="secondBtnSubmit" CssClass="btn btn-primary" Text="Next Page > " onclick="btnSubmit_Click" runat="server" />
    </div>
</asp:Content>