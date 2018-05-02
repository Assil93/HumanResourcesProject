<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Etat de pointage.aspx.vb" Inherits="PFE.Etat_de_pointage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h1>GESTION DE L'ETAT DE POINTAGE
   </h1>
   <br />
    <asp:Label ID="MATRICULE" runat="server" Text="MATRICULE" 
        ></asp:Label>
    <asp:TextBox ID="TB_MATRICULE_POINT" runat="server" 
        style="margin-left: 60px; margin-top: 30px" Width="170px"></asp:TextBox>
        
        <br />
        <br />
    <asp:Label ID="LB_NOM_POINT" runat="server" Text="NOM ET PRENOM"></asp:Label>
    <asp:TextBox ID="TB_NOM_POINT" runat="server" style="margin-left: 20px" 
        Width="170px"></asp:TextBox>
        <asp:Button ID="BT_CONSULTER_POINT" runat="server" Text="CONSULTER" Width="112px" 
        style="margin-left: 140px; font-weight: bold;" BackColor="#99FF33" 
        ForeColor="White" Height="25px"/>
        <br />
    <br />
    <asp:Label ID="LB_MOIS" runat="server" Text="MOIS"></asp:Label>
    <asp:DropDownList ID="dll_mois1" runat="server" 
        style="margin-left: 96px" Width="170px">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>janvier 2014</asp:ListItem>
        <asp:ListItem>fevrier 2014</asp:ListItem>
        <asp:ListItem>mars 2014</asp:ListItem>
        <asp:ListItem>avril 2014</asp:ListItem>
        <asp:ListItem>mai 2014</asp:ListItem>
        <asp:ListItem>juin 2014</asp:ListItem>
        <asp:ListItem>juillier 2014</asp:ListItem>
        <asp:ListItem>aout 2014</asp:ListItem>
        <asp:ListItem>septembre 2014</asp:ListItem>
        <asp:ListItem>octobre 2014</asp:ListItem>
        <asp:ListItem>novembre 2014</asp:ListItem>
        <asp:ListItem>decembre 2014</asp:ListItem>
    </asp:DropDownList>
   
    <br />
    <br />
    <asp:Label ID="type_agent" runat="server" Text="TYPE AGENT"></asp:Label>
    
        <asp:DropDownList ID="dll_typeagent1" runat="server" 
        style="margin-left: 54px" Width="170px">
        
        <asp:ListItem>GARDIENNAGE</asp:ListItem>
        <asp:ListItem>NETTOYAGE</asp:ListItem>
    </asp:DropDownList>
    <asp:Calendar ID="Calendar1" runat="server" 
        style="margin-left: 700px; margin-top: -200px" BackColor="#FFFFCC" 
        BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
        Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="95px" 
        ShowGridLines="True" Width="220px" >
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
            ForeColor="#FFFFCC" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
    </asp:Calendar>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView_POINT" runat="server" onpageindexchanging="GridView_POINT_PageIndexChanging"  
    onrowcancelingedit="GridView_POINT_RowCancelingEdit"  
    onrowdatabound="GridView_POINT_RowDataBound" onrowdeleting="GridView_POINT_RowDeleting"  
    onrowediting="GridView_POINT_RowEditing" onrowupdating="GridView_POINT_RowUpdating"  
    onsorting="GridView_POINT_Sorting" ShowFooter="True"
        AutoGenerateColumns="False"  style="margin-top: 40px; margin-left: -12px" 
    BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        Width="915px">
        <Columns>
            <asp:TemplateField HeaderText="Id_Pointage" SortExpression="IdPointage">
            
            <ItemTemplate> 
                <asp:Label ID="lb_idpointage" runat="server" width="80px" Text='<%# Bind("id_pointage") %>'></asp:Label> 
            </ItemTemplate> 
            <FooterTemplate>
             <asp:TextBox ID="tb_idpointage" runat="server"  width="80px"></asp:TextBox> 
            </FooterTemplate>
                <ItemStyle Font-Size="Smaller" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Matricule"  SortExpression="Matricule">
            
            <ItemTemplate> 
                <asp:Label ID="lb_matricule" runat="server"  width="80px" Text='<%# Bind("Matricule") %>'></asp:Label> 
            </ItemTemplate> 
            <FooterTemplate>
            <asp:TextBox id="tb_matricule"  runat="server"  width="80px"></asp:TextBox>  
            </FooterTemplate>  
            <ItemStyle Font-Size="Smaller" />
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Nom et Prenom"  SortExpression="NomPrenom">
            
            <ItemTemplate> 
                <asp:Label ID="lb_nomprenom" runat="server"  width="80px" Text='<%# Bind("Nom_Prenom") %>'></asp:Label> 
            </ItemTemplate> 
            <FooterTemplate>
            <asp:TextBox id="tb_nomprenom"  width="80px" runat="server"></asp:TextBox>  
            </FooterTemplate> 
            <ItemStyle Font-Size="Smaller" /> 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Type Agent" SortExpression="TypeAgent" >
          
             
            <ItemTemplate> 
                <asp:Label ID="lb_typeagent" runat="server" width="80px" Text='<%# Bind("type_agent") %>'></asp:Label> 
            </ItemTemplate> 
            <FooterTemplate>
                <asp:DropDownList ID="dll_typeagent2" width="80px" runat="server">
                <asp:ListItem>GARDIENNAGE</asp:ListItem>
                <asp:ListItem>NETTOYAGE</asp:ListItem>
                </asp:DropDownList>
            </FooterTemplate> 
            <ItemStyle Font-Size="Smaller" /> 
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mois" SortExpression="Mois">
            <EditItemTemplate>
             <asp:DropDownList ID="dll_mois2" width="80px"  runat="server">
        <asp:ListItem>--------------</asp:ListItem>
        <asp:ListItem>janvier 2014</asp:ListItem>
        <asp:ListItem>fevrier 2014</asp:ListItem>
        <asp:ListItem>mars 2014</asp:ListItem>
        <asp:ListItem>avril 2014</asp:ListItem>
        <asp:ListItem>mai 2014</asp:ListItem>
        <asp:ListItem>juin 2014</asp:ListItem>
        <asp:ListItem>juillier 2014</asp:ListItem>
        <asp:ListItem>aout 2014</asp:ListItem>
        <asp:ListItem>septembre 2014</asp:ListItem>
        <asp:ListItem>octobre 2014</asp:ListItem>
        <asp:ListItem>novembre 2014</asp:ListItem>
        <asp:ListItem>decembre 2014</asp:ListItem>
    </asp:DropDownList>
            </EditItemTemplate> 
            <ItemTemplate> 
                <asp:Label ID="lb_mois" runat="server" width="80px" Text='<%# Bind("mois") %>'></asp:Label> 
            </ItemTemplate>
            <FooterTemplate>
            <asp:DropDownList ID="dll_mois2" width="80px" runat="server">
        <asp:ListItem>--------------</asp:ListItem>
        <asp:ListItem>janvier 2014</asp:ListItem>
        <asp:ListItem>fevrier 2014</asp:ListItem>
        <asp:ListItem>mars 2014</asp:ListItem>
        <asp:ListItem>avril 2014</asp:ListItem>
        <asp:ListItem>mai 2014</asp:ListItem>
        <asp:ListItem>juin 2014</asp:ListItem>
        <asp:ListItem>juillier 2014</asp:ListItem>
        <asp:ListItem>aout 2014</asp:ListItem>
        <asp:ListItem>septembre 2014</asp:ListItem>
        <asp:ListItem>octobre 2014</asp:ListItem>
        <asp:ListItem>novembre 2014</asp:ListItem>
        <asp:ListItem>decembre 2014</asp:ListItem>
    </asp:DropDownList>
            </FooterTemplate> 
            <ItemStyle Font-Size="Smaller" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Jour Repos" SortExpression="JourRepos">
            <EditItemTemplate>
             <asp:DropDownList ID="dll_jourrepos" width="80px" runat="server">
        <asp:ListItem>--------------</asp:ListItem>
        <asp:ListItem>lundi</asp:ListItem>
        <asp:ListItem>mardi</asp:ListItem>
        <asp:ListItem>mercredi</asp:ListItem>
        <asp:ListItem>jeudi</asp:ListItem>
        <asp:ListItem>vendredi</asp:ListItem>
        <asp:ListItem>samedi</asp:ListItem>
        <asp:ListItem>dimanche</asp:ListItem>
    </asp:DropDownList>
            </EditItemTemplate> 
            <ItemTemplate> 
                <asp:Label ID="lb_jourrepos" runat="server" width="80px" Text='<%# Bind("jour_repos") %>'></asp:Label> 
            </ItemTemplate> 
            <FooterTemplate>
              <asp:DropDownList ID="dll_jourrepos" width="80px" runat="server">
        <asp:ListItem>--------------</asp:ListItem>
        <asp:ListItem>lundi</asp:ListItem>
        <asp:ListItem>mardi</asp:ListItem>
        <asp:ListItem>mercredi</asp:ListItem>
        <asp:ListItem>jeudi</asp:ListItem>
        <asp:ListItem>vendredi</asp:ListItem>
        <asp:ListItem>samedi</asp:ListItem>
        <asp:ListItem>dimanche</asp:ListItem>
    </asp:DropDownList>
            </FooterTemplate>
            <ItemStyle Font-Size="Smaller" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Jour Férié" SortExpression="JouFerie">
            <EditItemTemplate>
             <asp:TextBox ID="tb_jourferie" runat="server" width="80px" Text='<%# Bind("jour_ferie") %>'></asp:TextBox> 
            </EditItemTemplate> 
            <ItemTemplate> 
                <asp:Label ID="lb_jourferie" runat="server" width="80px" Text='<%# Bind("jour_ferie") %>'></asp:Label> 
            </ItemTemplate> 
            <FooterTemplate>
            <asp:TextBox ID="tb_jourferie" runat="server" width="80px"></asp:TextBox> 
            </FooterTemplate>
            <ItemStyle Font-Size="Smaller" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Pointage Prv" SortExpression="PointagePrv">
            <EditItemTemplate>
             <asp:TextBox ID="tb_pointageprv" runat="server" width="80px" Text='<%# Bind("pointage_prv") %>'></asp:TextBox> 
            </EditItemTemplate> 
            <ItemTemplate> 
                <asp:Label ID="lb_pointageprv" runat="server"  width="80px" Text='<%# Bind("pointage_prv") %>'></asp:Label> 
            </ItemTemplate> 
            <FooterTemplate>
             <asp:TextBox ID="tb_pointageprv" runat="server" width="80px"></asp:TextBox> 
            </FooterTemplate>
            <ItemStyle Font-Size="Smaller" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Pointage Effec" SortExpression="PointageEffec">
            <EditItemTemplate>
             <asp:TextBox ID="tb_pointageeffec" runat="server" width="80px" Text='<%# Bind("pointage_effec") %>'></asp:TextBox> 
            </EditItemTemplate> 
            <ItemTemplate> 
                <asp:Label ID="lb_pointageeffec" runat="server" width="80px" Text='<%# Bind("pointage_effec") %>'></asp:Label> 
            </ItemTemplate> 
            <FooterTemplate>
            <asp:TextBox ID="tb_pointageeffec" runat="server" width="80px"></asp:TextBox> 
            </FooterTemplate>
            <ItemStyle Font-Size="Smaller" />
            </asp:TemplateField>
             <asp:TemplateField>
           <FooterTemplate>
        <asp:ImageButton ID="btnAdd" runat="server"  OnClick = "AddNewpointage" 
             ImageUrl="~/Styles/save-2.png" />
            </FooterTemplate>
            
            </asp:TemplateField>
            <asp:CommandField ShowSelectButton="True" ButtonType="Image" 
                SelectImageUrl="~/Styles/tick_32px.png" >
            </asp:CommandField>
            <asp:CommandField 
                ShowEditButton="True" ButtonType="Image" 
                EditImageUrl="~/Styles/btn_update_off.gif" 
                UpdateImageUrl="~/Styles/save-2.png" 
                CancelImageUrl="~/Styles/bouton_fermer.png" CancelText="" DeleteText="" 
                EditText="" InsertText="" NewText="" SelectText="" UpdateText="" >
            </asp:CommandField>
            <asp:CommandField 
                ShowDeleteButton="True" ButtonType="Image" 
                DeleteImageUrl="~/Styles/btn_delete_off.gif" >
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#0099CC" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <br />
    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" 
        ImageUrl="~/Styles/ikonki-knopku-dobavi-13760586483254.jpg" 
        style="margin-left: 20px" Width="45px" />
    
    
        <br />
</asp:Content>
