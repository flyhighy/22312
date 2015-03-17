package com.project.bean;

import java.util.HashSet;
import java.util.Set;


/**
 * ListItem entity. @author MyEclipse Persistence Tools
 */

public class ListItem  implements java.io.Serializable {


    // Fields    

     private Integer itemId;
     private Short itemQ1;
     private Short itemQ2;
     private Short itemQ3;
     private Short itemQ4;
     private Short itemQ5;
     private Short itemQ6;
     private Short itemQ7;
     private Short itemQ8;
     private Short itemQ9;
     private Short itemQ10;
     private Short itemQ11;
     private Short itemQ12;
     private Short itemQ13;
     private Short itemQ14;
     private Short itemQ15;
     private Short itemQ16;
     private Short itemQ17;
     private Short itemQ18;
     private Short itemQ19;
     private Short itemQ20;
     private Short itemQ21;
     private String itemNote;
     private Set checkLists = new HashSet(0);


    // Constructors

    /** default constructor */
    public ListItem() {
    }

	/** minimal constructor */
    public ListItem(Short itemQ1, Short itemQ2, Short itemQ3, Short itemQ4, Short itemQ5, Short itemQ6, Short itemQ7, Short itemQ8, Short itemQ9, Short itemQ10, Short itemQ11, Short itemQ12, Short itemQ13, Short itemQ14, Short itemQ15, Short itemQ16, Short itemQ17, Short itemQ18, Short itemQ19, Short itemQ20, Short itemQ21) {
        this.itemQ1 = itemQ1;
        this.itemQ2 = itemQ2;
        this.itemQ3 = itemQ3;
        this.itemQ4 = itemQ4;
        this.itemQ5 = itemQ5;
        this.itemQ6 = itemQ6;
        this.itemQ7 = itemQ7;
        this.itemQ8 = itemQ8;
        this.itemQ9 = itemQ9;
        this.itemQ10 = itemQ10;
        this.itemQ11 = itemQ11;
        this.itemQ12 = itemQ12;
        this.itemQ13 = itemQ13;
        this.itemQ14 = itemQ14;
        this.itemQ15 = itemQ15;
        this.itemQ16 = itemQ16;
        this.itemQ17 = itemQ17;
        this.itemQ18 = itemQ18;
        this.itemQ19 = itemQ19;
        this.itemQ20 = itemQ20;
        this.itemQ21 = itemQ21;
    }
    
    /** full constructor */
    public ListItem(Short itemQ1, Short itemQ2, Short itemQ3, Short itemQ4, Short itemQ5, Short itemQ6, Short itemQ7, Short itemQ8, Short itemQ9, Short itemQ10, Short itemQ11, Short itemQ12, Short itemQ13, Short itemQ14, Short itemQ15, Short itemQ16, Short itemQ17, Short itemQ18, Short itemQ19, Short itemQ20, Short itemQ21, String itemNote, Set checkLists) {
        this.itemQ1 = itemQ1;
        this.itemQ2 = itemQ2;
        this.itemQ3 = itemQ3;
        this.itemQ4 = itemQ4;
        this.itemQ5 = itemQ5;
        this.itemQ6 = itemQ6;
        this.itemQ7 = itemQ7;
        this.itemQ8 = itemQ8;
        this.itemQ9 = itemQ9;
        this.itemQ10 = itemQ10;
        this.itemQ11 = itemQ11;
        this.itemQ12 = itemQ12;
        this.itemQ13 = itemQ13;
        this.itemQ14 = itemQ14;
        this.itemQ15 = itemQ15;
        this.itemQ16 = itemQ16;
        this.itemQ17 = itemQ17;
        this.itemQ18 = itemQ18;
        this.itemQ19 = itemQ19;
        this.itemQ20 = itemQ20;
        this.itemQ21 = itemQ21;
        this.itemNote = itemNote;
        this.checkLists = checkLists;
    }

   
    // Property accessors

    public Integer getItemId() {
        return this.itemId;
    }
    
    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Short getItemQ1() {
        return this.itemQ1;
    }
    
    public void setItemQ1(Short itemQ1) {
        this.itemQ1 = itemQ1;
    }

    public Short getItemQ2() {
        return this.itemQ2;
    }
    
    public void setItemQ2(Short itemQ2) {
        this.itemQ2 = itemQ2;
    }

    public Short getItemQ3() {
        return this.itemQ3;
    }
    
    public void setItemQ3(Short itemQ3) {
        this.itemQ3 = itemQ3;
    }

    public Short getItemQ4() {
        return this.itemQ4;
    }
    
    public void setItemQ4(Short itemQ4) {
        this.itemQ4 = itemQ4;
    }

    public Short getItemQ5() {
        return this.itemQ5;
    }
    
    public void setItemQ5(Short itemQ5) {
        this.itemQ5 = itemQ5;
    }

    public Short getItemQ6() {
        return this.itemQ6;
    }
    
    public void setItemQ6(Short itemQ6) {
        this.itemQ6 = itemQ6;
    }

    public Short getItemQ7() {
        return this.itemQ7;
    }
    
    public void setItemQ7(Short itemQ7) {
        this.itemQ7 = itemQ7;
    }

    public Short getItemQ8() {
        return this.itemQ8;
    }
    
    public void setItemQ8(Short itemQ8) {
        this.itemQ8 = itemQ8;
    }

    public Short getItemQ9() {
        return this.itemQ9;
    }
    
    public void setItemQ9(Short itemQ9) {
        this.itemQ9 = itemQ9;
    }

    public Short getItemQ10() {
        return this.itemQ10;
    }
    
    public void setItemQ10(Short itemQ10) {
        this.itemQ10 = itemQ10;
    }

    public Short getItemQ11() {
        return this.itemQ11;
    }
    
    public void setItemQ11(Short itemQ11) {
        this.itemQ11 = itemQ11;
    }

    public Short getItemQ12() {
        return this.itemQ12;
    }
    
    public void setItemQ12(Short itemQ12) {
        this.itemQ12 = itemQ12;
    }

    public Short getItemQ13() {
        return this.itemQ13;
    }
    
    public void setItemQ13(Short itemQ13) {
        this.itemQ13 = itemQ13;
    }

    public Short getItemQ14() {
        return this.itemQ14;
    }
    
    public void setItemQ14(Short itemQ14) {
        this.itemQ14 = itemQ14;
    }

    public Short getItemQ15() {
        return this.itemQ15;
    }
    
    public void setItemQ15(Short itemQ15) {
        this.itemQ15 = itemQ15;
    }

    public Short getItemQ16() {
        return this.itemQ16;
    }
    
    public void setItemQ16(Short itemQ16) {
        this.itemQ16 = itemQ16;
    }

    public Short getItemQ17() {
        return this.itemQ17;
    }
    
    public void setItemQ17(Short itemQ17) {
        this.itemQ17 = itemQ17;
    }

    public Short getItemQ18() {
        return this.itemQ18;
    }
    
    public void setItemQ18(Short itemQ18) {
        this.itemQ18 = itemQ18;
    }

    public Short getItemQ19() {
        return this.itemQ19;
    }
    
    public void setItemQ19(Short itemQ19) {
        this.itemQ19 = itemQ19;
    }

    public Short getItemQ20() {
        return this.itemQ20;
    }
    
    public void setItemQ20(Short itemQ20) {
        this.itemQ20 = itemQ20;
    }

    public Short getItemQ21() {
        return this.itemQ21;
    }
    
    public void setItemQ21(Short itemQ21) {
        this.itemQ21 = itemQ21;
    }

    public String getItemNote() {
        return this.itemNote;
    }
    
    public void setItemNote(String itemNote) {
        this.itemNote = itemNote;
    }

    public Set getCheckLists() {
        return this.checkLists;
    }
    
    public void setCheckLists(Set checkLists) {
        this.checkLists = checkLists;
    }
   








}