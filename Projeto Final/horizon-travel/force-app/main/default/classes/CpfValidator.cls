public class CpfValidator {

    public static Boolean isValid(String cpf) {

        if (String.isBlank(cpf)) {
            return false;
        }

        cpf = cpf.replace('.', '').replace('-', '');

        if (cpf.length() != 11) {
            return false;
        }

        String primeiroDigito = cpf.substring(0, 1);
        Boolean todosIguais = true;

        for (Integer i = 1; i < 11; i++) {
            if (cpf.substring(i, i + 1) != primeiroDigito) {
                todosIguais = false;
                break;
            }
        }

        if (todosIguais) {
            return false;
        }

        Integer primeiroDV = calcularDigito(cpf.substring(0, 9), 10);
        Integer segundoDV = calcularDigito(cpf.substring(0, 10), 11);

        return cpf.substring(9, 10) == String.valueOf(primeiroDV)
            && cpf.substring(10, 11) == String.valueOf(segundoDV);
    }

    private static Integer calcularDigito(String numeros, Integer pesoInicial) {

        Integer soma = 0;
        Integer peso = pesoInicial;

        for (Integer i = 0; i < numeros.length(); i++) {
            soma += Integer.valueOf(numeros.substring(i, i + 1)) * peso;
            peso--;
        }

        Integer resto = Math.mod(soma * 10, 11);

        if (resto == 10) {
            resto = 0;
        }

        return resto;
    }

}