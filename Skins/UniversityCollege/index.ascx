<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="RadMenu" Src="~/Admin/Skins/DNNRadMenu/DNNRadMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="YEAR" Src="~/Admin/Skins/currentyear.ascx" %>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<meta name="viewport" content="width=device-width">
	 <div class="topbar">
	<div class="container1">
			<a href="http://www.iupui.edu/" alt="IUPUI Homepage"><img src="Portals/_default/Skins/UniversityCollege/img/trident-tab.gif" height="73" width="64" alt=" "></a>
		</div>
        <div class="container">
			<a href="http://www.iupui.edu/" alt="IUPUI Homepage"><img class="IULogo" src="Portals/_default/Skins/UniversityCollege/img/IULOGO.png" alt=" "></a>
		</div>
	</div>
<script type="text/javascript">
//SEE status.js FOR DETAILS
var crisis_com_show_all_clear = false;
var crisis_com_campus = "iupui";
var crisis_com_show_output = "large";
</script>
<script type="text/javascript" src="/Portals/_default/Skins/UniversityCollege/js/status.js"></script>
	<div class="all">
	<div class="masthead">
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
				<dnn:RADMENU runat="server" id= "dnnMENU" EnableEmbeddedSkins="false" CssClass="nav" expandAnimationType="none" collapseAnimationType="none" collapseDelay="200" expandDelay="200" enablePageIcons="false"/>  
			</div>
			<div id="BannerPane" class="ContentPane" runat="server"></div>
			<div id="QuicklinksPane" class="ContentPane" runat="server"></div>
			<br class="float-clear" />
		</div>
	</div>
	<div id="NotificationPane" runat="server"></div>
	<div class="main-body">
		<div class="container">
			<div id="ContentPane" class="ContentPane" runat="server"></div>
		</div>
        	
		<div class="container">
			<div id="FirstPane" class="ContentPane" runat="server"></div>
			<div id="SecondPane" class="ContentPane" runat="server"></div>
			<div id="ThirdPane" class="ContentPane" runat="server"></div>
			<br class="float-clear"/>
		</div>
	</div>
<div class="footerIndex">
    <div class="footerTextIndexWrapper">
        <div class="footerTextIndex">
            <p>What Matters. Where it Matters.</p>
        </div>
        
    </div>
		<br />
		<div class="container">
			<div id="left-footer">
				<div id="sub-navigation">
					<dnn:RADMENU runat="server" id="dnnSUBNAV" CssClass="nav" expandAnimationType="none" collapseAnimationType="none" collapseDelay="200" MaxLevel="0" enablePageIcons="false" />
				</div>
				<ul class="footer-links first">
                	<li><a alt="IU Homepage" href="http://www.iu.edu/"><img width="22" height="26" alt="" src="Portals/_default/Skins/UniversityCollege/img/IUfooter.png" /></a></li>
				</ul>
				<ul class="footer-links" style="margin-top:10px !important;">
					<li><a href="http://www.iu.edu/copyright/index.shtml">Copyright</a> &copy; 2002-<dnn:YEAR runat="server" id="CopyrightYear"/> The Trustees of Indiana University</li> | 
					<li><a href="http://www.indiana.edu/comments/complaint.shtml">Copyright Complaints</a></li> | 
					<li><a href="http://www.iupui.edu/privacy/">Privacy Notice</a></li>
				</ul>			
			</div>
			<div class="footer-info">
				<div id="FooterInfoPane" class="ContentPane" runat="server"></div>
			</div>
		</div>
		<br class="float-clear" />
	</div>
	</div>
