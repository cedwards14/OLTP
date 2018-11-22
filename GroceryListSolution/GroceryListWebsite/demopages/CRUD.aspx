<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="GroceryListWebsite.demopages.CRUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Crud: ODS</h1>

    <asp:ListView ID="ProductCrud" runat="server" DataSourceID="ProductODS" InsertItemPosition="LastItem" DataKeyNames="ProductID">
        <AlternatingItemTemplate>
            <tr style="background-color: #5555BB; color: #ffffff;">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("ProductID") %>' runat="server" ID="ProductIDLabel" Width="50px" Enabled="False" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Price","{0:c}") %>' runat="server" ID="PriceLabel" Width="75px"/></td>
                <td>
                    <asp:Label Text='<%# Eval("Discount", "{0:c}") %>' runat="server" ID="DiscountLabel" Width="75px"/></td>
                <td>
                    <asp:Label Text='<%# Eval("UnitSize") %>' runat="server" ID="UnitSizeLabel" Width="100px" /></td>
                <td>
                    <asp:DropDownList ID="CategoryList" runat="server" DataSourceID="CategoryODS" DataTextField="Description" DataValueField="CategoryID" selectedvalue='<%# Eval("CategoryID") %>'></asp:DropDownList>
                    <%--<asp:Label Text='<%# Eval("CategoryID") %>' runat="server" ID="CategoryIDLabel" />--%></td>
                <td>
                    <asp:CheckBox Checked='<%# Eval("Taxable") %>' runat="server" ID="TaxableCheckBox" Enabled="false" /></td>
           <%--     <td>
                    <asp:Label Text='<%# Eval("Category") %>' runat="server" ID="CategoryLabel" /></td>--%>
          <%--      <td>
                    <asp:Label Text='<%# Eval("OrderLists") %>' runat="server" ID="OrderListsLabel" /></td>--%>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("ProductID") %>' runat="server" ID="ProductIDTextBox" Width="50px" Enabled="False" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Price") %>' runat="server" ID="PriceTextBox" Width="75px"/></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Discount") %>' runat="server" ID="DiscountTextBox" Width="75px"/></td>
                <td>
                    <asp:TextBox Text='<%# Bind("UnitSize") %>' runat="server" ID="UnitSizeTextBox" Width="100px" /></td>
                <td>
                   <asp:DropDownList ID="CategoryList" runat="server" DataSourceID="CategoryODS" DataTextField="Description" DataValueField="CategoryID" selectedvalue='<%# Bind("CategoryID") %>'></asp:DropDownList></td>
                <td>
                    <asp:CheckBox Checked='<%# Bind("Taxable") %>' runat="server" ID="TaxableCheckBox" /></td>
            <%--    <td>
                    <asp:TextBox Text='<%# Bind("Category") %>' runat="server" ID="CategoryTextBox" /></td>--%>
             <%--   <td>
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
                    <asp:TextBox Text='<%# Bind("ProductID") %>' runat="server" ID="ProductIDTextBox" Width="50px" Enabled="False" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Price") %>' runat="server" ID="PriceTextBox" Width="75px" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Discount") %>' runat="server" ID="DiscountTextBox" Width="75px"/></td>
                <td>
                    <asp:TextBox Text='<%# Bind("UnitSize") %>' runat="server" ID="UnitSizeTextBox" Width="100px" /></td>
                <td>
                   <asp:DropDownList ID="CategoryList" runat="server" DataSourceID="CategoryODS" DataTextField="Description" DataValueField="CategoryID" selectedvalue='<%# Bind("CategoryID") %>'></asp:DropDownList></td>
                <td>
                    <asp:CheckBox Checked='<%# Bind("Taxable") %>' runat="server" ID="TaxableCheckBox" /></td>
                <%--<td>
                    <asp:TextBox Text='<%# Bind("Category") %>' runat="server" ID="CategoryTextBox" /></td>--%>
              <%--  <td>
                    <asp:TextBox Text='<%# Bind("OrderLists") %>' runat="server" ID="OrderListsTextBox" /></td>--%>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #A9FFD4; color: #333333;">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("ProductID") %>' runat="server" ID="ProductIDLabel" Width="50px"  /></td>
                <td>
                    <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Price", "{0:c}") %>' runat="server" ID="PriceLabel" Width="75px" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Discount", "{0:c}") %>' runat="server" ID="DiscountLabel" Width="75px"/></td>
                <td>
                    <asp:Label Text='<%# Eval("UnitSize") %>' runat="server" ID="UnitSizeLabel" Width="100px" /></td>
                <td>
                   <asp:DropDownList ID="CategoryList" runat="server" DataSourceID="CategoryODS" DataTextField="Description" DataValueField="CategoryID" selectedvalue='<%# Bind("CategoryID") %>'></asp:DropDownList></td>
                <td>
                    <asp:CheckBox Checked='<%# Eval("Taxable") %>' runat="server" ID="TaxableCheckBox" Enabled="false" /></td>
          <%--      <td>
                    <asp:Label Text='<%# Eval("Category") %>' runat="server" ID="CategoryLabel" /></td>--%>
               <%-- <td>
                    <asp:Label Text='<%# Eval("OrderLists") %>' runat="server" ID="OrderListsLabel" /></td>--%>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                            <tr runat="server" style="background-color: #51102B; color: #ffffff;">
                                <th runat="server"></th>
                                <th runat="server">Product ID</th>
                                <th runat="server">Description</th>
                                <th runat="server">Price</th>
                                <th runat="server">Discount</th>
                                <th runat="server">Unit Size</th>
                                <th runat="server">Category</th>
                                <th runat="server">Taxable</th>
                           <%--     <th runat="server">Category</th>--%>
                             <%--   <th runat="server">OrderLists</th>--%>
                            </tr>
                            <tr runat="server" id="itemPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center; background-color: #FF00FF; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                        <asp:DataPager runat="server" ID="DataPager1">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                                <asp:NumericPagerField></asp:NumericPagerField>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #FF00FF; font-weight: bold; color: #ffffff;">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("ProductID") %>' runat="server" ID="ProductIDLabel" Width="50px" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Price") %>' runat="server" ID="PriceLabel" Width="75px"/></td>
                <td>
                    <asp:Label Text='<%# Eval("Discount") %>' runat="server" ID="DiscountLabel" Width="75px"/></td>
                <td>
                    <asp:Label Text='<%# Eval("UnitSize") %>' runat="server" ID="UnitSizeLabel"  Width="100px"/></td>
                <td>
                   <asp:DropDownList ID="CategoryList" runat="server" DataSourceID="CategoryODS" DataTextField="Description" DataValueField="CategoryID" selectedvalue='<%# Bind("CategoryID") %>'></asp:DropDownList></td>
                <td>
                    <asp:CheckBox Checked='<%# Eval("Taxable") %>' runat="server" ID="TaxableCheckBox" Enabled="false"  /></td>
               <%-- <td>
                    <asp:Label Text='<%# Eval("Category") %>' runat="server" ID="CategoryLabel" /></td>--%>
               <%-- <td>
                    <asp:Label Text='<%# Eval("OrderLists") %>' runat="server" ID="OrderListsLabel" /></td>--%>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>



    <asp:ObjectDataSource ID="ProductODS" runat="server" DataObjectTypeName="GroceryList.Data.Entities.Product" DeleteMethod="Products_Delete" InsertMethod="Products_Add" OldValuesParameterFormatString="original_{0}" SelectMethod="Products_List" TypeName="GroceryListSystem.BLL.ProductController" UpdateMethod="Products_Update">
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="CategoryODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Catgories_List" TypeName="GroceryListSystem.BLL.CategoryController"></asp:ObjectDataSource>
</asp:Content>
