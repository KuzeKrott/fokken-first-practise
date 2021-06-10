unit Delete_Data;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Global_Variables;

type

  { TForm3 }

  TForm3 = class(TForm)
    Close_Button: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Delete_Data_Button: TButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    procedure Close_ButtonClick(Sender: TObject);
    procedure Delete_Data_ButtonClick(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.Delete_Data_ButtonClick(Sender: TObject);
var
  flag: boolean;
  number: longint;
  index: longint;
  Surname3, Name3, Index3, Rage3: string [31];
  temp: integer;

begin
     Reset (F);
     flag := false;
     number := 0;
     index  := 0;
     Surname3  := Edit1.Text;
     Name3     := Edit2.Text;
     Index3    := Edit3.Text;
     Rage3     := Edit4.Text;
     seek (F, index);
     read (F, R);

     while (not EOF(F)) do begin
       if (not ((R.Surname = Surname3) and (R.Name = Name3)
       and (R.Index = Index3) and (R.Rage = Rage3)))
       then begin
           number := number+1;
           read(F, R);
       end
       else begin
           flag := true;
           temp := filepos(F);
           break;
       end;
     end;

     if (EOF(F)) then begin
          seek(F, filepos(F)-1);
          truncate (F);
          closefile(F);
          flag := true;
     end
     else begin
        if flag then begin
            index := number;
            temp := filesize(F);
            while (not EOF(F)) do begin
                  temp := filepos(f);
                  read (F, R);
                  seek (F, filepos(F)-2);
                  write (F, R);
                  seek (F, filepos(F)+1);
                  temp := filepos(f);
             end;

             seek (F, filepos(F)-1);
             truncate (F);
             closefile(F);
        end;
     end;



     if (flag = false) then begin
       Edit1.Text := 'НЕТ ТАКОГО';
       Edit2.Text := 'НЕТ ТАКОГО';
       Edit3.Text := 'НЕТ ТАКОГО';
       Edit4.Text := 'НЕТ ТАКОГО';
       closefile(F);
     end
     else begin
       Edit1.Text := '';
       Edit2.Text := '';
       Edit3.Text := '';
       Edit4.Text := '';
     end;
end;

procedure TForm3.Close_ButtonClick(Sender: TObject);
begin
     self.hide;
end;


end.

