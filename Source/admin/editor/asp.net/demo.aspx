<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" %>

<script runat="server">
protected void Page_Load(object sender, EventArgs e)
{
    this.Label1.Text = Request.Form["content1"];
}

</script>

<!doctype html>

<html>
<head runat="server">
    <meta charset="utf-8" />
    <title>KindEditor ASP.NET</title>
    <link href="editor/themes/default/default.css" rel="stylesheet" />
    <link href="editor/plugins/code/prettify.css" rel="stylesheet" />
    <script src="editor/kindeditor-all.js"></script>
    <script src="editor/kindeditor.js"></script>
    <script src="editor/lang/zh-CN.js"></script>
    <script src="editor/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('#content1', {
				cssPath : '../plugins/code/prettify.css',
				uploadJson : '../asp.net/upload_json.ashx',
				fileManagerJson : '../asp.net/file_manager_json.ashx',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
</head>
<body>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <form id="form1" runat="server">
        <textarea id="content1" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;" runat="server"></textarea>
        
    </form>
</body>
</html>
