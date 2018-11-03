require 'pry'

class Recipe
  attr_reader :label, :uri, :image, :url, :ingredients, :health_labels

  # def initialize(label, uri, image, options = {})
  #   raise ArgumentError if label == nil || label == "" || uri == nil || uri == "" || image == nil || image == ""
  #
  #   @label = label
  #   @uri = uri.split.('-')
  #   @image = image
  #
  #   @url = options[:url]
  #   @ingredients = options[:ingredients]
  #   @health_labels = options[:health_labels]
  # end

  def initialize(label, uri, image)
    raise ArgumentError, "need a label (got #{label})" if label == nil || label == ""
    raise ArgumentError, "need a uri (got #{uri})" if uri == nil || uri == ""
    raise ArgumentError, "need an image (got #{image})" if image == nil || image == ""

    # binding.pry

    @label = label
    @uri = uri
    @image = image
    #
    # @url = options[:url]
    # @ingredients = options[:ingredients]
    # @health_labels = options[:health_labels]
  end
end
