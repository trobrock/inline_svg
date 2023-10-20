# frozen_string_literal: true

module InlineSvg
  module TransformPipeline
    module Transformations
      class IdAttribute < Transformation
        def transform(doc)
          with_svg(doc) do |svg|
            svg['id'] = value
          end
        end
      end
    end
  end
end
