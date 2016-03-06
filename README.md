# Mechanical Stifness of Simplified Beetle Structure
## Introduction
This repository contains a brief code to compute the mechanical stiffness of the beetle given the following parameters:

- Thickness of Bilayer 1 (L1)
- Thickness of Bilayer 2 (L2)
- Cross-sectional Area of Pillars (AROD)
- Cross-sectional area of Bi-layers (ABL)
- Youngs Modulus of Layer 1 (E1)
- Youngs Modulus of Layer 2 (E2)
- Youngs Modulus of Pillars (EPIL)
- Poisson's Ratio of Layer 1 (NU1)
- Poisson's Ratio of Layer 2 (NU2)


## Notes

The model assumes that the poissons ratio of the Pillars are 0 and therefore effects are ignored. Furthermore, the model ignores any effects of adhesion between the layers and the pillars. 

This model was verified using numerical FEA and has tested that the Poison's ratio of the pillars contribute less than a 5% error to the analytical model.