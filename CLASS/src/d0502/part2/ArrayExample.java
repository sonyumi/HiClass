package d0502.part2;

public class ArrayExample {

	public static void main(String[] args) {
		int [] scores = {83,90,87,79,56,89};
		
		for(int i = 0; i<scores.length;i++) {
			System.out.println("scores["+i+"] : "+ scores[i]);
		}
		
		int sum = 0;
		for(int i = 0; i < scores.length; i++) {
			sum += scores[i];            //sum = sum+scores[i]
		}
		
		System.out.println("sum : " + sum);
		double avg = (double) sum/scores.length;
		System.out.printf("avg : %.1f",avg);

	}

}
