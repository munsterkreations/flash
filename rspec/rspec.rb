# spec/my_ui_framework_spec.rb
require 'spec_helper'

RSpec.describe MyUiFramework::UI do
  it 'renders the UI components' do
    ui = MyUiFramework::UI.new
    expect(ui.render).to include('Hello, UI Framework!')
  end
end
