<%--
  Created by IntelliJ IDEA.
  User: miqng
  Date: 1/16/2021
  Time: 11:36 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://cdn.tiny.cloud/1/ml21qe68qmfs4vhxnafuy02pqqrrgbwf5oi4bbnw7urhii3c/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
</head>
<body>
<textarea>
    Welcome to TinyMCE!
  </textarea>
<script>
    tinymce.init({
        selector: 'textarea',
        plugins: 'a11ychecker advcode table advlist lists image media anchor hr link autoresize',
        toolbar: 'a11ycheck | formatselect bold forecolor backcolor | bullist numlist | link image media anchor | table | code',
        a11y_advanced_options: true,
        a11ychecker_html_version: 'html5',
        a11ychecker_level: 'aaa',
        height: 600,
        content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:14px }'
    });
</script>
</body>
</html>
