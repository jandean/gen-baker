	</div>
	<!-- container -->
	
<footer class="row text-center">
	<small>Copyright &copy;2014, The New Gen Baker</small>
</footer>


<script src="<?php echo base_url('javascripts/foundation.min.js'); ?>"></script>
<script src="<?php echo base_url('javascripts/nicEdit.js'); ?>"></script>
<script>
	$(document).foundation();
	bkLib.onDomLoaded(function() { nicEditors.allTextAreas({fullPanel : true, iconsPath : config.base+'images/nicEditorIcons.gif'}); });
</script>

</body>
</html>