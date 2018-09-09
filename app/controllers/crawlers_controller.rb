class CrawlersController < ApplicationController
	def show
		# @list_links = PostLinkService.get_link
		@list_links = [
			{title: "Phu thuy", link: "https://scontent.fsgn2-4.fna.fbcdn.net/v/t1.0-9/41158182_1884254238334612_7862174159176990720_n.jpg?_nc_cat=0&oh=bb0d0be8dda7400f8528bd3b64573161&oe=5C2EE6ED"},
			{title: "Dev vui", link: "https://scontent.fsgn2-4.fna.fbcdn.net/v/t1.0-9/41067170_1883321131761256_2518924759199121408_n.png?_nc_cat=0&oh=3474ad0d0e03d4a113750d15e588ae3d&oe=5C2A334C"}]
			ImageDownloaderService.new(@list_links).download_images
	end
end