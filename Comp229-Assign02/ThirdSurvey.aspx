<%@ Page Language="C#" MasterPageFile ="~/Site.Master" AutoEventWireup="true" CodeBehind="ThirdSurvey.aspx.cs" Inherits="Comp229_Assign02.ThirdSurvey" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/Survey.css" rel="stylesheet" type="text/css" />
    <div class="container">
        <div>
            <h1>Additional Info</h1>
            <hr />
            <h3>Please fill in the following fields to complete the final part of our survey.</h3>
        </div>
        <h4>We just need a a little bit more information based on your previous responses. You're almost done!</h4>
        <div class="progress">
            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100" style="width:66%;" >
            <span class="sr-only">66% Complete (success)</span>
            </div>
        </div>
        <div class="survey-wrapper">
            <div class="form-group">
                <asp:Label ID="firstQ" CssClass="form-control-label" runat="server" />
                <asp:TextBox ID="txtFirstQ" CssClass="form-control form-control-lg" runat="server" />
                <asp:RequiredFieldValidator ID="firstQReq"
                    runat="server" ControlToValidate="txtFirstQ"
                    ErrorMessage="Please fill in the field above."
                    ForeColor="Red" />
            </div>
        
            <div class="form-group">
                <asp:Label ID="secondQ" CssClass="form-control-label" runat="server" />
                <asp:TextBox ID="txtSecondQ" CssClass="form-control form-control-lg" runat="server" />
                <asp:RequiredFieldValidator ID="secondQReq"
                    runat="server" ControlToValidate="txtSecondQ"
                    ErrorMessage="Please provide an answer"
                    ForeColor="Red" />
            </div>
            <div class="form-check-input">
                <asp:Label ID="ratingLbl" CssClass="form-control-label" runat="server" />
                <asp:RadioButtonList ID="rblRating" CssClass="form-control-grid" runat="server">
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="ratingReq"
                    runat="server" ControlToValidate="rblRating"
                    ErrorMessage = "Please rate our devices"
                    ForeColor="Red" />
            </div>
            <div class="form-group">
                <asp:Label ID="fourthQ" CssClass="form-control-label" runat="server" />
                <asp:TextBox ID="txtFourthQ" Rows="4" TextMode="Multiline" CssClass="form-control form-control-lg" runat="server" />
                <asp:RequiredFieldValidator ID="fourthQReq"
                    runat="server" ControlToValidate="txtFourthQ"
                    ErrorMessage="Please provide an answer"
                    ForeColor="Red" />
            </div>
            <div class="form-group">
                <asp:Label ID="fifthQ" CssClass="form-control-label" runat="server" />
                <asp:TextBox ID="txtFifthQ" Rows="4" TextMode="MultiLine" CssClass="form-control form-control-lg" runat="server" />
                <asp:RequiredFieldValidator ID="fifthQReq"
                    runat="server" ControlToValidate="txtfifthQ"
                    ErrorMessage="This field is required"
                    ForeColor="Red" />
            </div>
            <asp:Button ID="btnPrevious" CssClass="btn btn-primary" CausesValidation="false" Text=" < Previous Page" OnClick="btnPrevious_Click" runat="server" />
            <asp:Button ID="btnSubmit" CssClass="btn btn-success" Text="Finish" OnClick="btnSubmit_Click" runat="server" />
        </div>
    </div>
</asp:Content>
