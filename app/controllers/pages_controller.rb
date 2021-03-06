class PagesController < ApplicationController

  layout 'admin'

  before_action :confirm_logged_in
  before_action :find_subject

  def index
    @pages = @subject.pages.sorted
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new(:subject_id => @subject.id)
    @page_count = @subject.pages.count + 1
    @subjects = Subject.sorted
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      flash[:notice] = "Page created successfully."
      redirect_to(pages_path(:subject_id => @subject.id))
    else
      @page_count = @subject.pages.count + 1
      @subjects = Subject.sorted
      render('new')
    end
  end

  def edit
    @page = Page.find(params[:id])
    @page_count = @subject.pages.count
    @subjects = Subject.sorted
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      flash[:notice] = "Page updated successfully."
      redirect_to(page_path(@page, :subject_id => @subject.id))
    else
      @page_count = @subject.pages.count
      @subjects = Subject.sorted
      render('edit')
    end
  end

  def delete
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    flash[:notice] = "Page destroyed successfully."
    redirect_to(pages_path(:subject_id => @subject.id))
  end

  private

  def find_subject
    @subject = Subject.find(params[:subject_id])
  end

  def page_params
    params.require(:page).permit(:subject_id, :name, :position, :visible, :permalink)
  end

end
