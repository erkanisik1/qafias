    </div>

  </div>
</div>

</div>
<div class="row-fluid">
  <div id="footer" class="span12"> 2017 &copy; Erkan IŞIK <a href="http://trtemp.com">trtemp.com</a> </div>
</div>

<!--end-Footer-part-->
<script src="js/jquery.min.js"></script>
<script src="js/my.js"></script>
<script src="js/bootstrap.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.dashboard.js"></script> 
<script src="js/matrix.login.js"></script> 


<!--  

<script src="js/masked.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 

<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.form_validation.js"></script> 
<script src="js/jquery.wizard.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.tables.js"></script> 
<script src="js/matrix.form_common.js"></script>

<script src="js/bootstrap-wysihtml5.js"></script>
<script src="js/formToWizard.js"></script>


-->
<script type="text/javascript">
  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

      // if url is empty, skip the menu dividers and reset the menu selection to default
      if (newURL != "") {
      
          // if url is "-", it is this page -- reset the menu:
          if (newURL == "-" ) {
              resetMenu();            
          } 
          // else, send page to designated URL            
          else {  
            document.location.href = newURL;
          }
      }
  }

  //$('.textarea_editor').wysihtml5();

// resets the menu selection upon entry to this page:
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
</script>
