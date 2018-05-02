<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="congé.aspx.vb" Inherits="PFE.congé" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h1>GESTION DES CONGES
   </h1>
   <br />
   <asp:Label ID="MATRICULE" runat="server" Text="MATRICULE" 
        ></asp:Label>
    <asp:TextBox ID="TB_MATRICULE_CONG" runat="server" 
        style="margin-left: 60px; margin-top: 30px" Width="170px"></asp:TextBox>
        
        <br />
        <br />
    <asp:Label ID="LB_NOM_CONG" runat="server" Text="NOM ET PRENOM"></asp:Label>
    <asp:TextBox ID="TB_NOM_CONG" runat="server" style="margin-left: 20px" 
        Width="170px"></asp:TextBox>
        <asp:Button ID="BT_CONSULTER_CONG" runat="server" Text="CONSULTER" Width="112px" 
        style="margin-left: 140px; font-weight: bold;" BackColor="#99FF33" 
        ForeColor="White" Height="25px"/>
       
        <br />
        <br />
    <asp:Label ID="type_agent" runat="server" Text="TYPE AGENT"></asp:Label>
    
        <asp:DropDownList ID="dll_typeagent1" runat="server" 
        style="margin-left: 54px" Width="170px">
        <asp:ListItem>GARDIENNAGE</asp:ListItem>
        <asp:ListItem>NETTOYAGE</asp:ListItem>
    </asp:DropDownList>
    
    <br />
    
        <br />
          
    <asp:GridView ID="GridView_CONG" runat="server" AutoGenerateColumns="False"
        style="margin-left: -12px; margin-top: 21px" Width="915px"  onpageindexchanging="GridView_CONG_PageIndexChanging"  
    onrowcancelingedit="GridView_CONG_RowCancelingEdit"  
    onrowdatabound="GridView_CONG_RowDataBound" onrowdeleting="GridView_CONG_RowDeleting"  
    onrowediting="GridView_CONG_RowEditing" onrowupdating="GridView_CONG_RowUpdating"  
    onsorting="GridView_CONG_Sorting" ShowFooter="True" BackColor="White" BorderColor="#CCCCCC" 
           BorderStyle="None" BorderWidth="1px" CellPadding="3" >
        <Columns>
         
           <asp:TemplateField HeaderText="Id_conge" SortExpression="idabsence">
            
            <ItemTemplate> 
                <asp:Label ID="lb_idconge" runat="server" Width="80px" Text='<%# Bind("id_conge") %>'></asp:Label> 
            </ItemTemplate> 
            <FooterTemplate>
            <asp:TextBox id="tb_idconge" Width="80px" runat="server"  ></asp:TextBox>  
            </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Matricule" SortExpression="Matricule">
            
            <ItemTemplate> 
                <asp:Label ID="lb_matricule" runat="server" Width="80px" Text='<%# Bind("Matricule") %>'></asp:Label> 
            </ItemTemplate> 
            <FooterTemplate>
            <asp:TextBox id="tb_matricule"  runat="server" Width="80px"></asp:TextBox>  
            </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nom et Prénom" SortExpression="NomPrenom">
           
            <ItemTemplate> 
                <asp:Label ID="lb_nomprenom" runat="server" Width="80px" Text='<%# Bind("Nom_Prenom") %>'></asp:Label> 
            </ItemTemplate> 
            <FooterTemplate>
            <asp:TextBox id="tb_nomprenom"   runat="server" Width="80px" ></asp:TextBox>  
            </FooterTemplate> 
            </asp:TemplateField>
            
          
            <asp:TemplateField HeaderText="Type Agent" SortExpression="TypeAgent">
            
            <ItemTemplate> 
                <asp:Label ID="lb_typeagent" runat="server" Width="80px" Text='<%# Bind("type_agent") %>'></asp:Label> 
            </ItemTemplate> 
            <FooterTemplate>
             <asp:DropDownList ID="dll_typeagent2" Width="80px" runat="server" >
                <asp:ListItem>GARDIENNAGE</asp:ListItem>
                <asp:ListItem>NETTOYAGE</asp:ListItem>
                </asp:DropDownList>
            </FooterTemplate>
            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="Type congé" SortExpression="TypeCongé">
            <EditItemTemplate>
            <asp:DropDownList ID="dll_typeconge" Width="80px" runat="server" >
                <asp:ListItem>ANNUEL</asp:ListItem>
                <asp:ListItem>EXCEPTIONNEL</asp:ListItem>
                </asp:DropDownList>
            </EditItemTemplate> 
            <ItemTemplate> 
                <asp:Label ID="lb_typeconge" runat="server" Width="80px" Text='<%# Bind("type_conge") %>'></asp:Label> 
            </ItemTemplate> 
            <FooterTemplate>
            <asp:DropDownList ID="dll_typeconge" Width="80px" runat="server" >
                <asp:ListItem>ANNUEL</asp:ListItem>
                <asp:ListItem>EXCEPTIONNEL</asp:ListItem>
                </asp:DropDownList>
            </FooterTemplate>
            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="Date Debut Congé" SortExpression="DateDebutCongé">
            <EditItemTemplate>
             <asp:TextBox ID="tb_datedebutconge" runat="server" Width="80px" Text='<%# Bind("Date_debut_cong") %>'></asp:TextBox> 
            </EditItemTemplate> 
            <ItemTemplate> 
                <asp:Label ID="lb_datedebutconge" runat="server" Width="80px" Text='<%# Bind("Date_debut_cong") %>'></asp:Label> 
            </ItemTemplate> 
            <FooterTemplate>
            <asp:TextBox ID="tb_datedebutconge" runat="server" Width="80px" ></asp:TextBox> 
            </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date Fin Congé" SortExpression="DateFinAbsence">
            <EditItemTemplate>
             <asp:TextBox ID="tb_datefinconge" runat="server" Width="80px" Text='<%# Bind("Date_fin_cong") %>'></asp:TextBox> 
            </EditItemTemplate> 
            <ItemTemplate> 
                <asp:Label ID="lb_datefinconge" runat="server"  Width="80px" Text='<%# Bind("Date_fin_cong") %>'></asp:Label> 
            </ItemTemplate> 
            <FooterTemplate>
            <asp:TextBox ID="tb_datefinconge" runat="server" Width="80px" ></asp:TextBox> 
            </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Motif Congé" SortExpression="MotifCongé">
            <EditItemTemplate>
             <asp:TextBox ID="tb_motifconge" runat="server" Width="80px" Text='<%# Bind("motif_conge") %>'></asp:TextBox> 
            </EditItemTemplate> 
            <ItemTemplate> 
                <asp:Label ID="lb_motifconge" runat="server"  Width="80px" Text='<%# Bind("motif_conge") %>'></asp:Label> 
            </ItemTemplate> 
            <FooterTemplate>
            <asp:TextBox ID="tb_motifconge" runat="server"  Width="80px" ></asp:TextBox> 
            </FooterTemplate>
            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="Nbre Jour Congé" SortExpression="nbrejourconge">
            <EditItemTemplate>
             <asp:TextBox ID="tb_nbrejourconge" runat="server" Width="80px" Text='<%# Bind("nbre_total_cong") %>'></asp:TextBox> 
            </EditItemTemplate> 
            <ItemTemplate> 
                <asp:Label ID="lb_nbrejourconge" runat="server"  Width="80px"  Text='<%# Bind("nbre_total_cong") %>'></asp:Label> 
            </ItemTemplate> 
            <FooterTemplate>
            <asp:TextBox ID="tb_nbrejourconge" runat="server"  Width="80px" ></asp:TextBox> 
            </FooterTemplate>
            </asp:TemplateField>
          <asp:TemplateField>
           <FooterTemplate>
        <asp:ImageButton ID="btnAdd" runat="server"   OnClick="AddNewconge"
             ImageUrl="~/Styles/save-2.png" />
            </FooterTemplate>
            
            </asp:TemplateField>
          <asp:CommandField ButtonType="Image" ShowSelectButton="True" 
                SelectImageUrl="~/Styles/tick_32px.png" >

            </asp:CommandField>
            <asp:CommandField ButtonType="Image"  ShowEditButton="True" 
                EditImageUrl="~/Styles/btn_update_off.gif" 
                UpdateImageUrl="~/Styles/save-2.png" 
                CancelImageUrl="~/Styles/bouton_fermer.png" CancelText="" DeleteText="" 
                EditText="" InsertText="" NewText="" SelectText="" UpdateText="" >
            </asp:CommandField>
            <asp:CommandField ButtonType="Image" ShowDeleteButton="True" 
                DeleteImageUrl="~/Styles/btn_delete_off.gif"  >
            </asp:CommandField>
          
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#0099CC" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066"  Font-Size="Smaller" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
   
   <br />
   
    <asp:ImageButton ID="ImageButton1" runat="server" Height="29px" 
        ImageUrl="~/Styles/ikonki-knopku-dobavi-13760586483254.jpg" Width="39px" />
    <br />
    <br />
   
</asp:Content>
