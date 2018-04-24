import java.util.*;
import cse308.entity.*;

public class RedistrictingManager {
	State state;
	double[] weights;
	District startDistrict;
	
	public RedistrictingManager(State s,double[] weights,District startDistrict) {
		this.state=s;
		this.weights=weights;
		this.startDistrict=startDistrict;
	}
	
	public Plan startAlgo(int planId,String user){
		int[] borderPrecinctList=startDistrict.getBorderPrecinctList();
		District[] neighborDistrictList=startDistrict.getNeighborDistricts();
		
		for(int precinctId:borderPrecinctList){
			if(calculateGoodness(precinctId, startDistrict, neighborDistrictList[0])>0){
				moveTo(precinctId,startDistrict,neighborDistrictList[0]);
			}
		}
		Plan p = new Plan(planId,new Date().toString(),state.getStateName(),state.getStateId(),state,user);	
		return p;
	}
	
	public double calculateGoodness(int precinctId, District d1,District d2){
		if (!checkConstraint(precinctId,d2)){
			return -1;
		}
		double COMPACTNESSGoodness=calculateParticularGoodness(precinctId,d1,d2,Parameters.COMPACTNESS,weights[0]);
		double POPULATIONGoodness=calculateParticularGoodness(precinctId,d1,d2,Parameters.POPULATION,weights[1]);
		double POLITICALFARINESSGoodness=calculateParticularGoodness(precinctId,d1,d2,Parameters.POLITICALFARINESS,weights[2]);
		double CONTIGUITYGoodness=calculateParticularGoodness(precinctId,d1,d2,Parameters.CONTIGUITY,weights[3]);
		double RACIALFAIRNESSGoodness=calculateParticularGoodness(precinctId,d1,d2,Parameters.RACIALFAIRNESS,weights[4]);
		double totalGoodness=COMPACTNESSGoodness+POPULATIONGoodness+POLITICALFARINESSGoodness+
				CONTIGUITYGoodness+RACIALFAIRNESSGoodness;
		return totalGoodness;
	}
	
	public boolean checkConstraint(int precinctId, District d2){
		District[] neighborDistrictList=d2.getNeighborDistricts();
		
		for(District d:neighborDistrictList){
			if(Arrays.asList(d.getBorderPrecinctList()).contains(precinctId)){
				return true;
			}
		}
		return false;
	}
	
	public void moveTo(int precinctId, District d1,District d2){
		int[] inPList=d2.getIntoPList();
		int[] newPList=new int[inPList.length+1];
		for(int i=0;i<inPList.length;i++)
			newPList[i]=inPList[i];
		newPList[newPList.length-1]=precinctId;
		d2.setIntoPList(newPList);
	}
	
	public double calculateParticularGoodness(int precinctId, District d1,District d2,Parameters p,double weight){
		return 0;
	}
}
