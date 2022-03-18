def factory_get_user():
    return{
        'name': "Teste consulta",
        'email': "cadastroConsulta@teste.com",
        'password': "Teste123"
    }


def factory_new_user():
    return{
        'name': "Teste Cadastro",
        'email': "cadastroApi@teste.com",
        'password': "Teste123"
    }


def factory_user_session(target):

    name = "teste api"
    email = "teste.api@teste.com"
    password = "Teste123"

    data = {
        'signup': {
            'name': name,
            'email': email,
            'password': password
        },
        'login': {
            'email': email,
            'password': password
        }
    }

    return data[target]


def factory_update_user():
    email = "teste.update@teste.com"

    return {
        'cadastro': {
            'name': "teste cadastro",
            'email': email,
            'password': "Teste123"
        },
        'alteracao': {
            'name': "teste update",
            'email': email,
            'whatsapp': "21987654321",
            'avatar': "https://3.bp.blogspot.com/-dZeMSjIhwDY/WvG00mw6RpI/AAAAAAAAB5w/xUuVwWvJoHE3HIzfJalqB9U73judObbGQCLcBGAs/s1600/Scorpion_again.jpg"
        }
    }


def factory_geek_user():
    return {
        'name': "teste usuário geek",
        'email': "geek@teste.com",
        'password': "Teste123",
        'geek_profile': {
            'whatsapp': "11999999999",
            'desc': "Seu computador está lento? Reiniciando do nada? Talvez seja um vírus, ou algum hardware com defeito. Posso fazer a manutenção no seu PC, formando, reinstalando o SO, trocando algum componente físico e porque não remover o baidu ou qualquer outro malware.",
            'printer_repair': "Sim",
            'work': "Presencial",
            'cost': "169.66"
        }
    }


def factory_search_for_geeks_user():
    return{
        'user': {
            'name': "Teste Busca Geeks",
            'email': "get.geeks@teste.com",
            'password': "Teste123"
        },
        'geeks':
        [
            {
                'name': "Riri Willians",
                'email': "riri@marvel.com",
                'password': "pwd123",
                'geek_profile': {
                    'whatsapp': "11999999999",
                    'desc': "Seu computador está lento? Reiniciando do nada? Talvez seja um vírus, ou algum hardware com defeito. Posso fazer a manutenção no seu PC, formando, reinstalando o SO, trocando algum componente físico e porque não remover o baidu ou qualquer outro malware.",
                    'printer_repair': "Não",
                    'work': "Presencial",
                    'cost': "100"
                }
            },
            {
                'name': "Arnim Zola",
                'email': "zola@hidra.com",
                'password': "pwd123",
                'geek_profile': {
                    'whatsapp': "21999999999",
                    'desc': "Instalo Distros Ubuntu, Debian, ElementaryOS, PopOS, Linux Mint, Kurumin, Mandrake, Connectiva, Fedora, RedHat, CentOS, Slackware, Gentoo, Archlinux, Kubuntu, Xubuntu, Suze, Mandriva, Edubuntu, KateOS, Sabayon Linux, Manjaro Linux, BigLinux, ZorinOS, Unit",
                    'printer_repair': "Não",
                    'work': "Ambos",
                    'cost': "110"
                }
            },
            {
                'name': "Reed Richards",
                'email': "reed@fantastic4.com",
                'password': "pwd123",
                'geek_profile': {
                    'whatsapp': "31999999999",
                    'desc': "Instalado e faço manutenção em qualquer tipo de impressora, matricial padrão, matricial fiscal, a jato, a cera, a laser e até 3D. Também faço remold de fitas coloridas para Epson LX300. ",
                    'printer_repair': "Sim",
                    'work': "Remoto",
                    'cost': "120"
                }
            }
        ]
    }
