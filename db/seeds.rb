# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#TODO: remove later
User.new(
	{ # Admin
		:name => "Admin",
		:email => "admin@centeias.com",
		:password => "saladesituacao"
	}
).save()

# Folder.new([
# 	{
# 		:name => "Documentação de Uso",
# 		:description => "Processos que explicam como funciona o uso desse sistema",
# 		:user_id => 1 # id of the user which created
# 	},
# 	{
# 		:name => "Boletins",
# 		:description => "Processos para a criação de boletins para a sala de situação da Centeias",
# 		:user_id => 1 # id of the user which created
# 	},
# 	{
# 		:name => "Banco de Dados",
# 		:description => "Como criar e alimentar um repositório de bancos de dados de interesse à saúde para disponibilização para a comunidade da Faculdade de Ciências da Saúde da Universidade de Brasília.",
# 		:user_id => 1 # id of the user which created
# 	},
# 	{
# 		:name => "Notícias",
# 		:description => "Desenvolver a atividade de detecção de notícias de eventos de interesse à saúde.",
# 		:user_id => 1 # id of the user which created
# 	}
# ])

# Article.new([
# 	{
# 		:name => "Introdução",
# 		:text => (
# 			""/
# 		),
# 		:folder_id => 1,
# 		:user_id => 1
# 	},
# 	{
# 		:name => "Estrutura",
# 		:text => (
# 			""/
# 		),
# 		:folder_id => 1,
# 		:user_id => 1
# 	},
# 	{
# 		:name => "Acesso",
# 		:text => (
# 			""/
# 		),
# 		:folder_id => 1,
# 		:user_id => 1
# 	},
# 	{
# 		:name => "Monitoramento de Eventos",
# 		:text => (
# 			""/
# 		),
# 		:folder_id => 2,
# 		:user_id => 1
# 	},
# 	{
# 		:name => ,"Epidemiológico"
# 		:text => (
# 			""/
# 		),
# 		:folder_id => 2,
# 		:user_id => 1
# 	},
# 	{
# 		:name => "Repositório",
# 		:text => (
# 			""/
# 		),
# 		:folder_id => 3,
# 		:user_id => 1
# 	},
# 	{
# 		:name => "Clipping",
# 		:text => (
# 			""/
# 		),
# 		:folder_id => 4,
# 		:user_id => 1
# 	},
# 	{
# 		:name => "Busca",
# 		:text => (
# 			""/
# 		),
# 		:folder_id => 4,
# 		:user_id => 1
# 	}
# ])

# Subarticle.new([
# 	{
# 		:name => "Markdown",
# 		:text => (
# 			""/
# 		),
# 		:article_id => 1,
# 		:user_id => 1
# 	},
# 	{
# 		:name => "Gerenciamento de Pastas",
# 		:text => (
# 			""/
# 		),
# 		:article_id => 2,
# 		:user_id => 1
# 	},
# 	{
# 		:name => "Gerenciamento de Artigos",
# 		:text => (
# 			""/
# 		),
# 		:article_id => 2,
# 		:user_id => 1
# 	},
# 	{
# 		:name => "Gerenciamento de Sub-Artigos",
# 		:text => (
# 			""/
# 		),
# 		:article_id => 2,
# 		:user_id => 1
# 	},
# 	{
# 		:name => "Gerenciamento de Pastas",
# 		:text => (
# 			""/
# 		),
# 		:article_id => 2,
# 		:user_id => 1
# 	}
# ])
