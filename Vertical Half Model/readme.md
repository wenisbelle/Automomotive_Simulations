
  # Half Vertical Model 📝

  This is a simulation of a half vehicle,
  assuming that the vehicle's left and right
  are exactly the same, with focus on the Vertical
  dynamics. The following figure represents
  how the model is build.

  ![Dynamic model](images/Half Vehicle.png)

  
  ## How to Run 🚀  
  To get started, run the *varglobal* script, this
  will start all important variables to start
  the simulation. In the script there are comments
  to help you to modify each element as you need 
  in your simulation.
  

  After that, open the *Model_V3_vertical.slx*
  Simulink file and that's it, you will have the system
  like in the image below.

   ![Simulink half model](images/Half Vehicle.png)
 

  When you run the model it needs to stabilize,
  because the initial conditions are setted up
  in such a configuration that the springs deformations,
  from the tires and suspensions are zero, so
  it's needed to wait some time to stabilize the 
  vehicle and then we can change the road profile.

  ## Modify Road

  In this model is setup already a bump in the road, in order to analyse 
  the vehicle's response. If you wanna change this you need to change the function 
  inside the interpreted Matlab Fcn block in the road subsystem, but just remember to 
  give some time for the stabilization

  ## Results

  Here you can see the results  in the pitch and the vertical linear responses respectively
  when the vehicle cross this bump in road.

    ![Pitch](images/pitch.jpg)

    ![vertical velocity](images/linear_velocity.jpg)
