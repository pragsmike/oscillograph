(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[      3426,         96]
NotebookOptionsPosition[      3927,         89]
NotebookOutlinePosition[      4432,        111]
CellTagsIndexPosition[      4389,        108]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`i$$ = -1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`i$$], -1, 10, -1}}, Typeset`size$$ = {
    360., {74., 79.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`i$131225$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`i$$ = -1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`i$$, $CellContext`i$131225$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> ($CellContext`s = {2, 4, 5, 3, 1, 2, 3, 6, 8, 5, 
         2}; $CellContext`r[
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]] := 
        Part[$CellContext`s, $CellContext`y + 
           1] == $CellContext`x; $CellContext`ras = Raster[
          Table[
           If[
            $CellContext`r[$CellContext`x, $CellContext`y], 1, 
            0], {$CellContext`x, 0, 10}, {$CellContext`y, 0, 
            10}]]; $CellContext`mark = If[$CellContext`i$$ < 0, {}, {
           FaceForm[None], 
           EdgeForm[Red], 
           Rectangle[{$CellContext`i$$, 0}, {$CellContext`i$$ + 1, 10}]}]; 
       GraphicsRow[{
          
          Graphics[$CellContext`ras, Frame -> True, 
           Epilog -> $CellContext`mark], 
          ListPlot[
           Take[$CellContext`s, $CellContext`i$$ + 1], Filling -> Axis, 
           PlotRange -> {{0, 10}, {0, 10}}]}]), 
      "Specifications" :> {{$CellContext`i$$, -1, 10, -1}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{407., {118., 125.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
},
WindowSize->{435.66, 252.35},
Visible->True,
AuthoredSize->{436, 252},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.0 for Linux x86 (64-bit) (September 21, 2016)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1464, 33, 2459, 54, 245, "Output"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 3xD5xB8QQ5khqBKAkTSREKvD *)
