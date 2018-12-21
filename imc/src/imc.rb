

class Imc

    def calcula(peso, altura)
        imc = (peso.to_i / (altura.to_f * 2)).round(2)
        puts imc
        if imc > 22
            return 'IMC deu ruim. #PartiuAcademia #noPainnoGain'
        else
            return 'IMC Ok, #PartiuBK'
        end
    end
end
