from Data.repository import Repo
from Data.models import *
from typing import Union
import bcrypt
from datetime import date


class AuthService:
    repo : Repo
    def __init__(self):
         self.repo = Repo()

    def obstaja_uporabnik(self, uporabnik: str) -> bool:
        #kaj je fora te funkcije če dejansko nč ne prevermo?
        try:
            user = self.repo.dobi_uporabnika(uporabnik)
            return True
        except:
            return False
        

    def prijavi_uporabnika(self, uporabnik : str, geslo: str) -> Union[UporabnikDto,bool] :

        # Najprej dobimo uporabnika iz baze
        user = self.repo.dobi_uporabnika(uporabnik)

        geslo_bytes = geslo.encode('utf-8')
        # Ustvarimo hash iz gesla, ki ga je vnesel uporabnik
        succ = bcrypt.checkpw(geslo_bytes, user.password_hash.encode('utf-8'))

        if succ:
            # popravimo last login time
            user.last_login = date.today().isoformat()
            self.repo.posodobi_uporabnika(user)
            return UporabnikDto(username=user.username, role=user.role)
        
        return False


    def dodaj_uporabnika(self, uporabnik: str, rola: str, geslo: str) -> UporabnikDto:

        # zgradimo hash za geslo od uporabnika

        # Najprej geslo zakodiramo kot seznam bajtov
        bytes = geslo.encode('utf-8')
  
        # Nato ustvarimo salt
        salt = bcrypt.gensalt()
        
        # In na koncu ustvarimo hash gesla
        password_hash = bcrypt.hashpw(bytes, salt)

        # Sedaj ustvarimo objekt Uporabnik in ga zapišemo bazo

        u = Uporabnik(
            username=uporabnik,
            role=rola,
            password_hash=password_hash.decode(),
            last_login= date.today().isoformat()
        )

        self.repo.dodaj_uporabnika(u)

        return UporabnikDto(username=uporabnik, role=rola)
    

    def dobi_uporabnika(self, username: str) -> Uporabnik:
        return self.repo.dobi_uporabnika(username)