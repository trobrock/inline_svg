# frozen_string_literal: true

module InlineSvg
  module TransformPipeline
    module Transformations
      class StyleAttribute < Transformation
        def transform(doc)
          with_svg(doc) do |svg|
            styles = svg['style'].to_s.split(';')
            styles << value
            svg['style'] = styles.join(';')
          end
        end
      end
    end
  end
end
