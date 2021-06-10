unit Global_Variables;

{
{$mode objfpc}{$H+}

uses
  Classes, SysUtils;
}


interface

type Rec = record
  Surname : string [31];
  Name    : string [31];
  Index   : string [31];
  Rage    : string [31];
  end;

var
  F: file of Rec;
  R: Rec;


implementation

end.

