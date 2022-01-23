public class Gorilla extends Mammal{

    public Gorilla (int energyLevel){
        super(energyLevel);

    }

    public void throwSomething(){
        System.out.println("The gorilla has thrown something and her energy level decreased by 5");
        this.energyLevel -= 5;
    }

    public void eatBanana(){
        System.out.println("The gorilla has eaten banana and her energy level increased by 10");
        this.energyLevel +=10;

    }

    public void climb(){
        System.out.println("The gorilla has climed a tree and her energy level decreased by 10");
        this.energyLevel -= 10;

    }
}
