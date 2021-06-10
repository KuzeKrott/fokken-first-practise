unit Global_Variables;

{
{$mode objfpc}{$H+}

uses
  Classes, SysUtils;
}


interface

type Rec = record
  Surname : string [22];
  Name    : string [22];
  Index   : string [22];
  Rage    : integer;
  end;

var
  F: file of Rec;
  R: Rec;


implementation

end.

