unit Find_Surname;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Global_Variables;

type

  { TForm4 }

  TForm4 = class(TForm)
    Find_Surname_Button: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    procedure Find_Surname_ButtonClick(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}

{ TForm4 }

procedure TForm4.Find_Surname_ButtonClick(Sender: TObject);
var

   //Surname4: string [22];
   index: longint;
   //number: longint;
   flag: integer;
   sur_mas : array of string;
   s_n, s : longint;
   search: string [22];

begin
   Memo1.clear;
   //Surname4  := Edit1.Text;
   index     := 0;
   //number    := 0;
   flag      := 0;
   s_n       := 0;
   s         := 0;
   //sur_mas   := '';
   seek (F, index);
   read (F, R);
   while (not EOF(F)) do begin
     search := R.Surname;
     index := index+1;
     seek(F, index);
     read(F, R);

     if (search = R.Surname) then begin

       for s_n := 0 to high(sur_mas) do begin

         if (sur_mas[s_n] = search) then begin
           flag := flag + 1;
         end;

       end;

       if (flag = 0) then begin

         Memo1.Lines.Add(R.Surname);
         Memo1.Lines.Add(R.Name);

         sur_mas[s] := search;
         s := s + 1;
       end;

     end;

   end;


end;



















end.

