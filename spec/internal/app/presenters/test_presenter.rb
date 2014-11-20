class TestPresenter < Vicar::BasePresenter
  def show(arg1, arg2)
    render 'presenters/test/show', :arg1 => arg1, :arg2 => arg2
  end
end