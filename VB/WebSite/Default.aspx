<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>How to rotate column header text 90-degrees in ASPxGridView</title>
	<style type="text/css">
		.verticalHeader {
			width: 100px;
			padding-top: 50px;
			padding-bottom: 40px;
			background-color: #dcdcdc;

			-webkit-transform: rotate(90deg);
			-moz-transform: rotate(90deg);
			-ms-transform: rotate(-90deg);
			-o-transform: rotate(90deg);
			transform: rotate(-90deg);

			-webkit-transform-origin: 50% 50%;
			-moz-transform-origin: 50% 50%;
			-ms-transform-origin: 50% 50%;
			-o-transform-origin: 50% 50%;
			transform-origin: 50% 50%;

			filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=1);
		}
	</style>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<dx:ASPxGridView ID="gv" runat="server" DataSourceID="ds"
				AutoGenerateColumns="False" KeyFieldName="EmployeeID">
				<Columns>
					<dx:GridViewDataTextColumn FieldName="EmployeeID" ReadOnly="True"
						VisibleIndex="0">
						<EditFormSettings Visible="False" />
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="LastName" VisibleIndex="1">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="FirstName" VisibleIndex="2">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="Title" VisibleIndex="3">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="Notes" VisibleIndex="4">
					</dx:GridViewDataTextColumn>
				</Columns>
				<Templates>
					<HeaderCaption>
						<div class="verticalHeader"><%#Container.DataItem%></div>
					</HeaderCaption>
				</Templates>
			</dx:ASPxGridView>
		</div>
		<asp:AccessDataSource ID="ds" runat="server" DataFile="~/App_Data/nwind.mdb"
			SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [Title], [Notes] FROM [Employees]" />
	</form>
</body>
</html>