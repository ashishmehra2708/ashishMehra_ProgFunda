package Question_2;

public class PowerOfNumber {
	public int power(int x, int n) {
		if(n==0)
			return 1;
		int result = x*power(x, n-1);
		return result;
	}
}
