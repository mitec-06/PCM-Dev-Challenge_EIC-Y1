mdl = 'ConfiguredConventionalVirtualVehicle';
open_system(mdl);

%%

%Test 1 
in(1) = Simulink.SimulationInput(mdl); 
in(1) = setParamforManeuverAndDriver('ConfiguredConventionalVirtualVehicle','Drive Cycle', 'FTP75', 'Longitudinal Driver',1, in(1), 'ConfiguredVirtualVehicleModel',1);
simout = sim(in, 'ShowSimulationManager', 'on');
save('simout.mat','simout');
