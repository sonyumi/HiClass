package d0428.part2.p_21;

public class WhileExample {

	public static void main(String[] args) {
		int i = 1;
		while (i <= 10) {
			System.out.println(i);
			i++;
			
			if(i == 5) {
				break;
			}
		}

	}

}
