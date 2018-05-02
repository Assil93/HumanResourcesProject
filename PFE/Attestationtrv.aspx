<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Attestationtrv.aspx.vb" Inherits="PFE.Attestationtrv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script language="Javascript">
    function imprimer() { window.print(); }
</script>
    <title>Direction Régionale de Tunisie Telecom</title>
    <style type="text/css">
        #Text1
        {
            width: 270px;
            height: 28px;
            margin-left: 16px;
            font-size:large; 
            font-style: italic;
             color: #000000;
              letter-spacing: normal; 
              font-weight: normal; 
          
            
        }
      
        .center
        {}
      
    </style>
</head>
<body>

<center style="font-size: xx-large; font-weight: bold; font-style: normal; text-decoration: underline">ATTESTATION DE TRAVAIL<br />
    <br />
    </center>

    <form id="form1" runat="server">
    <h1 style="font-size:xx-large; font-style: italic; color: #000000; letter-spacing: normal; font-weight: normal; height: 215px;">je soussigné monsieur mahjoub ahmed Directeur génerale de la direction régionale de tunis,atteste pour la présente que Mr/Mme
     <asp:TextBox ID="tb_nomprenom" runat="server" Font-Italic="True" 
            Font-Size="X-Large" text-align= "center" Width="200px"></asp:TextBox>
        travaille au sein de notre entreprise en qualité d&#39;agent de<asp:TextBox ID="tb_typeagent" 
            runat="server" Font-Italic="True" Font-Size="X-Large" 
            text-align= "center" Width="153px" style="margin-left: 12px"></asp:TextBox>En foi de quoi,la presente Attestation lui est délivrée pour servir et valoir ce que de droit.
     </h1>
   
     <h1 style="font-size: large; font-weight: normal; text-align: right; text-decoration: underline;">Le Directeur Général</h1><br /><br />
     <h1 style="font-size: large; font-weight: normal; text-align: right; ">Tunis le 
         <asp:TextBox ID="tb_temp" runat="server"></asp:TextBox> </h1>
      <div align="center">
      <center>
          

          <asp:TextBox ID="tb_matricule" runat="server"></asp:TextBox>
           <asp:ImageButton ID="search" runat="server"  Onclick="BT_chercher" ImageUrl="~/Styles/bouton_picto_recherche.png" style="margin-left: 29px" Width="24px"/>
              <asp:ImageButton ID="print" onclientclick="imprimer()" runat="server"  
              ImageUrl="~/Styles/bouton-print.gif" style="margin-left: 20px" 
              Width="22px" />
</center></div>
    </form>
</body>
</html>
