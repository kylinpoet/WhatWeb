##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "WhiteBoard"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-08-15
  # v0.2 # 2011-02-19 # Updated version detection. 
]
version "0.2"
description "WhiteBoard is a fast, powerful, and free open source discussion board solution."
website "http://sarosoftware.com/"

# Google rsults as at 2010-08-15 #
# 21 for "powered by Whiteboard"



# Matches #
matches [

# Copyright text
{ :text=>'			&copy; <a href="http://www.powerwd.com">SaroSoftware</a><br />', :certainty=>75 },

# Version Detection # Powered by text
{ :version=>/Powered By WhiteBoard ([\d\.]+)<br \/>/ },

# Version Detection # Powered by text HTML
{ :version=>/Powered By WhiteBoard <span id="version">([\d\.]+)<\/span><br \/>/ },

]

end

