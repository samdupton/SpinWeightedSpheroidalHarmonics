(****************************************************************)
(* SpinWeightedSpheroidalEigenvalue                             *)
(****************************************************************)
VerificationTest[
    SpinWeightedSpheroidalEigenvalue[2, 3, 2, 0]
    ,
    6
    ,
    TestID->"SpinWeightedSpheroidalEigenvalue with zero spheroidicity."
]

VerificationTest[
        SpinWeightedSpheroidalEigenvalue[2, 10, 10, 1.2345],
        79.76477183487565,
        TestID -> "SpinWeightedSpheroidalEigenvalue with positive spheroidicity",
]

(****************************************************************)
(* SpinWeightedSpheroidalHarmonicS s=phi=0                      *)
(* Test that for s=phi=0, function reduces to                   *)
(* Sqrt[(2 l + 1)/(4 \[Pi])] Sqrt[(l - m)!/(l + m)!]            *)
(*   SpheroidalPS[l, m, I \[Gamma], Cos[\[Theta]]]              *)
(****************************************************************)
Module[
    {s = 0, l = 1, m = 0, \[Gamma] = 0.5, \[Theta] = 0.5, \[Phi] = 0},
    VerificationTest[
        N[Sqrt[(2 l + 1)/(4 \[Pi])] Sqrt[(l - m)!/(l + m)!] SpheroidalPS[l, m, I \[Gamma], Cos[\[Theta]]]],
        N[SpinWeightedSpheroidalHarmonicS[s, l, m, \[Gamma], \[Theta], \[Phi]]],
        TestID -> "Compare SpinWeightedSpheroidalEigenvalue with s=phi=0 to equivalent formula in documentation with l=1"
    ]
]

Module[
    {s = 0, l = 2, m = -1, \[Gamma] = 0.8, \[Theta] = 0.2, \[Phi] = 0},
    VerificationTest[
        N[Sqrt[(2 l + 1)/(4 \[Pi])] Sqrt[(l - m)!/(l + m)!] SpheroidalPS[l, m, I \[Gamma], Cos[\[Theta]]]],
        N[SpinWeightedSpheroidalHarmonicS[s, l, m, \[Gamma], \[Theta], \[Phi]]],
        TestID -> "Compare SpinWeightedSpheroidalEigenvalue with s=phi=0 to equivalent formula in documentation with l=2"
    ]
]