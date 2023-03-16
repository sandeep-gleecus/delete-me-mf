class AssetUrlProcessor
  def self.call(input)
    context = input[:environment].context_class.new(input)
		# alternative regex
		# /asset-url\(["']?(.+?)["']?\)/
		# the one below it taken from Propshaft - tested against all MDN use cases
		# It will ignore urls, anchors and data images, and will handle spaces or no " and '
    data = input[:data].gsub(/url\(\s*["']?(?!(?:\#|data|http))([^"'\s)]+)\s*["']?\)/) do |_match|
      "url(#{context.asset_path($1)})"
    end
    {data: data}
  end
end

Sprockets.register_postprocessor 'text/css', AssetUrlProcessor
