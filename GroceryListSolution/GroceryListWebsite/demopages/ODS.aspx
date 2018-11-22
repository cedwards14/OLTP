<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ODS.aspx.cs" Inherits="GroceryListWebsite.demopages.ODS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div class="row">
        <h1>Query: ODS</h1>

            <asp:Label ID="Category" runat="server" Text="Category"></asp:Label>
       <asp:DropDownList ID="CategoryList" runat="server" DataSourceID="CategoryODS" DataTextField="Description" DataValueField="CategoryID" ></asp:DropDownList>
       <asp:Button ID="categoryFetch" runat="server" Text="Fetch" />
   </div>
 <div class="row">
    
     <asp:ListView ID="ListView1" runat="server" DataSourceID="ProductODS">
         <AlternatingItemTemplate>
             <tr style="background-color: #FFF8DC;">
                 <td>
                     <asp:Label Text='<%# Eval("ProductID") %>' runat="server" ID="ProductIDLabel" /></td>
                 <td>
                     <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                 <td>
                     <asp:Label Text='<%# Eval("Price","{0:c}") %>' runat="server" ID="PriceLabel" /></td>
                 <td>
                     <asp:Label Text='<%# Eval("Discount","{0:c}") %>' runat="server" ID="DiscountLabel" /></td>
                 <td>
                     <asp:Label Text='<%# Eval("UnitSize") %>' runat="server" ID="UnitSizeLabel" /></td>
                <%-- <td>
                     <asp:Label Text='<%# Eval("CategoryID") %>' runat="server" ID="CategoryIDLabel" /></td>--%>
                 <td>
                     <asp:CheckBox Checked='<%# Eval("Taxable") %>' runat="server" ID="TaxableCheckBox" Enabled="false" /></td>
            <%--     <td>
                     <asp:Label Text='<%# Eval("Category") %>' runat="server" ID="CategoryLabel" /></td>
                 <td>
                     <asp:Label Text='<%# Eval("OrderLists") %>' runat="server" ID="OrderListsLabel" /></td>--%>
             </tr>
         </AlternatingItemTemplate>
         <EditItemTemplate>
             <tr style="background-color: #008A8C; color: #FFFFFF;">
                 <td>
                     <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                     <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                 </td>
                 <td>
                     <asp:TextBox Text='<%# Bind("ProductID") %>' runat="server" ID="ProductIDTextBox" /></td>
                 <td>
                     <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /></td>
                 <td>
                     <asp:TextBox Text='<%# Bind("Price") %>' runat="server" ID="PriceTextBox" /></td>
                 <td>
                     <asp:TextBox Text='<%# Bind("Discount") %>' runat="server" ID="DiscountTextBox" /></td>
                 <td>
                     <asp:TextBox Text='<%# Bind("UnitSize") %>' runat="server" ID="UnitSizeTextBox" /></td>
<%--                 <td>
                     <asp:TextBox Text='<%# Bind("CategoryID") %>' runat="server" ID="CategoryIDTextBox" /></td>--%>
                 <td>
                     <asp:CheckBox Checked='<%# Bind("Taxable") %>' runat="server" ID="TaxableCheckBox" /></td>
          <%--       <td>
                     <asp:TextBox Text='<%# Bind("Category") %>' runat="server" ID="CategoryTextBox" /></td>
                 <td>
                     <asp:TextBox Text='<%# Bind("OrderLists") %>' runat="server" ID="OrderListsTextBox" /></td>--%>
             </tr>
         </EditItemTemplate>
         <EmptyDataTemplate>
             <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                 <tr>
                     <td>No data was returned.</td>
                 </tr>
             </table>
         </EmptyDataTemplate>
         <InsertItemTemplate>
             <tr style="">
                 <td>
                     <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                     <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                 </td>
                 <td>
                     <asp:TextBox Text='<%# Bind("ProductID") %>' runat="server" ID="ProductIDTextBox" /></td>
                 <td>
                     <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /></td>
                 <td>
                     <asp:TextBox Text='<%# Bind("Price") %>' runat="server" ID="PriceTextBox" /></td>
                 <td>
                     <asp:TextBox Text='<%# Bind("Discount") %>' runat="server" ID="DiscountTextBox" /></td>
                 <td>
                     <asp:TextBox Text='<%# Bind("UnitSize") %>' runat="server" ID="UnitSizeTextBox" /></td>
              <%--   <td>
                     <asp:TextBox Text='<%# Bind("CategoryID") %>' runat="server" ID="CategoryIDTextBox" /></td>--%>
                 <td>
                     <asp:CheckBox Checked='<%# Bind("Taxable") %>' runat="server" ID="TaxableCheckBox" /></td>
         <%--        <td>
                     <asp:TextBox Text='<%# Bind("Category") %>' runat="server" ID="CategoryTextBox" /></td>
                 <td>
                     <asp:TextBox Text='<%# Bind("OrderLists") %>' runat="server" ID="OrderListsTextBox" /></td>--%>
             </tr>
         </InsertItemTemplate>
         <ItemTemplate>
             <tr style="background-color: #DCDCDC; color: #000000;">
                 <td>
                     <asp:Label Text='<%# Eval("ProductID") %>' runat="server" ID="ProductIDLabel" /></td>
                 <td>
                     <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                 <td>
                     <asp:Label Text='<%# Eval("Price","{0:c}") %>' runat="server" ID="PriceLabel" /></td>
                 <td>
                     <asp:Label Text='<%# Eval("Discount","{0:c}") %>' runat="server" ID="DiscountLabel" /></td>
                 <td>
                     <asp:Label Text='<%# Eval("UnitSize") %>' runat="server" ID="UnitSizeLabel" /></td>
                <%-- <td>
                     <asp:Label Text='<%# Eval("CategoryID") %>' runat="server" ID="CategoryIDLabel" /></td>--%>
                 <td>
                     <asp:CheckBox Checked='<%# Eval("Taxable") %>' runat="server" ID="TaxableCheckBox" Enabled="false" /></td>
                <%-- <td>
                     <asp:Label Text='<%# Eval("Category") %>' runat="server" ID="CategoryLabel" /></td>
                 <td>
                     <asp:Label Text='<%# Eval("OrderLists") %>' runat="server" ID="OrderListsLabel" /></td>--%>
             </tr>
         </ItemTemplate>
         <LayoutTemplate>
             <table runat="server">
                 <tr runat="server">
                     <td runat="server">
                         <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                             <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                 <th runat="server">ProductID</th>
                                 <th runat="server">Description</th>
                                 <th runat="server">Price</th>
                                 <th runat="server">Discount</th>
                                 <th runat="server">UnitSize</th>
                                <%-- <th runat="server">CategoryID</th>--%>
                                 <th runat="server">Taxable</th>
                            <%--     <th runat="server">Category</th>
                                 <th runat="server">OrderLists</th>--%>
                             </tr>
                             <tr runat="server" id="itemPlaceholder"></tr>
                         </table>
                     </td>
                 </tr>
                 <tr runat="server">
                     <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                         <asp:DataPager runat="server" ID="DataPager1">
                             <Fields>
                                 <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                             </Fields>
                         </asp:DataPager>
                     </td>
                 </tr>
             </table>
         </LayoutTemplate>
         <SelectedItemTemplate>
             <tr style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">
                 <td>
                     <asp:Label Text='<%# Eval("ProductID") %>' runat="server" ID="ProductIDLabel" /></td>
                 <td>
                     <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                 <td>
                     <asp:Label Text='<%# Eval("Price") %>' runat="server" ID="PriceLabel" /></td>
                 <td>
                     <asp:Label Text='<%# Eval("Discount") %>' runat="server" ID="DiscountLabel" /></td>
                 <td>
                     <asp:Label Text='<%# Eval("UnitSize") %>' runat="server" ID="UnitSizeLabel" /></td>
      <%--           <td>
                     <asp:Label Text='<%# Eval("CategoryID") %>' runat="server" ID="CategoryIDLabel" /></td>--%>
                 <td>
                     <asp:CheckBox Checked='<%# Eval("Taxable") %>' runat="server" ID="TaxableCheckBox" Enabled="false" /></td>
               <%--  <td>
                     <asp:Label Text='<%# Eval("Category") %>' runat="server" ID="CategoryLabel" /></td>
                 <td>
                     <asp:Label Text='<%# Eval("OrderLists") %>' runat="server" ID="OrderListsLabel" /></td>--%>
             </tr>
         </SelectedItemTemplate>
     </asp:ListView>

 </div>

    <asp:ObjectDataSource ID="ProductODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Get_prod_on_Cat" TypeName="GroceryListSystem.BLL.ProductController">
        <SelectParameters>
            <asp:ControlParameter ControlID="CategoryList" PropertyName="SelectedValue" DefaultValue="0" Name="categoryid" Type="Int32"></asp:ControlParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="CategoryODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Catgories_List" TypeName="GroceryListSystem.BLL.CategoryController"></asp:ObjectDataSource>
</asp:Content>
