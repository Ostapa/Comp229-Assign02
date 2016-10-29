<%@ Page Title="Stapso" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign02._Default" %>


<%-- 
a.	identify the brand.
b.	provide a link to the survey page.
c.	explain what the survey is about. 
d.	include appropriate disclaimers and privacy statements (you may link to an external site’s disclaimer, like Microsoft or Amazon). 
e.	load by default when your site is run in Visual Studio.
--%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    <link href="Content/HomePage.css" rel="stylesheet" type="text/css" />
    <div class="header">
        <div class="container">
            <!-- review this later and find better way -->
            <form action="Survey.aspx">
                <button type="submit" class="surveyButton">Take a Survey</button>
            </form>
            
            <img class="arrowDown data-spy" src="Assets/arrowDown.png" alt="Arrow Down" />
        </div>
    </div>
    <div class="jumbotron">
        <div class="container">
            <article>
                <h1>Stapso</h1>
                <img src="Assets/logo.png" alt="Stapso logo" />
            </article>
            <hr />
            <div>
                <h2>Who are we?</h2>
                <p>Stapso is the developing computer technology company that was found in October 2016. </p>
            </div>
            <hr />
            <div>
                <h2>What do we do?</h2>
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
        </div>
    </div>
</asp:Content>
