import java.util.ArrayList;

public class TestLogic {
	public static void main(String[] args){
		ArrayList<Integer> posList = new ArrayList<Integer>();
		for(int i = 0; i < 16; i++) {
			posList.add(i);
		}
		
		System.out.println(posList.contains(0));
	}
}
