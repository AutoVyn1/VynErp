﻿'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated from a template.
'
'     Manual changes to this file may cause unexpected behavior in your application.
'     Manual changes to this file will be overwritten if the code is regenerated.
' </auto-generated>
'------------------------------------------------------------------------------

Imports System
Imports System.Data.Entity
Imports System.Data.Entity.Infrastructure

Partial Public Class OM02DB21Entities
    Inherits DbContext

    Public Sub New()
        MyBase.New("name=OM02DB21Entities")
    End Sub

    Protected Overrides Sub OnModelCreating(modelBuilder As DbModelBuilder)
        Throw New UnintentionalCodeFirstException()
    End Sub

    Public Overridable Property WA_LINK() As DbSet(Of WA_LINK)
    Public Overridable Property user_cloud() As DbSet(Of user_cloud)

End Class
