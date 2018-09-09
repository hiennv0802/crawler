class ImageDownloaderService
	require "open-uri"

	attr_accessor :list_link

	def initialize list_link
		@list_link = list_link
	end

	def download_images
		post_ids = Post.pluck :post_id
		list_link.each do |image|
			unless post_ids.include?(image[:post_id])
				Post.create(image)
				get_single_image(image[:link])
			end
		end
	end

	private
	def get_single_image(url)
	  base_folder = ENV["HOME"] + "/google-drive"
	  
  	Dir.chdir(base_folder) do
    	File.open(File.basename(url, File.extname(url)), "wb"){ |f| 
      	f.write(open(url).read)
    	}
  	end
  end
end