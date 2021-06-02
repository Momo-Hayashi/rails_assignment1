class ContactsController < ApplicationController
  def new
    # モデルオブジェクトをインスタンス化する
    @contact = Contact.new
  end
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to "/contacts/new", notice: "送信されました！"
    else
      render :new
    end
  end
  private
  def contact_params
    params.require(:contact).permit(:Name, :Email, :Content)
  end
end
