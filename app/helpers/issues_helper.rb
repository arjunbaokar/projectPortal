module IssuesHelper
	def printTags(issue)
		tags = Tag.where("issue_id = ?", issue.id)
		allTags = ""
		tags.each  do |tag|
			allTags = allTags + ", #" +tag.label
		end
		if allTags.length == 0
			allTags = "None"
		else
			allTags = allTags[2..allTags.length]
		end
		return allTags
	end

    def isFavIssue(id)
		issue = Issue.find(id)
	    favissue = FavoriteIssue.where("issue_id = ? AND user_id = ?", issue.id, current_user).limit(1)
	    p favissue
	    if favissue.empty?
	      return false
	    else
	      return true
	    end
	end

end
