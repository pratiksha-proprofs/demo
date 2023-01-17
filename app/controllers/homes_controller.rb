class HomesController < ApplicationController
	def index
		options = {
		  :username     => 'pratiksha@proprofs.com',
		  :password     => 'SQNfIVcTt5eCvBzKXJIJBFF2',
		  :site         => 'https://integration-test12.atlassian.net:443/',
		  :context_path => '',
		  :auth_type    => :basic
		}
	    client = JIRA::Client.new(options)
	    p = client.Project.find("10001")
	    p.issues.each do |i|
	    	binding.pry
	    end
	    # issue = client.Issue.build
	    # issue.save!({ "fields": { "project": { "key": "NEW" }, "summary": "New Summary", 'description': 'Servay response', 'assignee': "Aarif Hussain",  "issuetype": { "name": "Task" } } })
	end
end
