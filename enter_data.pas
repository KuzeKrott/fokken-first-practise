unit Enter_Data;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Global_Variables;

type

  { TForm2 }

  TForm2 = class(TForm)
    Record_Data_Button: TButton;
    Close_Button: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    procedure Close_ButtonClick(Sender: TObject);
    procedure Record_Data_ButtonClick(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Record_Data_ButtonClick(Sender: TObject);
begin
     R.Surname  := Edit1.Text;
     R.Name     := Edit2.Text;
     R.Index    := Edit3.Text;
     R.Rage     := Edit4.Text;
     Write (F, R);
     Edit1.Text := '';
     Edit2.Text := '';
     Edit3.Text := '';
     Edit4.Text := '';
end;

procedure TForm2.Close_ButtonClick(Sender: TObject);
begin
     closefile (F);
     self.hide;
end;

end.

