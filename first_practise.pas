unit First_practise;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Enter_Data, Global_Variables, Delete_Data, Find_Surname;

type

  { TForm1 }

  TForm1 = class(TForm)
    Delete_Data_Button: TButton;
    Enter_Data_Button: TButton;
    Find_Surname_Button: TButton;
    Students_Mount_Button: TButton;
    Rage_List_Button: TButton;
    Histogram_Button: TButton;
    procedure Delete_Data_ButtonClick(Sender: TObject);
    procedure Enter_Data_ButtonClick(Sender: TObject);
    procedure Find_Surname_ButtonClick(Sender: TObject);
    procedure Students_Mount_ButtonClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Enter_Data_ButtonClick(Sender: TObject);
var Size1: integer;
begin
     assignfile (F, 'students.dat');
     {$I-}
     Reset (F);
     {$I+}
     if ioresult = 0 then
     begin
       Size1 := filesize(F);
       seek (F, Size1);
     end
     else rewrite (F);

     Form2.Show;
     Form2.Edit1.Setfocus;

end;



procedure TForm1.Delete_Data_ButtonClick(Sender: TObject);
var Size2: integer;
begin
     assignfile (F, 'students.dat');
     {$I-}
     Reset (F);
     {$I+}
     if ioresult = 0 then
     begin
       Size2 := filesize(F);
       seek (F, Size2);
     end;

     Form3.Show;
     Form3.Edit1.Setfocus;
end;


procedure TForm1.Find_Surname_ButtonClick(Sender: TObject);
var Size3: integer;
begin
     assignfile (F, 'students.dat');
     {$I-}
     Reset (F);
     {$I+}
     if ioresult = 0 then
     begin
       Size3 := filesize(F);
       seek (F, Size3);
     end;

     Form4.Show;
     Form4.Edit1.Setfocus;
end;

procedure TForm1.Students_Mount_ButtonClick(Sender: TObject);
var Size4: integer;
begin
     assignfile (F, 'students.dat');
     {$I-}
     Reset (F);
     {$I+}
     if ioresult = 0 then
     begin
       Size4 := filesize(F);
       seek (F, Size4);
     end;

     //Form5.Show;
     //Form4.Edit1.Setfocus;
end;

























end.

