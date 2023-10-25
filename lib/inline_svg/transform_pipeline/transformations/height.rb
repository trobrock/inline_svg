# frozen_string_literal: true

module InlineSvg
  module TransformPipeline
    module Transformations
      class Height < Transformation
        def transform(doc)
          with_svg(doc) do |svg|
            svg['height'] = value
          end
        end
      end
    end
  end
end
