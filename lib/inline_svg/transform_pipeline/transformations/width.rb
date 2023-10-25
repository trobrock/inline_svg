# frozen_string_literal: true

module InlineSvg
  module TransformPipeline
    module Transformations
      class Width < Transformation
        def transform(doc)
          with_svg(doc) do |svg|
            svg['width'] = value
          end
        end
      end
    end
  end
end
