class Phrase 
    DATA = [
    { text: "O maior erro que um homem pode cometer é sacrificar a sua saúde a qualquer outra vantagem.", author: "Schopenhauer" },
    { text: "Aquele que luta com demônios deve acautelar-se para não tornar-se um também.", author: "Nietzsche" },
    { text: "O que somos é consequência do que pensamos.", author: "Siddharta Gautama" },
    { text: "O homem nasce livre, e por toda parte encontra-se acorrentado.", author: "Jean-Jacques Rousseau" },
    { text: "Não são as coisas que nos perturbam, mas o que pensamos sobre elas.", author: "Epicteto" },
    { text: "Viver sem filosofar é o que se chama ter os olhos fechados sem nunca tentar abri-los.", author: "René Descartes" },
    { text: "A vida não examinada não vale a pena ser vivida.", author: "Sócrates" },
    { text: "Tudo flui, nada permanece; tudo se move e nada fica parado.", author: "Heráclito" },
    { text: "O sábio nunca diz tudo o que pensa, mas pensa sempre tudo o que diz.", author: "Aristóteles" } ]

    attr_accessor :text, :author

    def initialize
       selected_text = DATA.sample
       @text = selected_text[:text]
       @author = selected_text[:author]
    end 
end 