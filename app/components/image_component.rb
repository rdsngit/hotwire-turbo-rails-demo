# frozen_string_literal: true

class ImageComponent < ViewComponent::Base
  def initialize(file:)
    @file = file
  end
end
