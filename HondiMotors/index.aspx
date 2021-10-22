<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="HondiMotors.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hondi Motors</title>
    <style type="text/css">
        .form {
            width: 570px;
            height: 700px;
        }

        .underline {
            width: 460px;
        }

        .heading {
            text-align: center;
            color: darkred
        }

        .tblInfo {
            width: 500px
        }

        .stylePanel {
            border-radius: 30px;
        }

        .tecboc {
            border-radius: 5px;
        }

        .auto-style1 {
            height: 120px;
        }

        .tbl2 {
            width: 400px;
        }

        .auto-style2 {
            width: 100px;
        }

        .auto-style3 {
            width: 270px;
        }

        .auto-style4 {
            width: 100px;
            height: 50px;
        }

        .auto-style5 {
            width: 270px;
            height: 50px;
        }

        .auto-style6 {
            width: 270px;
        }

        .auto-style7 {
            width: 100px;
        }

        .auto-style8 {
            width: 100px;
            height: 26px;
        }

        .auto-style9 {
            width: 270px;
            height: 26px;
        }
    </style>


</head>
<div>
    <h1 class="heading">H O N D I - M O T O R S </h1>
</div>

<hr class="underline" />
<br />
<hr />
<p style="background-color: antiquewhite"><b>
    <marquee>Hondi Motors Welcomes You. Enjoy Latest deals at our new models with dashing accessories and more. </marquee>
</b></p>
<hr />
<br />
<body style="background-color:beige">
    <form id="frm" runat="server" class="form">


        <br />

        <table class="tblInfo">
            <tr style="vertical-align: top;">
                <td class="auto-style1">
                    <asp:Panel ID="panelCar" CssClass="stylePanel1" BackColor="Wheat" GroupingText="Car Informations" Height="100%" runat="server" Width="460px">

                        <table class="tbl2">
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="lblCity" runat="server" AccessKey="c" AssociatedControlID="txtCity" Text="Your City: "></asp:Label>
                                </td>

                                <td class="auto-style3">
                                    <asp:TextBox ID="txtCity" CssClass="tecboc" runat="server" Width="150px"></asp:TextBox>
                                </td>
                            </tr>
                            <br />
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="lblZipCode" runat="server" AccessKey="z" AssociatedControlID="txtZipCode" Text="Zip Code: "></asp:Label>
                                </td>

                                <td class="auto-style3">
                                    <asp:TextBox ID="txtZipCode" CssClass="tecboc" runat="server" Width="150px"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style7">
                                    <asp:Label ID="lblCarModel" runat="server" Text="Car Model: "></asp:Label>
                                </td>

                                <td class="auto-style6">
                                    <asp:DropDownList ID="cboCar" runat="server" CssClass="tecboc" Width="200px" AutoPostBack="true" OnSelectedIndexChanged="cboCar_SelectedIndexChanged"></asp:DropDownList>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style7">
                                    <asp:Label ID="lblInterior" runat="server" Text="Interior Color: "></asp:Label>
                                </td>

                                <td class="auto-style6">
                                    <asp:ListBox ID="lstInterior" runat="server" CssClass="tecboc" AutoPostBack="true" Width="150px"></asp:ListBox>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style7">
                                    <asp:Label ID="lblAccessories" runat="server" Text="Accessories: "></asp:Label>
                                </td>

                                <td class="auto-style6">
                                    <asp:CheckBoxList ID="chkListAccessories" runat="server" AutoPostBack="true" Width="200px"></asp:CheckBoxList>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style7">
                                    <asp:Label ID="lblWarranty" runat="server" Text="Warranty: "></asp:Label>
                                </td>

                                <td class="auto-style6">
                                    <asp:RadioButtonList ID="radlstWarranty" runat="server" AutoPostBack="true"></asp:RadioButtonList>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblDealerContact" runat="server" Text="Dealer contact you by phone?: "></asp:Label>
                                </td>

                                <td class="auto-style9">
                                    <asp:CheckBox ID="chkDealerContact" runat="server" OnCheckedChanged="chkDealerContact_CheckedChanged" AutoPostBack="true"></asp:CheckBox>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number: "></asp:Label>
                                </td>

                                <td class="auto-style5">
                                    <asp:TextBox ID="txtPhoneNumber" CssClass="tecboc" runat="server" Width="150px"></asp:TextBox>
                                </td>
                            </tr>

                        </table>

                    </asp:Panel>

                </td>

                <td class="auto-style12">

                    <asp:Panel ID="panelPricing" runat="server" BackColor="Wheat" GroupingText="Price Resume" Height="250px" Width="250px" CssClass="auto-style8">


                        <asp:Literal ID="litPricing" runat="server"></asp:Literal>
                        <br />
                        <br />
                        <asp:Button ID="btnConclude" runat="server" Text="Conclude" OnClick="btnConclude_Click" />

                    </asp:Panel>
                    <br />

                    <asp:Panel ID="panelInformation" runat="server" CssClass="auto-style15" GroupingText="Final Information" BackColor="Wheat">
                        <asp:Literal ID="litConclude" runat="server"></asp:Literal>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

        </table>

    </form>
</body>
</html>
