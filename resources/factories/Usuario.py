import bcrypt
from faker import Faker
fake = Faker()


def crypt_senha(senha):
    return bcrypt.hashpw(senha.encode('utf-8'), bcrypt.gensalt(8))


def usuario_valido():
    return {
        'nome': fake.first_name(),
        'sobrenome': fake.last_name(),
        'email': fake.free_email(),
        'senha': 'Playboy'

    }


def usuario_email_invalido():
    name = fake.first_name()
    return {
        'nome': name,
        'sobrenome': fake.last_name(),
        'email': name.lower()+'#gmail.com',
        'senha': 'Playboy'

    }


def usuario_login():
    return {
        'nome': "Patrick",
        'sobrenome': "Ferreira",
        'email': "patrickisrael@teste.com.br",
        'senha': 'Playboy'

    }
