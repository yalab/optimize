class RootController < ApplicationController
  def index
  end

  def many_loops
    1000000.times do
      "" =~ /hoge/
    end
  end

  def heavy_rendering
  end

  def slow_query
    @users = User.where("name like ?", "%a%").order(:created_at).limit(30).to_a
  end

  def heavy_js
  end

  def n_plus_one
    @users = User.limit(30).to_a
  end
end
