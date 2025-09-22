# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base

  def initialize(label:, link:, params:)
    @label = label
    @link = link
    @params = params
  end

end
