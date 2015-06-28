/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package roller;

/**
 *
 * @author benjaminmathre
 */

import java.util.Random;

public class diceRoller {
    
    private Random rand = new Random(System.nanoTime());
    
    public int rollingAnD(int die){
        int roll = rand.nextInt(1)+die;
        return roll;
    }
    public int looting(){
        int loot =0;
        return loot;
    }
    
}
