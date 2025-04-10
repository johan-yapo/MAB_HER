# Input Files for the Surface-Slab Models of Ni<sub>3</sub>ZnB<sub>2</sub> and Ni<sub>2</sub>ZnB for computing the Gibb's Free Energy of Hydrogen Adsorption 

## 1) Cloning the Repository

To clone the **FGT_HER** repository, use the following command:

```sh
git clone https://github.com/johan-yapo/MAB_HER.git
```

## 2) Computational Details

Density functional theory (DFT) was used to determine the H-binding energy (ΔE<sub>H</sub>) on modeled (00l) surfaces of Ni<sub>3</sub>ZnB<sub>2</sub> and Ni<sub>2</sub>ZnB. The total energy calculations for the surfaces were done using the projector augmented wave coded in the Vienna ab initio simulation package (VASP). In addition, all the VASP calculations employed the generalized gradient approximation (GGA) with the exchange and correlation functionals treated by the Perdew-Burke-Enzerhoff (PBE) and revised PBE with Pade approximation methods for the structure relaxations and single-point energy calculations, respectively. The convergence threshold for the ionic relaxation loop was set to 0.02 eV/Å in force and the cutoff energy for the plane wave calculations was set to 500 eV. Spin polarization functions were calculated just for the single-point energy calculations of the surface. The Brillouin zone integrations were carried out with a 7 x 23 x 3 k-point mesh using the Monkhorst-Pack automatic grid generation mode.

To construct the surface the unit cell of both Ni<sub>3</sub>ZnB<sub>2</sub> and Ni<sub>2</sub>ZnB was first relaxed, as the cell shape, volume, and positions of all the atoms were all optimized in VASP. To make the surface we need to cleave the bulk materials in the desired direction and then add vacuum spacing in that same direction to create 2D slabs (surface supercells) with the proper surface exposed. In this work, a 1 x 1 x 2 supercell was created from their respective unit cells. Then about 15 Å of vacuum space was added in the (001) direction of the supercell to ensure that there would be no inter-slab interactions. This resulted in a 2D slab with four Ni layers and two Zn layers for both slab models. During the structural relaxation step, both the stress tensor and forces were calculated allowing the position of all the atoms to move and the magnitude of the unit cell vectors to change. 

To calculate the Gibbs free energy (ΔG<sub>H</sub>) for H adsorption to predict the HER activity of the different HER active sites on the surface the equation ΔG<sub>H</sub> = ΔE<sub>H</sub> + ΔE<sub>ZPE</sub> – TΔS was used, where ΔE<sub>H</sub> is the H-surface binding energy computed using DFT, ΔE<sub>ZPE</sub> is the zero-point energy difference between adsorbed H and free H<sub>2</sub> and TΔS is the temperature and entropy contribution terms. One thing to note here is that ΔE<sub>ZPE</sub> is usually very small, between 0.01 to 0.05 eV which is around or less than the chemical accuracy target of 1 kcal∙mol<sup>-1</sup> 1 or 0.043 eV that is desired for ab initio computational methods, so it can be neglected here and the equation can be simplified to ΔG<sub>H</sub>  = ΔE<sub>H</sub> – TΔS. TΔS is calculated with the approximation TΔS ≈  (1 )/2 TS°(H<sub>2</sub>), where T = 298.15 K  and S°(H2) = 130.7 J∙mol<sup>-1</sup>∙K<sup>-1</sup>. Lastly, the equation used to solve for the binding energy of hydrogen ΔEH was ΔE_H  = E[surface + nH]-E[surface+(n-1)H]-1/2 E[<sub>H</sub>]. Here E[surface + nH] and E[surface+(n-1)H] are the total energies of the surface with n and n-1 hydrogen atoms adsorbed on it respectively and calculated using VASP, and 1/2 E[H_2] is half of the energy of one gas phase, diatomic hydrogen molecule.

To calculate the Gibbs free energy (ΔG<sub>H</sub>) for H adsorption to predict the HER activity of the different HER active sites on the surface the equation ΔG<sub>H</sub> = ΔE<sub>H</sub> + ΔE<sub>ZPE</sub> – TΔS was used, where ΔE<sub>H</sub> is the H-surface binding energy computed using DFT, ΔE<sub>ZPE</sub> is the zero-point energy difference between adsorbed H and free H<sub>2</sub> and TΔS is the temperature and entropy contribution terms. One thing to note here is that ΔE<sub>ZPE</sub> is usually very small, between 0.01 to 0.05 eV which is around or less than the chemical accuracy target of 1 kcal∙mol<sup>-1</sup> 1 or 0.043 eV that is desired for ab initio computational methods, so it can be neglected here and the equation can be simplified to ΔG<sub>H</sub>  = ΔE<sub>H</sub> – TΔS. TΔS is calculated with the approximation TΔS ≈  (1 )/2 TS°(H<sub>2</sub>), where T = 298.15 K  and S°(H2) = 130.7 J∙mol<sup>-1</sup>∙K<sup>-1</sup>. Lastly, the equation used to solve for the binding energy of hydrogen ΔEH was ΔE_H  = E[surface + nH]-E[surface+(n-1)H]-1/2 E[H<sub>2</sub>]. Here E[surface + nH] and E[surface+(n-1)H] are the total energies of the surface with n and n-1 hydrogen atoms adsorbed on it respectively and calculated using VASP, and 1/2 E[H<sub>2</sub>] is half of the energy of one gas phase, diatomic hydrogen molecule.

## Citation  
If you use this work, please cite:  

Rezaie, A. A., Lee, E., Yapo, J. A. & Fokwa, B. P. T. 
Highly Active and Abundant MAB Phases Ni n +1 ZnB n ( n = 1, 2) toward Hydrogen Evolution. 
Adv Energy Sustain Res 2100052 (2021)
.[doi:10.1002/aesr.202100052](https://doi.org/10.1002/aesr.202100052)






