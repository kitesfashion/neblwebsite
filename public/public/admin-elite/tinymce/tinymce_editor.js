$(document).ready(function () {
    var root_path = document.querySelector('meta[name="root_path"]').content;
    setTimeout(function () { //$(".message").hide('blind', {}, 500)); 
        $(".message").slideUp(1000).hide(1000);
    }, 5000);

    tinymce.init({
        selector: '.tinymce',
        height: 300,
        menubar: true,
        removed_menuitems: 'file',
        plugins: [
    "advlist autolink autosave link image lists charmap print preview hr anchor pagebreak",
    "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
    "table contextmenu directionality emoticons textcolor paste fullpage textcolor colorpicker textpattern"
  ],

  toolbar1: "fullpage | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | styleselect formatselect fontselect fontsizeselect",
  toolbar2: "cut copy paste | searchreplace | bullist numlist | outdent indent blockquote | undo redo | link unlink anchor image media code | insertdatetime preview | forecolor backcolor",
  toolbar3: "table | hr removeformat | subscript superscript | charmap emoticons | print fullscreen | ltr rtl | visualchars visualblocks nonbreaking pagebreak restoredraft",
        relative_urls : false,
        remove_script_host : false,
        convert_urls : false,
        content_css: [
            root_path+"/public/admin-elite/tinymce/css/tinymce-editor.css"
        ]
    });
});
