package Roogle;
import java.util.Scanner;

public class KinshipCoefficientCalculator {

    // 근친 계수 계산 메서드
    public static double calculateFX(int n, int nPrime, double FA) {
        if (n < 0 || nPrime < 0) {
            throw new IllegalArgumentException("세대 수는 음수일 수 없습니다.");
        }
        
        double sum = 0.0;

        // 각 공통 선조에 대한 합을 구함
        for (int k = 0; k <= n + nPrime + 1; k++) {
            // (1/2)^(n+n'+1)
            double term1 = Math.pow(0.5, n + nPrime + 1);
            // (1 + FA)
            double term2 = 1 + FA;

            // [ (1/2)^(n+n'+1) * (1 + FA) ]
            double term = term1 * term2;

            // 해당 항을 합에 추가
            sum += term;
        }

        return sum;
    }

    /*
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("X 개체의 부친으로부터 공통 선조까지의 세대 수 (n): ");
        int n = scanner.nextInt();

        System.out.print("X 개체의 모친으로부터 공통 선조까지의 세대 수 (n'): ");
        int nPrime = scanner.nextInt();

        System.out.print("공통 선조의 근친 계수 (FA): ");
        double FA = scanner.nextDouble();

        scanner.close(); // 스캐너 닫기

        // 근친 계수 계산
        double FX = calculateFX(n, nPrime, FA);
        System.out.printf("FX 값: %.2f%n" , FX);
    }
    */
}