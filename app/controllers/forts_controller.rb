class FortsController < ApplicationController
  # GET /forts
  # GET /forts.xml

  def index
    @forts = Fort.search(params[:search]).order(:source).page(params[:page]).per(4)
    

   respond_with(@forts)
end

  # GET /forts/1
  # GET /forts/1.xml
  def show
    @fort = Fort.find(params[:id])
   
    @comment = Comment.new

  end

  # GET /forts/new
  # GET /forts/new.xml
  def new
    @fort = Fort.new
    
  end

  # GET /forts/1/edit
  def edit
    @fort = Fort.find(params[:id])
  end

  # POST /forts
  # POST /forts.xml
  def create
    @fort = Fort.new(params[:fort])

 if @fort.save
      redirect_to @fort, notice: 'Fortune was successfully crated :)'
    else
      render action: "new"
    end
  end

  # PUT /forts/1
  # PUT /forts/1.xml
  def update
    @fort = Fort.find(params[:id])
     if @fort.update_attributes(params[:fort])
      redirect_to @fort, notice: 'Fortune was successfully updated :)'
    else
      render action: "edit"
    end
  end

  # DELETE /forts/1
  # DELETE /forts/1.xml
  def destroy
    @fort = Fort.find(params[:id])
    @fort.destroy
     redirect_to forts_url
  end
    def self.search(search)  
      if search  
        find(:all, :conditions => ['name LIKE ?', "%#{search}%"])  
      else  
        find(:all)  
      end  
    end  



end
