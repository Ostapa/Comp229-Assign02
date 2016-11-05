<%@ Page Title="Stapso" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign02._Default" %>

<%-- 
    Ostap Hamarnyk
    300 836 326
--%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    <link href="Content/HomePage.css" rel="stylesheet" type="text/css" />
    <div class="header">
        <div class="container">
            <asp:Button ID="btnToSurvey" Visible="false" OnClick="btnToSurvey_Click" CssClass="surveyButton" Text="Take a Survey" runat="server" /> 
            <a id="scrollDown" href="#about"><img class="arrowDown data-spy" src="Assets/arrowDown.png" alt="Arrow Down" /></a>
        </div>
    </div>
    <div id="about" class="jumbotron">
        <div class="container">
            <article>
                <h1>Stapso</h1>
                <img src="Assets/logo.png" alt="Stapso logo" />
            </article>
            <hr />
            <div >
                <h2>Who are we?</h2>
                <p>Stapso is the developing computer technology company that was found in October 2016.</p>
            </div>
            <hr />
            <div>
                <h2>What we do?</h2>
                <p>Our team of engineers cooperate with scientists to produce innovations in the modern industry of technology.</p>
                <p>Every day we challenge ourselves with a variety of issues customers face in their everyday life. Our purpose
                   is to provide you with the best product that will satisfy all your needs and wishes.</p>
            </div>
            <div>
                <h2>Why do we take survey?</h2>
                <p>Survey - is a perfect way to gather the most critical information about our goods and feedback from the customers. We take into consideration opinion of each customer and apply improvements where needed. 
                <p/>
                <p>Our survey consists of three short sections of questions which make it concise and easy to understand.
                <br />If you have used any of our products, we are happy to invite you to complete the survey and share your experience. </p>
            </div>
            <div><p><a href="https://www.amazon.com/gp/help/customer/display.html?nodeId=468496">Terms & Conditions</a></p></div>
            <asp:Button ID="btnAnotherSurvey" OnClick="btnToSurvey_Click" CssClass="surveyButton" Text="Take a Survey" runat="server" />
        </div>
    </div>
</asp:Content>
