# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @name = 'I am the Index action!'
  end

  def show
    @name = 'I am the Show action!'
  end

  def edit
    @name = 'I am the Edit action!'
  end

  def new
    @name = 'I am the New action!'
  end

  def update
    @name = 'I am the Update action!'
  end

  def delete
    @name = 'I am the Delete action!'
  end

  def create
    @name = 'I am the Create action!'
  end
end
