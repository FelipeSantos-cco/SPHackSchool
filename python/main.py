import requests 
import mysql.connector
from bs4 import BeautifulSoup

def banner():
    print(''' 
  /$$$$$$  /$$$$$$$  /$$   /$$                     /$$      
 /$$__  $$| $$__  $$| $$  | $$                    | $$      
| $$  \__/| $$  \ $$| $$  | $$  /$$$$$$   /$$$$$$$| $$   /$$
|  $$$$$$ | $$$$$$$/| $$$$$$$$ |____  $$ /$$_____/| $$  /$$/
 \____  $$| $$____/ | $$__  $$  /$$$$$$$| $$      | $$$$$$/ 
 /$$  \ $$| $$      | $$  | $$ /$$__  $$| $$      | $$_  $$ 
|  $$$$$$/| $$      | $$  | $$|  $$$$$$$|  $$$$$$$| $$ \  $$
 \______/ |__/      |__/  |__/ \_______/ \_______/|__/  \__/

\t\t[+] Felipe Santos de Almeida :)
\t\t[+] Projeto pessoal SPHack para a faculdade SPTech
\t\t[!] Apoio: Guia de TI
''')

def insertPlataformas_BD(nomePlat, urlPlat, urlImg):
    meubd = mysql.connector.connect(
        host="localhost",
        user="aluno",
        password="sptech",
        database="bdSPHack"
    )

    mycursor = meubd.cursor()

    sql = "INSERT INTO bdSPHack.tbPlataforma (nomePlataforma, urlPlataforma, urlImgPlataforma) VALUES(%s, %s, %s);"
    val = (nomePlat, urlPlat, urlImg)

    mycursor.execute(sql, val)
    meubd.commit()

    return print(f'Inseriu: {nomePlat}\n') 

def buscaLink():

    arquivo = open('./plataformas.txt')
    links = arquivo.readlines()
    arquivo.close()

    for link in links:
        try:
            resposta = requests.get(link)

            if resposta.status_code >= 200 and resposta.status_code < 300:
                site = BeautifulSoup(resposta.content, 'html.parser')

                titulo = site.find('h1', attrs={'class': 'entry-title'}).contents[0]

                urlImg = site.find('img', attrs={'decoding': 'async'}).get('data-src')
                urlImg = 'https://guiadeti.com.br'+urlImg

                urlPlataforma = site.find('div', attrs={'class': 'project-info'}).find('a', attrs={'target' : '_blank'}).get('href')

                # print(f'{titulo}\n{descricao}\n{urlPlataforma}\n{urlImg}')
                insertPlataformas_BD(titulo, urlPlataforma, urlImg)
        
        except:
            print(f"Não foi possivel buscar e inserir a plataforma {link}")
            pass


def pesquisa_plataforma():

        url = 'https://guiadeti.com.br/'

        header = {
            'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) '
            'AppleWebKit/537.36 (KHTML, like Gecko) '
            'Chrome/51.0.2704.103 Safari/537.36'
        }

        listaLinks = []
        listaPlatLink = []

        resposta = requests.get(url, headers= header)

        if resposta.status_code >= 200 and resposta.status_code < 300:
            # print("Requisição OK")
            print("Buscando plataformas...")
            
            site = BeautifulSoup(resposta.content, 'html.parser')
            divLinks = site.find('div', attrs={'class': 'fusion-fullwidth fullwidth-box fusion-builder-row-4 fusion-flex-container nonhundred-percent-fullwidth non-hundred-percent-height-scrolling'})

            for link in divLinks.find_all('a'):

                if link.get('href') not in listaLinks: # Não pegar links repetidos
                    listaLinks.append(link.get('href'))

            #print(listaLinks)
            for i in range(0, len(listaLinks)):
                resposta = requests.get(listaLinks[i], headers= header)
                
                if resposta.status_code >= 200 and resposta.status_code < 300:
                    print(f"Entrando no Link: {listaLinks[i]}")

                    site = BeautifulSoup(resposta.content, 'html.parser')
                    divPlataformas = site.find('div', attrs={'class': 'fusion-portfolio-wrapper'})

                    for link in divPlataformas.find_all('a'):

                        if link.get('href') not in listaPlatLink:
                            listaPlatLink.append(link.get('href'))


            for i in range(0, len(listaPlatLink)):
                print(f"Plataforma: {listaPlatLink[i]}")
                            
                            
                         

        else:
            print(f"Erro na conexão\nResposta: {resposta.status_code}")


banner()
escolha = input('\n>>> Deseja continuar com a inserção no banco de dados?[s/n]\n->-> ')

if escolha == "s" or escolha == "S":
    print('Iniciando inserção de plataformas no BD')
    buscaLink()

else:   
    print('Cancelando execução da inserção')