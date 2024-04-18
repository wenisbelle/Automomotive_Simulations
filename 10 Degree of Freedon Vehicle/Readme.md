# 10 Degree of Freedon Vehicle

This simulation was made to study the impacts of changing 
the conventional dampers for magnetorheological ones. In this kind
of technology the dumping coefficient can be controlled, so the 
vehicle behavior can be improved. 

This work led to an article named "VTR 4 X 4 THREE-DIMENSIONAL MATHEMATICAL MODEL WITH INDEPENDENT SUSPENSIONS AND MAGNETORREOLOGICAL DAMPERS". YOu can find it here: https://saemobilus.sae.org/content/2022-36-0036/

Unfortunatly, due to copyright issues, I can't post the article here. But if you want it just contact that I send to you. Emal: vwenesb@gmail.com


The simulation consists in modelling the chassis with 6 degrees of freedon, 3 for position and 3 for orientation, and one for each suspension. The lateral dynamics is described using the Pacejka tire model and the longitudinal dynamics isn't modeled since it can be considered a constant speed in the local reference frame. In the following images we have the simulink model schematic, the tire, the chassis and the suspension, respectively:


 ![Simulink Complete](https://github.com/wenisbelle/Automomotive_Simulations/blob/master/Images/simulink_10DOF.png)


 ![Simulink tire](https://github.com/wenisbelle/Automomotive_Simulations/blob/master/Images/simulink_tire_10DOF.png)



 ![Simulink chassis](https://github.com/wenisbelle/Automomotive_Simulations/blob/master/Images/simulink_chassis_10DOF.png)


 ![Simulink Suspension](https://github.com/wenisbelle/Automomotive_Simulations/blob/master/Images/simulink_suspension_10DOF.png)

The control system uses Fuzzy logic to control the current input throught the damper. The following images show the system
architecture.


 ![Simulink Control](https://github.com/wenisbelle/Automomotive_Simulations/blob/master/Images/simulink_control_10DOF.png)



 ![Simulink Controller](https://github.com/wenisbelle/Automomotive_Simulations/blob/master/Images/simulink_controller_10DOF.png)

