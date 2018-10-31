# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# 1. run rails db:seed
# 2. modify email and password

#TODO: remove later
User.new(
	{ # Admin
		:name => "Admin",
		:email => "admin@centeias.com",
		:password => "saladesituacao"
	}
).save()

folders = [
  [
    "Documentação de Uso",
    "Processos que explicam como funciona o uso desse sistema",
    1
  ],
  [
    "Boletins",
    "Processos para a criação de boletins para a sala de situação da Centeias", 
    1
  ],
  [
    "Banco de Dados",
    "Como criar e alimentar um repositório de bancos de dados de interesse à saúde para disponibilização para a comunidade da Faculdade de Ciências da Saúde da Universidade de Brasília.", 
    1
  ],
  [
    "Notícias",
    "Desenvolver a atividade de detecção de notícias de eventos de interesse à saúde.", 
    1
  ]
]


articles = [
  [
    "Introdução",
    "",
    1,
    1
  ],
  [
    "Estrutura",
    "",
    1,
    1
  ],
  [
    "Acesso",
    "",
    1,
    1
  ],
  [
    "Monitoramento de Eventos",
    "",
    2,
    1
  ],
  [
    "Epidemiológico",
    "",
    2,
    1
  ],
  [
    "Repositório",
    "",
    3,
    1
  ],
  [
    "Clipping",
    "",
    4,
    1
  ],
  [
    "Busca",
    "",
    4,
    1
  ]
]

sub_articles = [
  [
    "Markdown",
    "",
    1,
    1
  ],
  [
    "Gerenciamento de Pastas",
    "",
    2,
    1
  ],
  [
    "Gerenciamento de Artigos",
    "",
    2,
    1
  ],
  [
    "Gerenciamento de Sub-Artigos",
    "",
    2,
    1
  ],
  [
    "Gerenciamento de Pastas",
    "",
    2,
    1
  ]
]

folders.each do |name, description, users_id|
  Folder.create( name: name, description: description, users_id: users_id ).save
end

articles.each do |name, text, folder_id, users_id|
  Article.create( name: name, text: text, folder_id: folder_id, users_id: users_id ).save
end

sub_articles.each do |name, text, article_id, users_id|
  SubArticle.create( name: name, text: text, article_id: article_id, users_id: users_id ).save
end
