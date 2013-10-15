module ReleasesHelper
  
  def release_review
    if @release.review.length > 40
  		"introTextText reviews2"
  	else
  		"introTextText reviews"
  	end
  end
  
end
