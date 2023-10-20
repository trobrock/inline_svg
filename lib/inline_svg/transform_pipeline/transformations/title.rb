# frozen_string_literal: true

module InlineSvg
  module TransformPipeline
    module Transformations
      class Title < Transformation
        def transform(doc)
          with_svg(doc) do |svg|
            node = Nokogiri::XML::Node.new('title', doc)
            node.content = value

            svg.search('title').each(&:remove)
            svg.prepend_child(node)
          end
        end
      end
    end
  end
end
