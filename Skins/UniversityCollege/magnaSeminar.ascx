<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="RadMenu" Src="~/Admin/Skins/DNNRadMenu/DNNRadMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>

<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
 
 
	<div class="topbar">

	</div>
	<div class="masthead masthead-interior">
		<div class="container">
			<div class="right">
				<div id="user">
					<p>
						<dnn:USER runat="server" id="dnnUSER"  CssClass="user" /> &nbsp;|&nbsp;
						<dnn:LOGIN runat="server" id="dnnLOGIN"  CssClass="user" />
					</p>
				</div>
			</div>

			<div class="interior-container" style="width:1200px !important; margin-left:-120px;">
				<div id="ContentPane" class="ContentPane" runat="server"></div>
				<br class="float-clear"/>
			</div>
		</div>
	</div>
	
