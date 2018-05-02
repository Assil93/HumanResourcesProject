<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="GESTION DOC DES GARD.aspx.vb" Inherits="PFE.GESTION_DOC_DES_GARD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>IMPRIMER DES DOCUMENTS
   </h1>
<asp:Image ID="Image1" runat="server" Height="200px" 
        style="margin-left: 500px; margin-bottom:-300px; margin-top: -10px;" 
        Width="313px" ImageUrl="~/Styles/DocumentFolder.png" 
         />

    <asp:Button ID="BT_ATT_GARD" runat="server" Text="Attestation de travail" 
        style="margin-left: 7px; margin-top: 21px;" Width="300px" Height="45px" 
        BackColor="#99FF33" PostBackUrl="~/Attestationtrv.aspx" />
        <br/>
        <br />
    <asp:Button ID="BT_FICH_GARD" runat="server" Text="Fiche de paie" 
        style="margin-left: 7px" Width="300px" Height="45px" 
        BackColor="#99FF33" PostBackUrl="~/fichepaie.aspx"/>
        <br />
        <br />
    <asp:Button ID="BT_CONG_GARD" runat="server" Text="Attestation de conge" style="margin-left: 7px" Width="300px" Height="45px" 
        BackColor="#99FF33" />
        <br />
        <br />
    <asp:Button ID="BT_COT_GARD" runat="server" Text="Cotisation assurance" style="margin-left: 7px" Width="300px" Height="45px" 
        BackColor="#99FF33"/>
</asp:Content>

