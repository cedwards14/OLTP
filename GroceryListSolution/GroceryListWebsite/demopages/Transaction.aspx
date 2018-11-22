<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="GroceryListWebsite.demopages.Transaction" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="row">
       <div class="col-sm-12">
           <uc1:MessageUserControl runat="server" id="MessageUserControl" />
       </div>
   </div>
    <div class="row">
        <asp:Label ID="OrderLabel" runat="server" Text="Order"></asp:Label>&nbsp&nbsp
        <asp:DropDownList ID="OrderDDL" runat="server" DataSourceID="OrdersNotDelivered" DataTextField="OrderID" DataValueField="OrderID"></asp:DropDownList>&nbsp
        <asp:Button ID="FetchButton" runat="server" Text="Fetch" OnClick="FetchButton_Click" Style="Margin-right: 20px;"/>&nbsp&nbsp
       <%-- <asp:Label ID="CustomerInfo" runat="server" Text="Customer: " + '<%# Eval("LastName") %>'   +" , " + <%# Eval("FirstName") %>' + "Phone: " + <%# Eval("Phone") %>'></asp:Label>&nbsp--%>
        <asp:Label ID="customer" runat="server" Text="Customer:" Style="Margin-right: 2px;"></asp:Label>
        <asp:Label ID="Customername" runat="server" Text="" Style="Margin-right: 30px;"></asp:Label>
        <asp:Label ID="phone" runat="server" Text="Phone: " Style="Margin-right:2px;"></asp:Label>
        <asp:Label ID="Phonenumber" runat="server" Text="" Style="Margin-right: 200px;"></asp:Label>

        <asp:Label ID="PickerLabel" runat="server" Text="Pickers"></asp:Label>
        <asp:DropDownList ID="PickerDDL" runat="server" DataSourceID="PickersODS" DataTextField="FullName" DataValueField="PickerID"></asp:DropDownList>
    </div>

    <div class="row" style="margin-left: 100px; margin-top:40px;">
        <asp:GridView ID="OrderList" runat="server" AutoGenerateColumns="False"
            GridLines="None" BorderStyle="None">
            <Columns>
                <asp:TemplateField HeaderText="Product">
                    <ItemTemplate >
                        <asp:Label ID="ProductDescription" Text='<%# Eval("ProductDescription") %>' runat="server"  Width="250px"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Qty">
                    <ItemTemplate>  
                       <asp:Label ID="QtyOrdered" Text='<%# Eval("QtyOrdered") %>' runat="server"  Width="80px"/>
                        </itemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Comment">
                    <ItemTemplate>
                     <asp:Label ID="Comment" Text='<%# Eval("Comment") %>' runat="server"  Width="150px"/>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Picked" >
                    <ItemTemplate >
              <asp:TextBox ID="picked" runat="server" Text='<%# Bind("Picked") %>'  Width="75px" style="margin-right:20px;"></asp:TextBox>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Pick issue">
                    <ItemTemplate>
                    <asp:TextBox  ID="PickIssue" runat="server" Text='<%# Bind("PickIssue") %>'  Width="250px"></asp:TextBox>
                        </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
   
        <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" />





    </div>

    <asp:ObjectDataSource ID="OrdersNotDelivered" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Orders_UnDeliveredList" TypeName="GroceryListSystem.BLL.OrderController"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="PickersODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Pickers_List" TypeName="GroceryListSystem.BLL.PickerController"></asp:ObjectDataSource>
</asp:Content>
