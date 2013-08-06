<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="RadMenu" Src="~/Admin/Skins/DNNRadMenu/DNNRadMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="RadPanelBar" Src="~/Admin/Skins/DNNRadPanelBar/DNNRadPanelBar.ascx" %>
<%@ Register TagPrefix="ddr" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="ddr" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine"
  Assembly="DotNetNuke.Web.DDRMenu" %>
<script type="text/javascript">
//SEE status.js FOR DETAILS
var crisis_com_show_all_clear = false;
var crisis_com_campus = "iupui";
var crisis_com_show_output = "large";
</script>
<script type="text/javascript" src="/Portals/_default/Skins/UniversityCollege/js/status.js"></script>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
 
 
	<div class="topbar">
		<div class="container">
			<a href="http://www.iupui.edu/" alt="IUPUI Homepage"></a>
		</div>
	</div>
	<div class="masthead masthead-interior">
		<div class="container">
			<div class="left">
				<a id="ucol-home" href="http://uc.iupui.edu/" alt="University College Homepage"></a>
				<p id="logo"><dnn:LOGO runat="server" id="dnnLOGO" /></p>
			</div>
			<div class="right">
				<div id="user">
					<p>
						<dnn:USER runat="server" id="dnnUSER"  CssClass="user" /> <span class="loginSep">&nbsp;|&nbsp;</span>
						<dnn:LOGIN runat="server" id="dnnLOGIN"  CssClass="user" />
					</p>
<script>
$(function(){
  if ($('.user').text() == 'Login') {//Test its content
  $('.loginSep').hide(); //Hide "|" if necessary
  }
});
</script>
				</div>
				    <div id="VivoSearchPane" class="vivoSearch" runat="server"></div>
			</div>
			<div id="navigation">

			</div>
			<div class="interior-head">
				<div class="interior-content interior-header">
					<div id="IntHeadPane" class="ContentPane" runat="server"></div>
					<div id="interior-bar"></div>
				</div>
			</div>
			<div class="interior-container">
				<div id="ContentPane" class="ContentPane" runat="server"></div>
				<div class="interior-content">
					<div id="side-navigation">

						<ddr:MENU MenuStyle="TreeView" runat="server" />

						<div id="QuickLinksIntPane" class="ContentPane" runat="server"></div>
					</div>
					<div id="interior-body">
						<div id="IntBanner" class="ContentPane" runat="server"></div>
						<div id="IntContent" class="ContentPane interior-body-type" runat="server"></div>
						<div id="IntSecondaryContent" class="ContentPane" runat="server"></div>
						<div id="IntContentWide" class="ContentPane interior-body-type-wide" runat="server"></div>
					</div>
          
				</div>
				<br class="float-clear"/>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="container">
			<div id="left-footer">
				<div id="sub-navigation">
					<dnn:RADMENU runat="server" id="dnnSUBNAV" CssClass="nav" expandAnimationType="none" collapseAnimationType="none" collapseDelay="200" MaxLevel="0" enablePageIcons="false"/>
				</div>
				<ul class="footer-links first">
					<li><a href="http://www.indiana.edu">Indiana University</a></li> | 
					<li><a href="http://www.purdue.edu">Purdue University</a></li> | 
					<li><a href="http://www.iupui.edu">IUPUI</a></li>
				</ul>
				<ul class="footer-links">
					<li>Copyright &copy; 2002-2010 The Trustees of Indiana University</li> | 
					<li><a href="http://www.indiana.edu/comments/complaint.shtml">Copyright Complaints</a></li> | 
					<li><a href="http://www.uc.iupui.edu/aboutus/privacypolicy.aspx">Privacy Policy</a></li>
				</ul>			
			</div>
			<div class="footer-info">
				<div id="FooterInfoPane" class="ContentPane" runat="server"></div>
			</div>
		</div>
		<br class="float-clear" />
	</div>
