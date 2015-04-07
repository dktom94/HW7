
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Response.Write("<script>alert('Item Deleted')</script>")
        Server.Transfer("./Default.aspx")
    End Sub

   

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Write("<script>alert('Item Updated')</script>")
        Server.Transfer("./Default.aspx")
    End Sub
End Class
