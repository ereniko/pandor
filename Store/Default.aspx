<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Store.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="https://www.artadosearch.com/bootstrap-4.5.3-dist/css/bootstrap.css" rel="stylesheet" />
<link href="style.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="/ism/css/my-slider.css"/>
<script src="/ism/js/ism-2.2.min.js"></script>
    <title>Pandor Store</title>
    <meta name"aciklama"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar">
            <img src="https://images-ext-2.discordapp.net/external/Mq9-BDj_cIslodAlasK4c10Qv3omIodoOCKjdSKGhJQ/%3Fsize%3D4096/https/cdn.discordapp.com/icons/935532288777814036/a373b02ea47708063a488e1262a5bb34.png?width=473&height=473" width="190" height="170"/>
            <img src="https://cdn.discordapp.com/attachments/897863684087480323/937038274256580669/home_1.png" width="50" height="50"/> <a href="/">Ana sayfa</a><br />
            <img src="https://media.discordapp.net/attachments/897863684087480323/937039460569333760/search_1.png?width=473&height=473" width="50" height="50"/> <a href="/">Keşfet</a><br />
            <img src="https://media.discordapp.net/attachments/897863684087480323/937039069580500992/help.png?width=473&height=473" width="50" height="50"/> <a href="/">Topluluk</a><br />
            <img src="https://media.discordapp.net/attachments/897863684087480323/937038538996862976/membership.png?width=473&height=473" width="50" height="50"/> <a href="/">Pandor Exclusive</a><br />
            <img src="https://media.discordapp.net/attachments/897863684087480323/937038688251183134/library.png?width=473&height=473" width="50" height="50"/> <a href="/">Kütüphane</a><br />
           <img src="https://media.discordapp.net/attachments/897863684087480323/937038815309213696/coding.png?width=473&height=473" width="50" height="50"/> <a href="/">Developers</a><br />
           <img src="https://cdn.discordapp.com/attachments/897863684087480323/937038274457915422/user_3.png" width="50" height="50"/> <a href="/">Hesap</a><br />
              <img src="https://media.discordapp.net/attachments/897863684087480323/937038939737436211/settings_1.png?width=473&height=473" width="50" height="50" /> <a href="/">Ayarlar</a><br />
        </div>
        
        <div id="highlight" runat="server" class="highlight">
            <h2 style="margin-left: 10px">Öne Çıkanlar</h2>
            <div class="showcase">
                <img class="h_image" src="http://www.zidestore.net/assets/img/samples/match-replay-video-thumbnail-07.png" />
            </div>

            <asp:DataList runat="server" ID="Products" class="products">
                <ItemTemplate>
                    <a href='/game/<%# Eval("URL") %>'>
                        <div class="game_row">
                            <img src='<%# Eval("Logo") %>' class="logo" />
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Font-Size="X-Large"></asp:Label><br />
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Developer") %>' Font-Size="Medium" ForeColor="Gray"></asp:Label><br />
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Genre") %>' Font-Size="Small" ForeColor="Gray"></asp:Label><br /><br />
                            <asp:Label ID="Label4" runat="server" Text='Ücretsiz' Font-Size="Large"></asp:Label><br />
                        </div>
                    </a>
                </ItemTemplate>
            </asp:DataList>
        </div>

        <div id="games" runat="server" class="gamepage">
            <asp:DataList ID="game_info" runat="server" class="game_info">
                <ItemTemplate>
                    <img src='<%# Eval("Logo") %>' class="gamelogo" />
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Font-Size="X-Large"></asp:Label><br />
                    <a class="url" href="/devs/<%# Eval("DevURL") %>"><asp:Label ID="Label2" runat="server" Text='<%# Eval("Developer") %>' Font-Size="Medium" ForeColor="Gray"></asp:Label><br /></a>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Genre") %>' Font-Size="Small" ForeColor="Gray"></asp:Label><br /><br />
                    <asp:Label ID="Label4" runat="server" Text='Ücretsiz' Font-Size="Large"></asp:Label><br />
                    <asp:Label ID="Label6" runat="server" Text='Kullanıcıların Değerlendirmesi: ' Font-Size="Large"></asp:Label>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Score") %>' Font-Size="Large"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Description") %>' Font-Size="Large" CssClass="desc"></asp:Label><br />
                </ItemTemplate>
            </asp:DataList>
            <asp:Button ID="Button1" runat="server" Text="Kütüphaneye ekle" CssClass="getbutton" />

            <div class="ism-slider" id="my-slider">
                <asp:DataList id="my_slider" runat="server">
                    <ItemTemplate>
                        <ol>
                            <li>
                              <img src="<%# Eval("Image1") %>"/>
                            </li>
                            <li>
                              <img src="<%# Eval("Image2") %>"/>
                            </li>
                            <li>
                              <img src="<%# Eval("Image3") %>"/>
                            </li>
                            <li>
                              <img src="<%# Eval("Image4") %>"/>
                            </li>
                            <li>
                              <img src="<%# Eval("Image5") %>"/>
                            </li>
                         </ol>
                    </ItemTemplate>
            </asp:DataList>
            </div>


        </div>

        <div id="friends" runat="server" class="friends">
            <h2>Arkadaşlar</h2>
            <h6>Arkadaşlar özelliği şu anda aktif değil</h6>
        </div>
    </form>
</body>
</html>