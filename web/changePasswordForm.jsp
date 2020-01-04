<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="change-pass" class="form-group">
    <label class="col-sm-3 control-label"></label>
    <div class="col-sm-8">
        <div class="row form-group">
            <label class="col-sm-3 control-label">Current</label>
            <div class="col-sm-8">
                <input type="password" class="form-control">
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-3 control-label">New</label>
            <div class="col-sm-8">
                <input type="password" class="form-control">
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-3 control-label">Retype new</label>
            <div class="col-sm-8">
                <input type="password" class="form-control">
            </div>
        </div>
        <div class="row form-group">
            <label class="col-sm-3 control-label"></label>
            <div class="col-sm-8">
                <button type="submit" class="btn btn-primary">Save</button>
                <button type="submit" class="btn btn-default">Cancel</button>
            </div>
        </div>
    </div>
</div>
<script>
    $("#change-pass").hide();
    var i = 1;
    $("#change-pass-bt").on('click', function () {
        if (i == 1) {
            $("#change-pass").show();
            i = 2;
        } else {
            $("#change-pass").hide();
            i = 1;
        }
    });
</script>
