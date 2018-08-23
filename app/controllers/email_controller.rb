class EmailController < ApplicationController
  def index
  	@emails = Email.all
  	# montre tous les emails dans la div de gauche
  end
  def show
  	@email = Email.find(params[:id])
  	# affiche l'email selectioné dans la div de droite
  end
  def destroy
  	# pour supprimer un email de la base de donnee
  	@email = Email.find(params[:id])
    @email.destroy
  end
end
