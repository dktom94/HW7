<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    

    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Admistrative View"></asp:Label>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g4ConnectionString %>" DeleteCommand="DELETE FROM [ddkesterHW7_DogBreed] WHERE [BreedID] = @BreedID" InsertCommand="INSERT INTO [ddkesterHW7_DogBreed] ([BreedName], [Size], [Temperament], [Coat], [Classification], [Longevity], [Image]) VALUES (@BreedName, @Size, @Temperament, @Coat, @Classification, @Longevity, @Image)" SelectCommand="SELECT * FROM [ddkesterHW7_DogBreed]" UpdateCommand="UPDATE [ddkesterHW7_DogBreed] SET [BreedName] = @BreedName, [Size] = @Size, [Temperament] = @Temperament, [Coat] = @Coat, [Classification] = @Classification, [Longevity] = @Longevity, [Image] = @Image WHERE [BreedID] = @BreedID">
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
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="BreedID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="BreedName" HeaderText="BreedName" SortExpression="BreedName" />
                <asp:HyperLinkField InsertVisible="False" Text="Select" DataNavigateUrlFields="BreedID" DataNavigateUrlFormatString="Default2.aspx?BreedID={0}" />
            </Columns>
        </asp:GridView>

    </asp:Content>

