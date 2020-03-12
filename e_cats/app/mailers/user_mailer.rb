class UserMailer < ApplicationMailer
  default from: 'e-cats@yopmail.com'
 
  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 
    attachments.inline['cat.png'] = File.read('app/assets/images/cat.png')
    #attachments['cat.png'] = File.read('app/assets/images/cat.png')
    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    
  end
  def order_check(user)
    @user = user
    attachments.inline['cat.png'] = File.read('app/assets/images/cat.png')
    #attachments['cat.png'] = File.read('app/assets/images/cat.png')
    mail(to: @user.email, subject: 'Commande validée !')
  end
end
