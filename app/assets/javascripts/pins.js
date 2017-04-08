$(function() {
  return $('#brick').imagesLoaded(function() {
    return $('#brick').masonry({
      itemSelector: '.box',
      isFitWidth: true
    });
  });
});
