# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(:name => %{Jesualdo Ferreira}, :email => %{jf@scb.pt}, :password => %{scbscbscb},
            :birth_date => %{Date.parse("24/05/1946")}, :about_me => %{Fui Tri Campeão Nacional pelo Futebol Clube do Porto, desde então que tenho vindo a ser despedido por
onde passo}, :gender => %{Masculino}, :photo => %{http://2.bp.blogspot.com/-bUUMOJ9xrmM/TbHAldRZiZI/AAAAAAAABhY/sMWZtJ6lwMA/s1600/jesualdo-ferreira_diaporama.jpg})
User.create(:name => %{Paulo Fonseca}, :email => %{paulofonseca@fcp.pt}, :password => %{fcpfcpfcp},
            :birth_date => %{Date.parse("05/03/1973")}, :about_me => %{Fiz grande sucesso no Paços de Ferreira e estou agora a ter uma oportunidade no Porto, mas da maneira que isto está a correr, não duro lá muito},
            :gender => %{Masculino}, :photo => %{http://porto24.pt/files/2013/06/paulo-fonseca-face.jpg})
User.create(:name => %{Jorge Jesus}, :email => %{jj@slb.pt}, :password => %{slbslbslb},
            :birth_date => %{Date.parse("24/07/1954")}, :about_me => %{Tive um ano em que fui o maior, tive a nação Benfiquista a meus pés, mas desde então que ainda não sei como tenho emprego, luzes apagadas, ajoelhei-me no estádio do rival e perdi duas finais depois dos noventa!}, :gender => %{Masculino}, :photo => %{http://showdebola.pt/wp-content/uploads/2013/09/ng03FC83A8-0E3F-42B7-A433-949477F07AF11.jpg})
User.create(:name => %{Leonardo Jardim}, :email => %{lj@scp.pt}, :password => %{scpscpscp},
            :birth_date => %{Date.parse("01/08/1974")}, :about_me => %{Por onde passei tenho tido sucesso, mas nunca duro mais de um ano, os presidentes chateiam-se sempre comigo... Não sei porquê, as mulheres deles até me apreciam},
            :gender => %{Masculino}, :photo => %{http://copy.pnn.pt/noticias_imagens/leonardojardim1.jpg})
User.create(:name => %{Paulo Bento}, :email => %{pb@portugal.pt}, :password => %{portugal},
            :birth_date => %{Date.parse("20/06/1969")}, :about_me => %{Aaaaaaaaaahhhhhhhhhhhh.... Com tranqualidade!}, :gender => %{Masculino}, :photo => %{http://1.bp.blogspot.com/_8bXPlgHBtvM/TKSHdN6itHI/AAAAAAAAACo/WEL0x4KbaQc/s1600/paulo-bento.jpg})

Article.create(:user_id => 1, :title => %{Jesualdo Ferreira despedido do Panathinaikos}, :text => %{O treinador português Jesualdo Ferreira foi demitido pelo Panathinaikos, depois de uma série de maus resultados, que deixaram o clube na sexta posição do campeonato grego, informou hoje o site da UEFA.},
:image => %{http://www.supersporting.net/wp-content/uploads/2013/01/jesualdo1.jpg}, :link => %{'http://www.tsf.pt/PaginaInicial/Desporto/Interior.aspx?content_id=2886297'}, :published => %{Date.parse("14/11/2012")} )
Article.create(:user_id => 2, :title => %{Paulo Fonseca vaiado num dragão em crise de identidade}, :text => %{A monumental vaia a Paulo Fonseca, após o apito final no Dragão, ficará na memória. O treinador de mãos nos bolsos, sem receio do momento mas exposto à fúria dos adeptos. Antero Henrique a seu lado, um sinal de apoio da estrutura do FC Porto. De facto, o problema não se esgota no treinador.},
               :image => %{http://mediaserver2.rr.pt/newrr/kienast_porto_austria_viena_173931ee_400x225.jpg}, :link => %{'http://www.maisfutebol.iol.pt/fc-porto-austria-viena-paulo-fonseca-vaiado-paulo-fonseca-contestado-champions-liga-dos-campeoes/5295196fe4b0da935691eb7d.html'}, :published => %{Date.parse("27/11/2013")} )
Article.create(:user_id => 5, :title => %{Portugal num grupo sem um ponto fraco e com um rival muito forte}, :text => %{A selecção nacional vai estrear-se no Mundial contra a Alemanha e também defrontará os EUA e o ?Gana na primeira fase. Sorteio colocou frente a frente Espanha e Holanda, os finalistas da última edição.},
               :image => %{http://www.pracadarepublicaembeja.net/wp-content/uploads/2013/12/fase-final-mundial-2014.jpg}, :link => %{'http://www.publico.pt/desporto/noticia/seleccao-estreiase-frente-a-alemanha-1615338#/0'}, :published => %{Date.parse("06/12/2013")} )
Article.create(:user_id => 4, :title => %{Se voltarmos à final da Liga Europa já ficamos satisfeitos}, :text => %{“Foi pena não conseguirmos o apuramento”, lamentou o técnico do Benfica.},
               :image => %{http://sicnoticias.sapo.pt/incoming/2013/04/14/jorge-jesus.jpg/ALTERNATES/w960/Jorge+Jesus.jpg}, :link => %{'http://www.publico.pt/desporto/noticia/jorge-jesus-se-voltarmos-a-final-da-liga-europa-ja-ficamos-satisfeitos-1615847'}, :published => %{Date.parse("10/12/2013")} )

Contact.create(:user_requesting_id => 1, :target_user_id => 2, :state => false)
Contact.create(:user_requesting_id => 1, :target_user_id => 3, :state => true)
Contact.create(:user_requesting_id => 1, :target_user_id => 4, :state => true)
Contact.create(:user_requesting_id => 2, :target_user_id => 3, :state => false)
Contact.create(:user_requesting_id => 1, :target_user_id => 5, :state => false)
Contact.create(:user_requesting_id => 5, :target_user_id => 2, :state => false)
Contact.create(:user_requesting_id => 5, :target_user_id => 4, :state => false)

Company.create(:company_owner => 1, :name => %{Sporting Clube de Braga}, :logotype => %{http://upload.wikimedia.org/wikipedia/pt/f/f9/150px-Sporting_Clube_Braga.png}, :description => %{O Sporting Clube de Braga, frequentemente tratado por apenas Sporting de Braga, Braga ou pelo acrónimo SCB, é um clube desportivo fundado oficialmente em 19 de Janeiro em 1921 e sediado na cidade de Braga, em Portugal.})
Company.create(:company_owner => 2, :name => %{Futebol Clube do Porto}, :logotype => %{http://upload.wikimedia.org/wikipedia/pt/c/c5/F.C._Porto_logo.png}, :description => %{O Futebol Clube do Porto é um clube multidesportivo português sediado na cidade do Porto e fundado em 1893 por António Nicolau d'Almeida. O clube, após um período de inatividade de mais de dez anos, foi refundado em 1906 por José Monteiro da Costa.})
Company.create(:company_owner => 3, :name => %{Sport Lisboa e Benfica}, :logotype => %{http://upload.wikimedia.org/wikipedia/pt/f/f0/500px-SL_Benfica_logo_svg.png}, :description => %{O Sport Lisboa e Benfica é um clube multidesportivo sediado em Lisboa. O seu eclectismo, historial e forte base de adeptos fazem do Benfica um dos Grandes clubes de Portugal e um dos mais prestigiados a nível mundial.})
Company.create(:company_owner => 4, :name => %{Sporting Clube de Portugal}, :logotype => %{http://upload.wikimedia.org/wikipedia/pt/3/3e/Sporting_Clube_de_Portugal.png}, :description => %{Sporting Clube de Portugal, também conhecido como Sporting ou Sporting CP (ou por vezes, no estrangeiro, como Sporting Lisbon, no Brasil Sporting de Lisboa), é um clube multidesportivo com sede em Lisboa no Complexo Alvalade XXI.})
Company.create(:company_owner => 5, :name => %{Federação Portuguesa de Futebol}, :logotype => %{http://upload.wikimedia.org/wikipedia/pt/7/75/Portugal_FPF.png}, :description => %{A Federação Portuguesa de Futebol é o órgão dirigente do futebol em Portugal, que organiza a Selecção Portuguesa de Futebol e está sediada em Lisboa. Foi fundada em 31 de Março de 1914 com o nome de União Portuguesa de Futebol, tendo mais tarde mudado o nome para a actual designação.})

CvEntry.create(:user_id => 1, :company_id => 4, :start_date => %{Date.parse("01/12/2012")}, :end_date => %{Date.parse("20/05/2013")} )
CvEntry.create(:user_id => 1, :company_id => 1, :start_date => %{Date.parse("25/05/2013")}, :end_date => Date.today)

Task.create(:CVEntry_id => 1, :position => %{Manager}, :description => %{Todos os treinadores respondem-me diretamente!})
Task.create(:CVEntry_id => 1, :position => %{Treinador}, :description => %{Agora que o Franky se foi embora sou em quem treina a equipa!})
Task.create(:CVEntry_id => 2, :position => %{Treinador}, :description => %{Treinador principal do Sporting de Braga})