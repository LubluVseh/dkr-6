program CircularLinkedList;
uses crt;

const
N = 10; //количество элементов в списке

type
ptr = ^node;
node = record
data : integer;
next : ptr;
end;

var
head, ptr1: ptr;

procedure FillList; {заполнение списки данными}
var
i: integer;
begin
for i := 1 to N do
begin
new(ptr1);
ptr1^.data := i;
ptr1^.next := head;
head := ptr1;
end;
end;

procedure PrintList; {вывод списка на экран}
begin
ptr1 := head;
repeat
writeln('Element: ', ptr1^.data, ' number: ', ptr1^.next);
ptr1 := ptr1^.next;
until(ptr1 = head);
end;

begin
clrscr;

head := nil;

FillList;

PrintList;

readln;
end. 