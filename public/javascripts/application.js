function getObjectInfo(obj) {
  var parsed = obj.attr('id').split('-');
  return { type: parsed[0], id: parsed[1] };
}

function initReplyHook() {
  $('.reply-link').click(function() {
    $('#comment-form').insertAfter(this);
    var comment = $(this).closest('.comment');
    var parentId = getObjectInfo(comment).id;
    $('#comment-parent-id').attr('value', parentId);
    return false;
  });
}

function initVoteHook(type) {
  $('.vote-link').click(function() {
    var voteable = $(this).closest('.voteable');
    var voteWidget = voteable.find('.vote-widget');
    var voteableInfo = getObjectInfo(voteable);
    voteWidget.load('/vote', voteableInfo);
    return false;
  });
}

$(function() {
  initReplyHook();
  initVoteHook();
});
