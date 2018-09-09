class PostLinkService
	class << self
		def get_link
			fb_url = "https://m.facebook.com/devvui/"
			ua = "Mozilla/5.0 (Windows Phone 10.0; Android 6.0.1; WebView/3.0; NOKIA; Lumia 730 Dual SIM) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/55.100.7 Chrome/48.0.2564.82 Mobile Safari/537.36 Edge/14.14361"
			html = Unirest.get fb_url, headers: {"User-Agent": ua}
			doc = Nokogiri::HTML html.body
			list = []
			doc.xpath("//div").each do |c|
			  list << c["src"]
			end

			doc.xpath("//div[contains(@class, 'fr')]/a[contains(@class, 'fs')]").each do |c|
			  list << c['href']
			end

			puts list
		end
	end
end