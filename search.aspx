<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ddkesterHW7_DogBreed %>" SelectCommand="SELECT * FROM [ddkesterHW7_DogBreed]"></asp:SqlDataSource>
    <br />
    <br />


<% If Not IsPostBack Then%>
Search for a breed by name:&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
<% Else%>
Search for another breed by name:&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True"></asp:TextBox>
<br />
<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BreedID" DataSourceID="SqlDataSource1"
        PageSize="52" 
            Gridlines="None"
            CssClass="cssgridview"
            AlternatingRowStyle-CssClass="alt"
            PagerStyle-CssClass="pgr">
        <Columns>
            <asp:BoundField DataField="BreedID" HeaderText="BreedID" InsertVisible="False" ReadOnly="True" SortExpression="BreedID" />
            <asp:BoundField DataField="BreedName" HeaderText="BreedName" SortExpression="BreedName" />
            <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
            <asp:BoundField DataField="Temperament" HeaderText="Temperament" SortExpression="Temperament" />
            <asp:BoundField DataField="Coat" HeaderText="Coat" SortExpression="Coat" />
            <asp:BoundField DataField="Classification" HeaderText="Classification" SortExpression="Classification" />
            <asp:BoundField DataField="Longevity" HeaderText="Longevity" SortExpression="Longevity" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
        </Columns>
    </asp:GridView>
<% End If %>

</asp:Content>

