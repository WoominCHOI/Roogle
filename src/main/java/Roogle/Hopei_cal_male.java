package Roogle;

import java.util.Scanner;

public class Hopei_cal_male {
	
	public static double[] h_Cal_male(int n) {
		double adultSize[] = {0.0 , 0.0};
		double num;
		double plus = 50;
		
		if (n < 11) {
            throw new IllegalArgumentException("세대 수는 음수일 수 없습니다.");
        }
		if(n == 22 || n >=27) {
			num = n + plus + 1;
		}else if(n <=23 || n >25){
			num = n + plus + 2;
		}else if(n >= 25 || n <27) {
			num = n + plus + 1.5;
		}else {
			num = n + plus;
		}
		
		adultSize[1] = num; //최대값
		
		adultSize[0] = num-1;//최소값
		
		return adultSize;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("계산할 곤충을 선택하세요 : 1. 왕사슴벌레(수컷) 2. 왕사슴벌레(암컷) 3. 넓적사슴벌레(수컷) 4. 넓적사슴벌레(암컷)");
		String choice = scanner.nextLine();
		
		
		
		if(choice.equals("1")) {
			System.out.print("유충의 무게를 입력해주세요");
			int input = scanner.nextInt();
			
			scanner.close(); // 스캐너 닫기
			
			double[] result_V = h_Cal_male(input);
			
			System.out.println("예상 성충 사이즈 : " + result_V[0] + " ~ " + result_V[1]);
		}
		
		
	}

}
