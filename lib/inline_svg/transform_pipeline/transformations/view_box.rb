# frozen_string_literal: true

module InlineSvg
  module TransformPipeline
    module Transformations
      class ViewBox < Transformation
        def transform(doc)
          with_svg(doc) do |svg|
            svg['viewBox'] = value
          end
        end
      end
    end
  end
end
