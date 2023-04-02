<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Manage-employee.aspx.cs" Inherits="AssignmentB5.AdminPage.Manage_employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container d-flex justify-content-center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Users] WHERE ([role] = @role)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Users] WHERE [username] = @original_username AND [name] = @original_name AND [email] = @original_email AND [password] = @original_password AND [contact] = @original_contact AND [address] = @original_address AND [role] = @original_role AND [status] = @original_status" InsertCommand="INSERT INTO [Users] ([username], [name], [email], [password], [contact], [address], [role], [status]) VALUES (@username, @name, @email, @password, @contact, @address, @role, @status)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Users] SET [name] = @name, [email] = @email, [password] = @password, [contact] = @contact, [address] = @address, [role] = @role, [status] = @status WHERE [username] = @original_username AND [name] = @original_name AND [email] = @original_email AND [password] = @original_password AND [contact] = @original_contact AND [address] = @original_address AND [role] = @original_role AND [status] = @original_status">
            <DeleteParameters>
                <asp:Parameter Name="original_username" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_email" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_password" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_contact" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_address" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_role" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_status" Type="Boolean"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String"></asp:Parameter>
                <asp:Parameter Name="name" Type="String"></asp:Parameter>
                <asp:Parameter Name="email" Type="String"></asp:Parameter>
                <asp:Parameter Name="password" Type="String"></asp:Parameter>
                <asp:Parameter Name="contact" Type="String"></asp:Parameter>
                <asp:Parameter Name="address" Type="String"></asp:Parameter>
                <asp:Parameter Name="role" Type="String"></asp:Parameter>
                <asp:Parameter Name="status" Type="Boolean"></asp:Parameter>
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="staff" Name="role" Type="String"></asp:Parameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String"></asp:Parameter>
                <asp:Parameter Name="email" Type="String"></asp:Parameter>
                <asp:Parameter Name="password" Type="String"></asp:Parameter>
                <asp:Parameter Name="contact" Type="String"></asp:Parameter>
                <asp:Parameter Name="address" Type="String"></asp:Parameter>
                <asp:Parameter Name="role" Type="String"></asp:Parameter>
                <asp:Parameter Name="status" Type="Boolean"></asp:Parameter>
                <asp:Parameter Name="original_username" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_email" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_password" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_contact" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_address" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_role" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_status" Type="Boolean"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource1" AllowPaging="True">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username"></asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password"></asp:BoundField>
                <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact"></asp:BoundField>
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                <asp:CheckBoxField DataField="status" HeaderText="status" SortExpression="status"></asp:CheckBoxField>
            </Columns>
        </asp:GridView>
    </div>
    
    
    
</asp:Content>
