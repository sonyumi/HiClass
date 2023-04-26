package p_42;

public class VariableScopeExample {

	public static void main(String[] args) {
		int v1 = 15;
		int v2 = 0;
		if(v1>10) {
			v2 =v1-10; //int v2 = v1-10; // 변수의 유효범위 밖에서는 변수가 아니게 된다 //
		}
		int v3 = v1 + v2 + 5;
		System.out.println(v3);
	}
	
	

}
