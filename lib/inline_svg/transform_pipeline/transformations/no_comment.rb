# frozen_string_literal: true

module InlineSvg
  module TransformPipeline
    module Transformations
      class NoComment < Transformation
        def transform(doc)
          with_svg(doc) do |svg|
            svg.xpath('//comment()').each(&:remove)
          end
        end
      end
    end
  end
end
