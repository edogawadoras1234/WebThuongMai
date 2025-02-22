﻿<%@ Page Title="Sách" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="danhsach.aspx.cs" Inherits="BookShopOnline.BookList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <body style="background-image:url(../Images/backg.png)"> 
      <section style="margin-top:100px">
         <div>
         <hgroup>
         <h2><%: Page.Title %></h2>
         </hgroup>
         <asp:ListView ID="bookList" runat="server" DataKeyNames="MaSach" GroupItemCount="4" ItemType="BookShopOnline.Models.Book" SelectMethod="GetBooks">
         <EmptyDataTemplate>
             <table >
                 <tr>
                     <td>No data was returned.</td>
                 </tr>
             </table>
         </EmptyDataTemplate>
         <EmptyItemTemplate>
         <td/>
         </EmptyItemTemplate>
         <GroupTemplate>
             <tr id="itemPlaceholderContainer" runat="server">
             <td id="itemPlaceholder" runat="server"></td>
          </tr>
         </GroupTemplate>
         <ItemTemplate>
              <td runat="server">
                  <table>
                     <tr>
                     <td>
                         <a href="BookDetails.aspx?bookID=<%#:Item.MaSach%>">
                         <img src ="/Images/<%#:Item.HinhAnh%>" width="150" height="225" style="border:solid" /></a>
                    </td>
                     </tr>
             <tr>
          <td>
         <a href="BookDetails.aspx?bookID=<%#:Item.MaSach%>">
         <span>
         <%#:Item.TenSach%>
             </span>
             </a>
             <br />
             <span>
         <b>Giá: </b><%#:String.Format("{0:c}",Item.GiaSach)%>
          </span>
             <br />
             </td>
             </tr>
            <tr>
         <td>&nbsp;</td>
         </tr>
         </table>
         </p>
         </td>
         </ItemTemplate>
         <LayoutTemplate>
                  <table style="width:100%;">
                  <tbody>
                      <tr>
                      <td>
                          <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                            <tr id="groupPlaceholder"></tr>
                     </table>
              </td>
                 </tr>
                 <tr>
             <td></td>
             </tr>
         <tr></tr>
         </tbody>
         </table>
         </LayoutTemplate>
         </asp:ListView>
         </div>
         </section>
        </body>
</asp:Content>
