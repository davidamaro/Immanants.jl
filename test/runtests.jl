using Test, Immanants
import LinearAlgebra: I

@testset "immanants of the identity matrix" begin
  @test immanant(Partition([4]),  Matrix(1I, 4,4))       == 1
  @test immanant(Partition([3,1]),  Matrix(1I, 4,4))     == 3
  @test immanant(Partition([2,2]),  Matrix(1I, 4,4))     == 2
  @test immanant(Partition([2,1,1]),  Matrix(1I, 4,4))   == 3
  @test immanant(Partition([1,1,1,1]),  Matrix(1I, 4,4)) == 1
end

@testset "immanant of a triangular matrix" begin
  mat = [0 1 0 0;1 0 1 0; 0 1 0 1; 0 0 1 0]
  @test immanant(Partition([4]),  mat)       == 1
  @test immanant(Partition([3,1]),  mat)     == -1
  @test immanant(Partition([2,2]),  mat)     == 2
  @test immanant(Partition([2,1,1]),  mat)   == -1
  @test immanant(Partition([1,1,1,1]),  mat) == 1
end

#mat = [[-98 6 61 85 81 -93 -66 50 29 83; 95 7 -92 28 69 -12 61 49 36 -67; 92 -8 12 -79 12 -34 41 30 87 34; 55 52 -13 -70 69 -3 -98 -34 -100 38; -85 51 45 -73 -44 77 -11 91 75 45; 79 -5 -24 68 65 56 98 75 -29 1; -85 -96 86 82 21 18 38 54 -57 -98; -27 -11 15 97 -18 -35 31 -92 -93 45; 56 -39 -48 87 -80 79 31 29 43 38; 98 83 48 -72 -35 -59 11 -9 -11 67]]
@testset "immanant of a triangular matrix" begin
  mat = [-56 -95 13 2 -75 94; -10 22 -17 68 -91 28; 95 90 -22 -49 40 -75; 11 -12 -82 -93 -57 -99; -78 -62 -56 -86 -67 59; -66 9 -14 56 -95 41]
  @test immanant(Partition([5,1]),  mat)       == 1811701005544
end
