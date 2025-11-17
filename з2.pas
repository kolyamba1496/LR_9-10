program one;
const 
  N = 8;
type 
  m1 = array[1..N, 1..N] of integer;
  m2 = array[1..N] of integer;

procedure random(var matrix: m1);
var 
  i, j: integer;
begin
  for i := 1 to N do
    for j := 1 to N do
      matrix[i, j] := random(7);
end;

procedure print(a: m1);
var 
  i, j: integer;
begin
  writeln();
  for i := 1 to N do
  begin
    for j := 1 to N do
      write(a[i, j]:5);
    writeln;
  end;
end;

function para7(row: m2): boolean;
var 
  j: integer;
begin
  para7 := false;
  for j := 1 to N - 1 do
    if row[j] + row[j + 1] = 7 then
    begin
      para7 := true;
      exit;
    end;
end;

procedure res(b: m1; var r: m2);
var 
  i, j: integer; // добавил j здесь
  temp: m2;
begin
  for i := 1 to N do
  begin
    for j := 1 to N do
      temp[j] := b[i, j];
    
    if para7(temp) then
      r[i] := 1
    else
      r[i] := -1;
  end;
end;

procedure resultat(res: m2);
var 
  i: integer;
begin
  writeln('результат');
  for i := 1 to N do
    write(res[i]:5);
  writeln;
end;
var 
  matrix: m1;
  matrix2: m2;
begin
  randomize;
  random(matrix);
  print(matrix);
  res(matrix, matrix2);
  resultat(matrix2);
end.