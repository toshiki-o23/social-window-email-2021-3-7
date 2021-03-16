class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def confirm
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      render "confirm"
    else
      render :new
    end
  end

  def create
    @inquiry = Inquiry.find(params[:id])
  end

  def edit
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      render "confirm"
    else
      render :new
    end
  end


  def thanks
    @inquiry = Inquiry.new(inquiry_params)
    InquiryMailer.received_email(@inquiry).deliver_now
  end

  private

    def inquiry_params
      params.require(:inquiry).permit(:yourname, :name, :email, :relationship, :content)
    end
end
