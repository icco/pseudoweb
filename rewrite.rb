#! /usr/bin/env ruby

require 'uri'
require 'open-uri'
require 'json'

uri = URI.parse("https://writing.natwelch.com/longform.json")
uri.open do |f|
  data = JSON.parse f.string

  data.each do |postslug, id|
    filename = "_posts/#{postslug}"
    new_url = "https://writing.natwelch.com/post/#{id}"
    content = <<-EOS
---

layout: redirect
redirect_to: #{new_url}

---

EOS

    File.open(filename, 'w') do |f|
      f.write content
    end
  end
end
