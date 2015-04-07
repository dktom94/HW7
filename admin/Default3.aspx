<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default3.aspx.vb" Inherits="admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ddkesterHW7_DogBreed %>" DeleteCommand="DELETE FROM [ddkesterHW7_DogBreed] WHERE [BreedID] = @BreedID" InsertCommand="INSERT INTO [ddkesterHW7_DogBreed] ([BreedName], [Size], [Temperament], [Coat], [Classification], [Longevity], [Image]) VALUES (@BreedName, @Size, @Temperament, @Coat, @Classification, @Longevity, @Image)" SelectCommand="SELECT * FROM [ddkesterHW7_DogBreed]" UpdateCommand="UPDATE [ddkesterHW7_DogBreed] SET [BreedName] = @BreedName, [Size] = @Size, [Temperament] = @Temperament, [Coat] = @Coat, [Classification] = @Classification, [Longevity] = @Longevity, [Image] = @Image WHERE [BreedID] = @BreedID">
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
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="BreedID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="BreedName" HeaderText="Breed Name" SortExpression="BreedName" />
            <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
            <asp:BoundField DataField="Temperament" HeaderText="Temperament" SortExpression="Temperament" />
            <asp:BoundField DataField="Coat" HeaderText="Coat" SortExpression="Coat" />
            <asp:BoundField DataField="Classification" HeaderText="Classification" SortExpression="Classification" />
            <asp:BoundField DataField="Longevity" HeaderText="Longevity" SortExpression="Longevity" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

