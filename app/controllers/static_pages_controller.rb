class StaticPagesController < ApplicationController
  def main
  end
  def contact
  end
  def about
  end
  def our_work
    @work_object = WorkObject.all
  end
  def services
  end
end
