class HelloController < ApplicationController

  def index
    if request.post? then
      @title = 'Result'
      if params['s1'] then
        @msg = 'you selected: '
        for val in params['s1']
          @msg += val + ' '
        end
      else
        @msg = 'not selected...'
      end
    else
      @title = 'index'
      @msg = 'select List...'
    end
  end

  def other
    redirect_to action: :index, params: {'msg': 'from other page'}
  end
end
