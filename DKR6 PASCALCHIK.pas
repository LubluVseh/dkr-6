program CircularLinkedList;
uses crt;

type
TCircularArray = array [1..10] of integer;

var
arr: TCircularArray;
head, tail: integer;

procedure InitList;
var
i: integer;
begin
//инициализация массива всеми нулями
for i := 1 to 10 do
begin
arr[i] := 0;
end;
head := 1;
tail := 0;
end;

procedure AddNode(data: integer);
begin
if ((tail + 1) mod 10 = head) then //проверка на переполнение
begin
writeln('Список переполнен');
exit;
end;
arr[tail + 1] := data;
tail := (tail + 1) mod 10; //циклический индекс
end;

procedure PrintList;
var ptr1:integer;
begin
if tail >= head then
begin
for ptr1:= head to tail do
begin
write(ptr1, ':', arr[ptr1], ' -> ');
end;
end
else
begin
for ptr1 := head to 10 do
begin
write(ptr1, ':', arr[ptr1], ' -> ');
end;
for ptr1 := 1 to tail do
begin
write(ptr1, ':', arr[ptr1], ' -> ');
end;
end;
writeln();
end;

procedure RemoveNode;
begin
if head > tail then
writeln('Список пуст')
else
head := (head + 1) mod 10;
end;

begin
clrscr;

InitList();

AddNode(1);
AddNode(2);
AddNode(3);
AddNode(4);
AddNode(5);
RemoveNode();
AddNode(6);
RemoveNode();
AddNode(7);

PrintList();

readln();
end.