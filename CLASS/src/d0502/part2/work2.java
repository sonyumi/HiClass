package d0502.part2;

import java.util.Scanner;

public class work2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[] a = new int[5];
		String b = "";
		for(int i=0;i<a.length;i++) {
			a[i]=sc.nextInt();
			if(i <a.length-1) {
			b+=a[i] + ",";
			}else {
				b+=a[i];
			}
		}
		sc.close();
		System.out.print(b);
	}
}
