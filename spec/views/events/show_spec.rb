describe 'events/show', :type => :view do
  context 'when render presenter with arguments' do
    before { render }

    it { expect(rendered).to eq 'arg1 = :arg1, arg2 = {:key=>:value}' }
  end
end