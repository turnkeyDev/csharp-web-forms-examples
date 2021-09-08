<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubmissionHome.aspx.cs" Inherits="CSharpExample2.SubmissionHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <div class="container-fluid">
        <form id="frmsubmit" name="frmsubmit" method="post" action="SubmissionHome.aspx">
            <div class="row">
                <div class="col col-lg-12">
                    <label>Testing a form submission with JQuery</label>
                    <input type="text" id="txttest" name="txttest" value="<%=TypedText %>" placeholder="<%=isSubmitted? "After Submission..." : "Before Submission..." %>"/>
                    <button id="btn-submit" class="btn btn-dark">Submit Button</button>
                </div>
            </div>
        </form>
        <div class="row">
            <div class="col col-lg-12">
                <button id="btn-modal-example" class="btn btn-primary">Modal</button>
            </div>
        </div>
    </div>
    <div class="modal fade" role="dialog" id="mod_example">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Test Modal</h5>
                    <button class="close" id="btnaddmodclose" data-dismiss="modal">×</button>
                </div>
                <div class="modal-body">
                    <p>This is a modal.</p>
                    <input type="hidden" id="hidcount" value="0" />
                </div>
                <div class="modal-footer">
                    <button type="button" data-dismiss="modal" class="btn btn-link">Cancel</button>
                    <button id="btn-reset" class="btn btn-danger">Reset Counter</button>
                    <button id="btn-count" class="btn btn-success">Count</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
    $(function () {
        $('#btn-submit').on('click', function (e) {
            e.preventDefault();
            $('#frmsubmit').submit();
        })
        $('#btn-modal-example').on('click', function () {
            $('#mod_example').modal('show');
        });
        $('#btn-count').on('click', function () {
            var currentCount = parseInt($('#hidcount').val());
            currentCount++;
            $('#hidcount').val(currentCount);
            toastr.success('Count is now ' + currentCount, 'Success');
        });
        $('#btn-reset').on('click', function () {
            $.ajax({
                url: "/SubmissionHomeHandler.ashx",
                dataType: 'json',
                contentType: "application/json; charset=uft-8",
                data: { c: parseInt($('#hidcount').val()) },
                type: 'POST',
                success: function (data) {
                    $('#hidcount').val(data);
                    toastr.success('The count has been reset to ' + data + '.', 'Success')
                },
                error: function (data) {
                    toastr.error('The counter could not be reset to 0. ' + data, 'Error');
                }
            });
        });
    });
</script>
