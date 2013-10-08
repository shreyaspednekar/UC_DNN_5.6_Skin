<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ACTIONS" Src="~/Admin/Containers/SolPartActions.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ACTIONBUTTON" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MODULEACTIONSMENU" Src="~/DesktopModules/WatchersNET.SkinObjects.ModuleActionsMenu/ModuleActionsMenu.ascx" %>

<dnn:ACTIONS runat="server" id="dnnACTIONS"  ProviderName="DNNMenuNavigationProvider" ExpandDepth="1" PopulateNodesFromClient="True" />
<dnn:moduleactionsmenu id="dnnMODULEACTIONSMENU" runat="server" includejs="True" MenuIcon='~/DesktopModules/WatchersNET.SkinObjects.ModuleActionsMenu/skins/action.png' DisplayIcon='True' cssfile="ModuleMenu-White" IncludeCssFile="True" contextmode="True"></dnn:moduleactionsmenu>
<div class="notification notification-container">
	<div class="container">
		<div id="notification-icon"></div>

		<div id="ContentPane" runat="server">
			<div><h3 class="notification-title"><dnn:TITLE runat="server" id="dnnTITLE" CssClass="dnn-notification"/></h3></div>
		</div>
	</div>
</div>
	<div class="c_footer">
	    <dnn:ACTIONBUTTON runat="server" id="dnnACTIONBUTTON1"  CommandName="AddContent.Action" DisplayIcon="True" DisplayLink="True" />
		<dnn:ACTIONBUTTON runat="server" id="dnnACTIONBUTTON4"  CommandName="ModuleSettings.Action" DisplayIcon="True" DisplayLink="False" />
	</div>
