<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Comp229_Assign02.Contact" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="txtName" placeholder="Name" runat="server" />
    <asp:RequiredFieldValidator ID="nameReq" 
        runat="server" ControlToValidate="txtName"
        ErrorMessage="Please enter your name"
        Display="Dynamic" />
    <p><asp:TextBox ID="txtEmail" placeholder="Email" runat="server" /></p>
    <asp:RequiredFieldValidator ID="emailReq"
        runat="server" ControlToValidate="txtEmail"
        ErrorMessage="Please enter an email" 
        Display="Dynamic" />
    <p><asp:Label ID="phoneLbl" placeholder="Phone" runat="server" /></p>
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
    <p><asp:TextBox ID="txtComments" placeholder="Type here your comments..." Columns="10" Rows="5" runat="server" /></p>
    <p><asp:Button ID="sendContact" Text="Send" OnClick="sendContact_Click" runat="server" /></p>
</asp:Content>
