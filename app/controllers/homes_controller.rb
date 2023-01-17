class HomesController < ApplicationController
	def index
		options = {
		  :username     => 'pratiksha@proprofs.com',
		  :password     => 'zd5OjylIK6M4cKJSp1hND180',
		  :site         => 'https://integration-test12.atlassian.net:443/',
		  :context_path => '',
		  :auth_type    => :basic
		}
	    client = JIRA::Client.new(options)
	    issue = client.Issue.build
	    issue.save!({ "fields": { "project": { "key": "NEW" }, "summary": "Issue check", 'description': 'Look into this one', "issuetype": { "name": "Task" } } })
	end
end
