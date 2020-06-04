unit uFrmMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.Layouts;

type
  TfrmMain = class(TForm)
    lytTop: TLayout;
    lytBotton: TLayout;
    lytMain: TLayout;
    imgLogo: TImage;
    lblName: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Layout1: TLayout;
    Label4: TLabel;
    edtNPapComp: TEdit;
    Label5: TLabel;
    edtVMedPap: TEdit;
    Label6: TLabel;
    edtVVendPap: TEdit;
    lytButtons: TLayout;
    lytResultado: TLayout;
    btnCalcular: TButton;
    btnLimpar: TButton;
    lblResultados: TLabel;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

procedure TfrmMain.btnCalcularClick(Sender: TObject);
Var
  NroPapComp, ValMedPap, ValVendPap , MargemLucro, ValTot ,LucroBruto : Double;
begin
    if (edtNPapComp.Text<>'')and(edtVMedPap.Text<>'')and(edtVVendPap.Text<>'') then begin

      NroPapcomp    := StrToFloat(edtNPapComp.Text);
      ValMedPap     := StrToFloat(edtVMedPap.Text);
      ValVendPap    := StrToFloat(edtVVendPap.Text);
      ValTot        := NroPapComp*ValMedPap;
      LucroBruto    := (NroPapComp*ValvendPap)-ValTot;
      MargemLucro   := LucroBruto*100/ValTot;
      lblResultados.Text := 'RESULTADOS'+#13#10+
                       '-O Resultado da sua margem de lucro é '+floatToStr(MargemLucro)+' %'+ #13#10+
                       '-Você comprou '+edtNPapComp.text+' papéis no valor de R$ '+FormatFloat(',0.00',ValTot)+ #13#10+
                       ', os seus lucros brutos foram R$ '+FormatFloat(',0.00',LucroBruto);
    end else
      ShowMessage('TODOS OS CAMPOS DEVEM ESTAR PREENCHIDOS');

end;

procedure TfrmMain.btnLimparClick(Sender: TObject);
begin
    edtNPapComp.Text :='';
    edtVMedPap.Text  :='';
    edtVVendPap.Text :='';
end;

end.
