<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="City.aspx.cs" Inherits="Admin_City" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <div style="margin: 0px 0px 0px 85px;">
        <h4 style="font-family: sans-serif; font-size: 20px; font-weight: 300; margin: 25px 0px 30px 30px">City Management</h4>
        <div class="container">
            <form id="form1" runat="server">
                <div style="margin-bottom: 10px;">
                    <div class="row">
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtsearch" CssClass="col-sm-4" runat="server" Height="30px" Width="375px"></asp:TextBox>
                        </div>

                        <div class="col-sm-4">
                            <input type="submit" id="btSubmit" class="btn" name="Search" style="background-color:#EAF2Fc" runat="server" />
                            <asp:Button ID="btnshowall" runat="server" CssClass="btn" BackColor="#eaf2fc" OnClick="btnshowall_Click" Text="Show All" />
                            <asp:CheckBox ID="chkadd" runat="server" AutoPostBack="true" OnCheckedChanged="chkadd_CheckedChanged" Text="Insert" />
                        </div>
                        <div class="col-sm-4">
                            <asp:Label ID="msg" runat="server"></asp:Label>
                        </div>
                    </div>
                    <asp:Panel ID="pnlinsert" runat="server" Visible="false">
                        <div class="form-register-with-email">
                            <div class="form-white-background" style="margin-bottom: 20px; padding: 10px 10px;">
                                <div class="form-row">
                                    <label>
                                        <span>State:</span>
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="selectbox" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="StName" DataValueField="Sid" Height="30px" Width="140px"></asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SwapshopConnectionString %>" SelectCommand="SELECT [Sid], [StName] FROM [State_Master]"></asp:SqlDataSource>
                                    </label>
                                </div>
                                <div class="form-row">
                                    <label>
                                        <span>City:</span>
                                        <asp:TextBox ID="tbcname" runat="server" placeholder="City Name"></asp:TextBox>
                                    </label>
                                </div>

                                <asp:Button ID="btnInsert" runat="server" Text="Insert" CssClass="btn" BackColor="#eaf2fc" OnClick="btnInsert_Click" />
                                &nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass=" btn btn-default" BackColor="#eaf2fc" OnClick="btnReset_Click" />
                                <asp:Label ID="lblmsg2" runat="server"></asp:Label>

                            </div>
                        </div>
                    </asp:Panel>
                </div>


                <div class="row" style="margin-bottom: 10px">
                    <asp:GridView ID="GridView1" CssClass="footable" runat="server" AutoGenerateColumns="False" DataKeyNames="Cid" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Cid" HeaderText="Cid" InsertVisible="False" ReadOnly="True" SortExpression="Cid" />
                            <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
                            <asp:BoundField DataField="Sid" HeaderText="Sid" SortExpression="Sid" />
                        </Columns>
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server"  FilterExpression="[CName] LIKE '%{0}%'" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SwapshopConnectionString %>" DeleteCommand="DELETE FROM [City_Master] WHERE [Cid] = @original_Cid AND [CName] = @original_CName AND (([Sid] = @original_Sid) OR ([Sid] IS NULL AND @original_Sid IS NULL))" InsertCommand="INSERT INTO [City_Master] ([CName], [Sid]) VALUES (@CName, @Sid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [City_Master]" UpdateCommand="UPDATE [City_Master] SET [CName] = @CName, [Sid] = @Sid WHERE [Cid] = @original_Cid AND [CName] = @original_CName AND (([Sid] = @original_Sid) OR ([Sid] IS NULL AND @original_Sid IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Cid" Type="Int32" />
                            <asp:Parameter Name="original_CName" Type="String" />
                            <asp:Parameter Name="original_Sid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CName" Type="String" />
                            <asp:Parameter Name="Sid" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="CName" Type="String" />
                            <asp:Parameter Name="Sid" Type="Int32" />
                            <asp:Parameter Name="original_Cid" Type="Int32" />
                            <asp:Parameter Name="original_CName" Type="String" />
                            <asp:Parameter Name="original_Sid" Type="Int32" />
                        </UpdateParameters>
                        <FilterParameters>
                            <asp:ControlParameter Name="CName"
                                ControlID="txtsearch" PropertyName="Text" />

                        </FilterParameters>

                    </asp:SqlDataSource>

                </div>


            </form>
        </div>
    </div>


</asp:Content>

