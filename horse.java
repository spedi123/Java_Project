public class Horse {
    
    private int horseNumber;
    private int x;
    private int y;
    private String color;
    private boolean takenOut;
    private boolean completed;

    Horse(int horseNumber, String color) {

        this.horseNumber = horseNumber;
        this.color = color;
    }

    String getColor() {
		return color;
	}
	
	int getHorseNumber() {
		return horseNumber;
	}
	
	int getX() {
		return x;
	}
	
	int getY() {
		return y;
	}
	
	void setX(int x) {
		this.x = x;
	}
	
	void setY(int y) {
		y = y;
	}

	boolean isTakenOut() {
		return takenOut;
	}

    void setTakenOut(boolean) {
		this.takenOut = takenOut;
	}
	
	boolean isCompleted() {
		return completed;
	}
    	
	void setCompleted(boolean) {
		this.completed = completed;
	}
	
}
