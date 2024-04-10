# frozen_string_literal: true

require "test_helper"

class SimpleInlineComponentTest < ViewComponent::TestCase
  def test_must_not_raise
    assert_nothing_raised { render_inline(SimpleInlineComponent.new) }
  end
end

