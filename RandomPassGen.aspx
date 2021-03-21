<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RandomPassGen.aspx.cs" Inherits="RandomPassGen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"  />
    <%--<link rel="stylesheet" href="bootstrap-4.3.1-dist/bootstrap-4.3.1-dist/css/bootstrap.min.css" />--%>
    <%--<link rel="stylesheet" href="bootstrap-4.3.1-dist/bootstrap-4.3.1-dist/js/bootstrap.min.js" />--%>
    <title></title>
    <style>
        body{
            margin:0 0 0 0;
            box-sizing:border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif, serif;
            background-color:#489fb5;
        }

        .form{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            background-color: #edf2f4;
            border-radius: 5px;
            box-shadow: black 5px 5px 1em;
        }
        .tb{
            text-align:center;
            font-weight:bold;
        }
        .btns{
            align-items:center;
            margin:.5em;
            padding:0;
        }
        h5{
            margin:.5em;
            padding:.4em;
        }
    </style>
    <script>
        function copyFunction() {
            var copyText = document.getElementById('TextBox1');
            copyText.select();
            copyText.setSelectionRange(0, 9999);
            document.execCommand("copy");
            alert("Copied!");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form">
            <h5>Random Password Generator</h5>
            <div class="tb">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <%--<asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />--%>
            </div>
            <div class="btns">

                <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Generate" OnClick="Button1_Click" />
                <button onclick="copyFunction()" class="btn btn-info">Copy</button> 
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
            </div>
        </div>
    </form>
</body>
</html>
