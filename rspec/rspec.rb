# spec/my_ui_framework_spec.rb
require 'spec_helper'

RSpec.describe flash::UI do
  it 'renders the UI components' do
    ui = flash::UI.new
    expect(ui.render).to include('Hello,Framework!')
  end
end
