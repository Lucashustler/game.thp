


class User
    # on définit les variables d'instances comme utilisables et modifiables
    attr_accessor :email, :age
    # on initiaise notre variable de classe pour plus pour l'incrémenter dans notre méthode
    @@all_users = 0

    def initialize(email_to_save,age_to_save)
        @email = email_to_save
        @age = age_to_save
        @@all_users = @@all_users + 1
    end

    def self.count
        return @@all_users
    end
end
