unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Gauges, StdCtrls, ShellAPI, Menus;

type
  TfrmMain = class(TForm)
    TmrRefresh: TTimer;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel1: TPanel;
    GgAllocatedMem: TGauge;
    Panel6: TPanel;
    GgAllocatedPhysicalMem: TGauge;
    Panel7: TPanel;
    GgAllocatedPageFileMem: TGauge;
    Panel8: TPanel;
    GgAllocatedVirtualMem: TGauge;
    Panel2: TPanel;
    GgFreeMem: TGauge;
    Panel3: TPanel;
    GgFreePhysicalMem: TGauge;
    Panel4: TPanel;
    GgFreePageFileMem: TGauge;
    Panel5: TPanel;
    GgFreeVirtualMem: TGauge;
    Label1: TLabel;
    Label2: TLabel;
    Panel11: TPanel;
    MmResumo: TMemo;
    PppMnTray: TPopupMenu;
    Fechar1: TMenuItem;
    procedure TmrRefreshTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
  private
    DeixaSair: Boolean;
    IconData: TNotifyIconData;
    procedure MyMinimize(Sender: TObject);
    function UpRound(Value: Double): Integer;
    function DownRound(Value: Double): Integer;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

function TfrmMain.DownRound(Value: Double): Integer;
begin
  Result := Trunc(Value);
end;

procedure TfrmMain.TmrRefreshTimer(Sender: TObject);
const
  cBytesPorMb = 1024 * 1024;
var
  MemStatus: TMemoryStatus;
begin
  MemStatus.dwLength := SizeOf(MemStatus);
  GlobalMemoryStatus(MemStatus);

  MmResumo.Clear;
  with MmResumo.Lines do
   begin
    Add(Format('Memory in use:                     %d%%', [MemStatus.dwMemoryLoad]));
    Add('Total of physical memory:     ' + FormatFloat('0000.00 Mb', MemStatus.dwTotalPhys / cBytesPorMb));
    Add('Maximum of pagefile:         ' + FormatFloat('0000.00 Mb', MemStatus.dwTotalPageFile / cBytesPorMb));
    Add('Total of virtual memory:    ' + FormatFloat('0000.00 Mb', MemStatus.dwTotalVirtual / cBytesPorMb));
   end;

  // Memorias alocadas
  with GgAllocatedMem do
  begin
    MaxValue := DownRound(MemStatus.dwTotalPhys / cBytesPorMb);
    Progress := UpRound(MemStatus.dwMemoryLoad);
  end;
  with GgAllocatedPhysicalMem do
  begin
    MaxValue := DownRound(MemStatus.dwTotalPhys / cBytesPorMb);
    Progress := UpRound((MemStatus.dwTotalPhys - MemStatus.dwAvailPhys) / cBytesPorMb);
  end;
  with GgAllocatedPageFileMem do
  begin
    MaxValue := DownRound(MemStatus.dwTotalPageFile / cBytesPorMb);
    Progress := UpRound((MemStatus.dwTotalPageFile - MemStatus.dwAvailPageFile) / cBytesPorMb);
  end;
  with GgAllocatedVirtualMem do
  begin
    MaxValue := DownRound(MemStatus.dwTotalVirtual / cBytesPorMb);
    Progress := UpRound((MemStatus.dwTotalVirtual - MemStatus.dwAvailVirtual) / cBytesPorMb);
  end;

  // Memórias disponíveis
  with GgFreeMem do
  begin
    MaxValue := DownRound(MemStatus.dwTotalPhys / cBytesPorMb);
    Progress := DownRound(MemStatus.dwTotalPhys / cBytesPorMb) - DownRound(MemStatus.dwMemoryLoad);
  end;
  with GgFreePhysicalMem do
  begin
    MaxValue := DownRound(MemStatus.dwTotalPhys / cBytesPorMb);
    Progress := DownRound(MemStatus.dwAvailPhys / cBytesPorMb);
  end;
  with GgFreePageFileMem do
  begin
    MaxValue := DownRound(MemStatus.dwTotalPageFile / cBytesPorMb);
    Progress := DownRound(MemStatus.dwAvailPageFile / cBytesPorMb);
  end;
  with GgFreeVirtualMem do
  begin
    MaxValue := DownRound(MemStatus.dwTotalVirtual / cBytesPorMb);
    Progress := DownRound(MemStatus.dwAvailVirtual / cBytesPorMb);
  end;
end;

function TfrmMain.UpRound(Value: Double): Integer;
begin
  Result := Trunc(Value);
  if Frac(Value) <> 0 then
    Result := Trunc(Value + 1);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  TmrRefreshTimer(Self);
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  Shell_NotifyIcon(NIM_DELETE, @IconData);
end;

procedure TfrmMain.MyMinimize(Sender: TObject);
begin
  ShowWindow(Application.Handle, SW_HIDE);
end;

procedure TfrmMain.Fechar1Click(Sender: TObject);
begin
  Close;
end;

end.
