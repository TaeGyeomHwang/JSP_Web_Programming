package ch04.practice;

public class GuGuDan {
	public String process(int num) {
		StringBuilder sb = new StringBuilder();
		for (int i = 1; i < 10; i++) {
			sb.append(num+" * "+i+" = "+num*i);
			sb.append("<br>");
		}
		return sb.toString();
	}
}