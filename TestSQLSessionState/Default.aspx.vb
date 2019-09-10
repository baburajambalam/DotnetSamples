Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Session("Before") Is Nothing Then
            Session("Before") = 0
        End If
        If Session("AfterIncrement") Is Nothing Then
            Session("AfterIncrement") = 0
        End If
        Session("Before") = Session("AfterIncrement")
        Session("AfterIncrement") = CInt(Session("AfterIncrement")) + 1

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Session.Abandon()

    End Sub
End Class