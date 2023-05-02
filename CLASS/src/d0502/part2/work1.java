package d0502.part2;

import java.util.Scanner;

public class work1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		double b = sc.nextDouble();
		String c = sc.nextLine();
		char d = sc.next().charAt(0);
		sc.close();
		
		System.out.println(a);
		System.out.printf("%.1f\n",b);
		System.out.println(c);
		System.out.printf("%c",d);
	}

}
