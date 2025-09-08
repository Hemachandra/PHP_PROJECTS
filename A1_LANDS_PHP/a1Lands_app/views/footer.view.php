<script src="<?php echo $urlPath->assets_js('nice-select.min.js'); ?>"></script>
<script src="<?php echo $urlPath->assets_js('fontawesome.min.js'); ?>"></script>
<script src="<?php echo $urlPath->assets_js('main.js'); ?>"></script>

<script>
  function toggleServicesSublist(element) {
    const sublist = element.querySelector(".nested");
    if (sublist) {
      sublist.classList.toggle("active");
    }
  }
</script>
</body>
</html>