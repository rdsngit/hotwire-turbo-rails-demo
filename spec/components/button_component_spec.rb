require 'rails_helper'

RSpec.describe ButtonComponent, type: :component  do
  let(:component) { described_class.new(label: "Dracula Castle", link: 'image_dracula_path', params: { image: 'castle' }) }

  it 'renders a button with the specified label, link and params' do
    render_inline(component)

    expect(rendered_content).to include("Dracula Castle")
    expect(rendered_content).to include('action="image_dracula_path"')
    expect(rendered_content).to include('value="castle"')
  end
end
