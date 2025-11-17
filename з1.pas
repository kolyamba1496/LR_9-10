program one;
var  a: array of integer; // a - глобальная переменная
  n, i: integer; // n,i - глобальные переменные 
function f1(x: array of integer): integer; // x - формальный параметр(передача по ссылке)
var j:integer; // локальная переменная
begin
  Result := 1; // локальная переменная
  for j := 0 to Length(x) - 1 do
    Result := Result * x[j];
end;
function f2(x: array of integer): integer; // x - формальный параметр(передача по ссылке)

var j:integer; // локальная переменная  
begin
  Result := 1; // локальная переменная
  for  j := 0 to Length(x) - 1 do 
  begin
    if x[j] mod 2 = 0 then
      Result := Result * x[j];
  end;
end;
begin
  write('Введите размер массива: ');
  readln(n);
  SetLength(a, n);
  writeln('Введите элементы массива:');
  for i := 1 to n do
  begin
    readln(a[i-1]);
  end;
  writeln('Ваш массив:');
  for i := 0 to n - 1 do
    write(a[i], ' ');
  writeln;
  writeln('Произведение всех элементов: ', f1(a)); //a - фактический параметр
  writeln('Произведение четных элементов: ', f2(a)); //a - фактический параметр
end.