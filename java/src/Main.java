import java.util.ArrayList;

public class Main {
    public static ArrayList<Boolean> NumberFunction(int firstNumber, int secondNumber) {
        ArrayList<Boolean> numberList = new ArrayList<>();
        numberList.add(firstNumber < 0);
        numberList.add(secondNumber < 0);
        return numberList;
    }

    public static void main(String[] args) throws Exception {
        System.out.println(NumberFunction(5, -4));
    }
}
