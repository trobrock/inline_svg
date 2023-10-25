# frozen_string_literal: true

module InlineSvg
  module TransformPipeline
    module Transformations
      class AriaAttributes < Transformation
        def transform(doc)
          with_svg(doc) do |svg|
            # Add role
            svg['role'] = 'img'

            # Build aria-labelledby string

            aria_labelledby = build_aria_labelledby(svg)
            svg['aria-labelledby'] = aria_labelledby if aria_labelledby
          end
        end

        def element_id_for(base, element)
          if element['id'].nil?
            InlineSvg::IdGenerator.generate(base, element.text)
          else
            InlineSvg::IdGenerator.generate(element['id'], element.text)
          end
        end

        private

        def build_aria_labelledby(svg)
          aria_elements = []
          svg.search('title').each do |element|
            aria_elements << element['id'] = element_id_for('title', element)
          end

          svg.search('desc').each do |element|
            aria_elements << element['id'] = element_id_for('desc', element)
          end

          aria_elements.join(' ') if aria_elements.any?
        end
      end
    end
  end
end
