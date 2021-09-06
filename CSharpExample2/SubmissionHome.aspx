<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubmissionHome.aspx.cs" Inherits="CSharpExample2.SubmissionHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="frmsubmit" name="frmsubmit" method="post" action="SubmissionHome.aspx">
        <div>
            <label>Testing a form submission with JQuery</label>
            <input type="text" id="txttest" name="txttest" />
            <button id="btn-submit">Submit Button</button>
        </div>
    </form>
</body>
</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('#btn-submit').on('click', function (e) {
            e.preventDefault();
            $('#frmsubmit').submit();
        })
    });
</script>