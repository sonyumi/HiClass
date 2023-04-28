package d0428.part2.p_25;

public class BreakExample {

	public static void main(String[] args) {
		int i = 1;
		
		while (true) {
			System.out.println(i);
			
			if (i == 6)
				break;
			
			i = i + 1;
		}

	}

}
