# Seismic-Processing-VikingGraben-Line12
Seismic processing and subsurface imaging of the Mobil AVO Viking Graben Line 12 dataset using Seismic Unix (SU).
## Project Description
This repository hosts the automation scripts and processing configurations for the classic **Mobil AVO Viking Graben Line 12** marine seismic reflection dataset, originally released for the 1994 SEG inversion workshop. The objective of this self-directed study is to build a comprehensive processing line using native **Seismic Unix (SU)** environments to enhance structural subsurface imaging and prepare the data for Amplitude Versus Offset (AVO) analysis.

## Current Project Status: [Active / In Progress]
* **Phase 1 [Completed]:** Repository deployment, directory optimization, and structural data ingestion script modeling.
* **Phase 2 [In Progress]:** Evaluating geometry parameters, auditing trace headers, and benchmarking baseline Automatic Gain Control (AGC) variables.
* **Phase 3 [Upcoming]:** Direct arrival muting, source designature deconvolution, velocity modeling, and stacked/migrated sections.

## Directory Layout
* `/scripts` - Linux shell scripts running core Seismic Unix binaries (`segyread`, `sugain`, `sufilter`).
* `/outputs` - Generated X-Windows graphic profiles of marine wavefield snapshots.
