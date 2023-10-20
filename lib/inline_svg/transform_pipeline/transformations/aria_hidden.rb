# frozen_string_literal: true

module InlineSvg
  module TransformPipeline
    module Transformations
      class AriaHidden < Transformation
        def transform(doc)
          with_svg(doc) do |svg|
            svg['aria-hidden'] = value
          end
        end
      end
    end
  end
end
