import bcrypt
from faker import Faker
fake = Faker()


def crypt_senha(senha):
    return bcrypt.hashpw(senha.encode('utf-8'), bcrypt.gensalt(8))


def get_usuario(target):
    data = {
        'faker': {
            'nome': fake.first_name(),
            'sobrenome': fake.last_name(),
            'email': fake.free_email(),
            'senha': 'Playboy'
        },
        'email_invalido': {
            'nome': 'Pedro',
            'sobrenome': fake.last_name(),
            'email': 'pedro#gmail.com',
            'senha': 'Playboy'
        },
        'login': {
            'nome': "Patrick",
            'sobrenome': "Ferreira",
            'email': "patrickisrael@teste.com.br",
            'senha': 'Playboy'
        },
        'geek': {
            'nome': "Sheldon",
            'sobrenome': "Cooper",
            'email': "cooper@teste.com.br",
            'senha': 'geek123',
            'formulario_geek': {
                'whatsapp': "21955993369",
                'descricao': "Problemas no computador? procure por Sheldon Cooper. Realizo a analise e manutenção do seu computador",
                'conserta_impressora': "Sim",
                'modelo_trabalho': "Ambos",
                'valor_hora': "100",
            }
        },
        'geek_invalido': {
            'nome': "Bruce",
            'sobrenome': "Wayne",
            'email': "BWayne@teste.com.br",
            'senha': 'Batman123',
            'formulario_geek': {
                'whatsapp': "21955993369",
                'descricao': "formato teu pc, instalo Windows, faço manutenção de peças e instalo programas....",
                'conserta_impressora': "Sim",
                'modelo_trabalho': "Ambos",
                'valor_hora': "100",
            }
        }

    }
    return data[target]
