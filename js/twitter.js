function natTwitterCallback(twitters) {
   /* born from twitter's code */
   var statusHTML = [];
   if (twitters.length < 1)
      twitters.push({"favorited":false,
            "in_reply_to_user_id":null,
            "in_reply_to_status_id":null,
            "in_reply_to_screen_name":null,
            "contributors":null,
            "created_at":"Fri Jan 29 07:19:25 +0000 2010",
            "source":"web",
            "user":{"friends_count":320,
               "url":"http://natwelch.com",
               "description":"A solution looking for a problem. CSC Student at Cal Poly SLO and Developer for iFixit.",
               "notifications":null,
               "time_zone":"Pacific Time (US & Canada)",
               "profile_sidebar_fill_color":"DDEEF6",
               "followers_count":297,
               "favourites_count":188,
               "created_at":"Fri Apr 06 01:38:20 +0000 2007",
               "profile_sidebar_border_color":"C0DEED",
               "statuses_count":2352,
               "verified":false,
               "profile_image_url":"http://a3.twimg.com/profile_images/586858529/4074679630_b498297f2e_b_normal.jpg",
               "contributors_enabled":false,
               "profile_text_color":"333333",
               "lang":"en",
               "profile_background_image_url":"http://s.twimg.com/a/1264550348/images/themes/theme1/bg.png",
               "protected":false,
               "screen_name":"icco",
               "following":null,
               "geo_enabled":true,
               "profile_link_color":"0084B4",
               "location":"93401",
               "name":"Nat Welch",
               "profile_background_tile":false,
               "id":3576561,
               "utc_offset":-28800,
               "profile_background_color":"C0DEED"},
            "geo":null,
            "truncated":false,
            "id":8359006004,
            "text":"No man's knowledge can go beyond his experience. \n -- John Locke"
      });

   var done = false
   for (var i = 0; !done; i++){
      if (twitters[i].text[0] == '@') {
         done = i > twitters.length;
      } else {
         var username = twitters[i].user.screen_name;
         var status = twitters[i].text.replace(/((https?|s?ftp|ssh)\:\/\/[^"\s\<\>]*[^.,;'">\:\s\<\>\)\]\!])/g, function(url) {
            // url linking
            return '<a href="'+url+'">'+url+'</a>';
         }).replace(/\B@([_a-z0-9]+)/ig, function(reply) {
            // @username linking
            return reply.charAt(0)+'<a href="http://twitter.com/'+reply.substring(1)+'">'+reply.substring(1)+'</a>';
         }).replace(/\B#([_a-z0-9]+)/ig, function(repy) {
            // hashtag linking
            return repy.charAt(0)+'<a href="http://twitter.com/search?q=%23'+repy.substring(1)+'">'+repy.substring(1)+'</a>';
         });

         statusHTML.push('<li><span>'+status+'</span> <a style="font-size:85%" href="http://twitter.com/'+username+'/statuses/'+twitters[i].id+'">'+relative_time(twitters[i].created_at)+'</a></li>');

         done = true;
      }
   }

   document.getElementById('twitter_update_list').innerHTML = statusHTML.join('');
}

function relative_time(time_value) {
   var values = time_value.split(" ");
   time_value = values[1] + " " + values[2] + ", " + values[5] + " " + values[3];
   var parsed_date = Date.parse(time_value);
   var relative_to = (arguments.length > 1) ? arguments[1] : new Date();
   var delta = parseInt((relative_to.getTime() - parsed_date) / 1000);
   delta = delta + (relative_to.getTimezoneOffset() * 60);

   if (delta < 60) {
      return 'less than a minute ago';
   } else if(delta < 120) {
      return 'about a minute ago';
   } else if(delta < (60*60)) {
      return (parseInt(delta / 60)).toString() + ' minutes ago';
   } else if(delta < (120*60)) {
      return 'about an hour ago';
   } else if(delta < (24*60*60)) {
      return 'about ' + (parseInt(delta / 3600)).toString() + ' hours ago';
   } else if(delta < (48*60*60)) {
      return '1 day ago';
   } else {
      return (parseInt(delta / 86400)).toString() + ' days ago';
   }
}
