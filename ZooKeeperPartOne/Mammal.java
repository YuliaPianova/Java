public class Mammal{
    public int energyLevel = 100;

    public Mammal(int energyLevel){ // constructor
        this.energyLevel = energyLevel;
    }



    public int displayEnergy(){
        System.out.println(" *** The new energy level is: " + energyLevel +  "  ***");
        return energyLevel;

        
        
    }
}