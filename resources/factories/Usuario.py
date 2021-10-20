from faker import Faker
fake = Faker()


def usuario_valido():
    user = {
        'nome': fake.first_name(),
        'sobrenome': fake.last_name(),
        'email': fake.free_email(),
        'senha': 'Playboy'

    }
    return user
