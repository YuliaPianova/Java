public class Bat extends Mammal{

    public Bat(int energyLevel){
        super(300);
    }

    public void fly() {
		System.out.println("The bat is taking off! The energy level decresed by 50");
		energyLevel -= 50;
	}
	public void eatHuman() {
		System.out.println("The bat ate human. The energy level decresed by 25");
		energyLevel += 25;
	}
	public void attackTown() {
		System.out.println("The town is on fire! The energy level decresed by 100");
		energyLevel -= 100;
	}
	
}