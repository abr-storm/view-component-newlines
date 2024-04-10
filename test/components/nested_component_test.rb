# frozen_string_literal: true

require "test_helper"

class NestedComponentTest < ViewComponent::TestCase
  def test_must_not_raise
    assert_nothing_raised { render_inline(NestedComponent.new) }
  end

  def test_must_not_add_extra_newlines
    result = render_inline(NestedComponent.new)

    expected = Nokogiri::HTML5.parse <<~HTML
      <div data-wrapper="">
        <div data-root="">
          <span data-leaf="">Leaf</span>
          <span data-leaf="">Leaf</span>
          <span data-leaf="">Leaf</span>
        </div>
      </div>
    HTML

    assert_equal expected, result
  end
end
