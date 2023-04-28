package d0428.part2.p_16;

import java.util.Scanner;

public class ForsumExample {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int inp = sc.nextInt();
		int sum = 0;
		sc.close();
		
		for(int i=1;i<=inp;i++) {
			sum += i;
		}
		
		System.out.println("sum = "+ sum);
	}

}
