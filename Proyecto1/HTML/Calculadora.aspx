<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="Proyecto1.Calculadora" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculadora Web</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .calculator {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 10px;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .calculator input[type="text"] {
            grid-column: span 4;
            height: 50px;
            text-align: right;
            font-size: 24px;
            padding: 0 10px;
            margin-bottom: 10px;
        }

        .calculator button {
            height: 50px;
            font-size: 18px;
            border: none;
            background-color: #007bff;
            color: white;
            cursor: pointer;
            border-radius: 5px;
        }

        .calculator button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="calculator">
            <asp:TextBox ID="display" runat="server" ReadOnly="true" Text="0" />

            <asp:Button ID="ButtonC" runat="server" Text="C" OnClick="Button_Click" />
            <asp:Button ID="ButtonLParen" runat="server" Text="(" OnClick="Button_Click" />
            <asp:Button ID="ButtonRParen" runat="server" Text=")" OnClick="Button_Click" />
            <asp:Button ID="ButtonPower" runat="server" Text="xʸ" OnClick="Button_Click" />

            <asp:Button ID="Button7" runat="server" Text="7" OnClick="Button_Click" />
            <asp:Button ID="Button8" runat="server" Text="8" OnClick="Button_Click" />
            <asp:Button ID="Button9" runat="server" Text="9" OnClick="Button_Click" />
            <asp:Button ID="ButtonDivide" runat="server" Text="/" OnClick="Button_Click" />

            <asp:Button ID="Button4" runat="server" Text="4" OnClick="Button_Click" />
            <asp:Button ID="Button5" runat="server" Text="5" OnClick="Button_Click" />
            <asp:Button ID="Button6" runat="server" Text="6" OnClick="Button_Click" />
            <asp:Button ID="ButtonMultiply" runat="server" Text="*" OnClick="Button_Click" />

            <asp:Button ID="Button1" runat="server" Text="1" OnClick="Button_Click" />
            <asp:Button ID="Button2" runat="server" Text="2" OnClick="Button_Click" />
            <asp:Button ID="Button3" runat="server" Text="3" OnClick="Button_Click" />
            <asp:Button ID="ButtonMinus" runat="server" Text="-" OnClick="Button_Click" />

            <asp:Button ID="Button0" runat="server" Text="0" OnClick="Button_Click" />
            <asp:Button ID="ButtonDot" runat="server" Text="." OnClick="Button_Click" />
            <asp:Button ID="ButtonEquals" runat="server" Text="=" OnClick="Button_Click" />
            <asp:Button ID="ButtonPlus" runat="server" Text="+" OnClick="Button_Click" />
        </div>
    </form>
</body>
</html>
