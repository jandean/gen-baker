$(function() {
  $("a.fb_share").on('click', function(){
    window.open('http://www.facebook.com/sharer/sharer.php?u='+$(this).data('url')+'&t='+$(this).data('title'), 'facebook_share', 'height=320, width=640, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, directories=no, status=no');
  });

  $("a.tweet").on('click', function(){
    window.open('http://twitter.com/intent/tweet?text='+$(this).data('title')+'+'+$(this).data('url'), 'tweet', 'height=320, width=640, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, directories=no, status=no');
  });

});