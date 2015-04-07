<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .cssdetailsview {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ddkesterHW7_DogBreed %>" DeleteCommand="DELETE FROM [ddkesterHW7_DogBreed] WHERE [BreedID] = @BreedID" InsertCommand="INSERT INTO [ddkesterHW7_DogBreed] ([BreedName], [Size], [Temperament], [Coat], [Classification], [Longevity], [Image]) VALUES (@BreedName, @Size, @Temperament, @Coat, @Classification, @Longevity, @Image)" SelectCommand="SELECT * FROM [ddkesterHW7_DogBreed] WHERE (([BreedID] = @BreedID) AND ([BreedID] = @BreedID2))" UpdateCommand="UPDATE [ddkesterHW7_DogBreed] SET [BreedName] = @BreedName, [Size] = @Size, [Temperament] = @Temperament, [Coat] = @Coat, [Classification] = @Classification, [Longevity] = @Longevity, [Image] = @Image WHERE [BreedID] = @BreedID">
            <DeleteParameters>
                <asp:Parameter Name="BreedID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BreedName" Type="String" />
                <asp:Parameter Name="Size" Type="String" />
                <asp:Parameter Name="Temperament" Type="String" />
                <asp:Parameter Name="Coat" Type="String" />
                <asp:Parameter Name="Classification" Type="String" />
                <asp:Parameter Name="Longevity" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="BreedID" QueryStringField="BreedID" Type="Int32" />
                <asp:QueryStringParameter Name="BreedID2" QueryStringField="BreedID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="BreedName" Type="String" />
                <asp:Parameter Name="Size" Type="String" />
                <asp:Parameter Name="Temperament" Type="String" />
                <asp:Parameter Name="Coat" Type="String" />
                <asp:Parameter Name="Classification" Type="String" />
                <asp:Parameter Name="Longevity" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="BreedID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="BreedID" DataSourceID="SqlDataSource1" Height="50px" Width="343px"
            CssClass="cssdetailsview"
              HeaderStyle-CssClass="header"
              FieldHeaderStyle-CssClass="fieldheader"
              ItemStyle-CssClass="item"
              AlternatingRowStyle-CssClass="altrow"
              CommandRowStyle-CssClass="command"
              PagerStyle-CssClass="pager">
<AlternatingRowStyle CssClass="altrow"></AlternatingRowStyle>

<CommandRowStyle CssClass="command"></CommandRowStyle>

<FieldHeaderStyle CssClass="fieldheader"></FieldHeaderStyle>
            <Fields>
                <asp:BoundField DataField="BreedName" HeaderText="Breed Name" SortExpression="BreedName" />
                <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                <asp:BoundField DataField="Temperament" HeaderText="Temperament" SortExpression="Temperament" />
                <asp:BoundField DataField="Coat" HeaderText="Coat" SortExpression="Coat" />
                <asp:BoundField DataField="Classification" HeaderText="Classification" SortExpression="Classification" />
                <asp:BoundField DataField="Longevity" HeaderText="Longevity" SortExpression="Longevity" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>

<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>
    </asp:DetailsView>

    </asp:Content>

