require 'rails_helper'

RSpec.describe ImageComponent, type: :component  do
  let(:component) { described_class.new(file: 'dracula/castle.jpg') }

  it 'renders an image tag with the specified file' do
    render_inline(component)

    expect(rendered_content).to include('<img src="/assets/dracula/castle-a3df72e6.jpg" />')
  end
end
