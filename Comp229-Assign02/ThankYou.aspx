<%@ Page Title="Thank You" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="Comp229_Assign02.ThankYou" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="jumbotron vertical-center">
        <div class="container">
            <h1 class="display-3">Thank you for completing our survey!</h1>
            <div class="progress">
                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%;" >
                    <span class="sr-only">33% Complete (success)</span>
                </div>
            </div>
            <div>
                <p class="lead">Here is a short summary of your survey</p>
                <h1 class="display-2">Personal Info:</h1>
                <asp:Label ID="personalInfo" CssClass="form-control-label" runat="server" />
                <br />
                <h1 class="display-2">Customer Feedback:</h1>
                <asp:Label ID="customerFeedback" CssClass="form-control-label" runat="server" />
                <br />
                <h1 class="display-2">Additional Info</h1>
                <asp:Label ID="additionalInfo" CssClass="form-control-label" runat="server" />

  
                
            </div>
        </div>
    </div>
    
</asp:Content>

