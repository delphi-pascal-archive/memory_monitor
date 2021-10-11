program MemoryMonitor;

uses
  Forms,
  Main in 'Main.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Memory Monitor';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
