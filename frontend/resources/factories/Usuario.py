import bcrypt
from faker import Faker
fake = Faker()


def crypt_senha(senha):
    return bcrypt.hashpw(senha.encode('utf-8'), bcrypt.gensalt(8))


def get_usuarios_insert_bd():
    return[
        get_usuario('login'),
        get_usuario('geek'),
        get_usuario('geek_invalido'),
        get_usuario('buscar_alien'),
        get_usuario('buscar_comum'),
        get_usuario('login_buscador')
    ]


def get_usuario(target):
    data = {
        'faker': {
            'nome': fake.first_name(),
            'sobrenome': fake.last_name(),
            'email': fake.free_email(),
            'senha': 'teste123'
        },
        'email_invalido': {
            'nome': 'Pedro',
            'sobrenome': fake.last_name(),
            'email': 'pedro#gmail.com',
            'senha': 'teste123'
        },
        'login': {
            'nome': 'Patrick',
            'sobrenome': 'Ferreira',
            'email': 'patrickisrael@teste.com.br',
            'senha': 'teste123'
        },
        'geek': {
            'nome': 'Sheldon',
            'sobrenome': 'Cooper',
            'email': 'cooper@teste.com.br',
            'senha': 'geek123',
            'formulario_geek': {
                'whatsapp': '21955993369',
                'descricao': 'Problemas no computador? procure por Sheldon Cooper. Realizo a analise e manutenção do seu computador',
                'conserta_impressora': 'Sim',
                'modelo_trabalho': 'Ambos',
                'valor_hora': '100',
            }
        },
        'geek_invalido': {
            'nome': 'Bruce',
            'sobrenome': 'Wayne',
            'email': 'BWayne@teste.com.br',
            'senha': 'Batman123',
            'formulario_geek': {
                'whatsapp': '21955993369',
                'descricao': 'formato teu pc, instalo Windows, faço manutenção de peças e instalo programas....',
                'conserta_impressora': 'Sim',
                'modelo_trabalho': 'Ambos',
                'valor_hora': '100',
            }
        },
        'buscar_alien': {
            'nome': 'teste de tela',
            'sobrenome': 'alien',
            'email': 'tela.alien@qaninja.com.br',
            'senha': 'teste123',
            'formulario_geek': {
                'whatsapp': '11999999999',
                'desc': 'conserto qualquer impressora. antiga ou nova',
                'printer_repair': 'Sim',
                'work': 'Presencial',
                'cost': '250'

            }

        },
        'buscar_comum': {
            'nome': 'teste de tela',
            'sobrenome': 'comum',
            'email': 'tela.comum@qaninja.com.br',
            'senha': 'teste123',
            'formulario_geek': {
                'whatsapp': '11999999888',
                'desc': 'Realizo a instalação de linux no seu computador, qualquer versão',
                'printer_repair': 'Não',
                'work': 'Remoto',
                'cost': '200'

            }

        },
        'login_buscador': {
            'nome': 'tester',
            'sobrenome': 'buscador',
            'email': 'buscador.geeks@teste.com.br',
            'senha': 'teste123'
        }

    }
    return data[target]
