<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CSharpExample.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
    <hr />
    <h2>Tell Us About Yourself</h2>
    <div class="form-group">
        <div class="row">
            <div class="col-lg-12">
                <label class="control-label">Full Name:</label>
                <input type="text" class="form-control" />
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <label class="control-label">Video Game:</label>
                <select class="form-control m-t-lg">
                    <option value="0">No Video Game</option>
                    <% foreach (VideoGame vg in VideoGameList) %>
                    <%{ %>
                    <option value="<%=vg.id %>"><%=vg.name %></option>
                    <% } %>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <asp:Button runat="server" ID="BtnSubmit" OnClick="BtnSubmit_Click" Text="Submit Me!" />
            </div>
        </div>
    </div>
</asp:Content>
