﻿
Partial Class admin_Default3
    Inherits System.Web.UI.Page

    
    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Write("<script>alert('Item Added')</script>")
        Server.Transfer("./Default.aspx")
    End Sub

    Protected Sub DetailsView1_PageIndexChanging(sender As Object, e As DetailsViewPageEventArgs) Handles DetailsView1.PageIndexChanging

    End Sub
End Class
