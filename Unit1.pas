unit Unit1;

interface


uses Winapi.Windows, Winapi.Messages, System.SysUtils,
 System.Variants, System.Classes, Vcl.Graphics,
 Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  // Абстрактний клас TPig
  TPig = class
  protected
    FName: String;
  public
    Constructor Create(Name: String);
    function GetInfo: String; virtual; abstract;
  end;

  // Клас-нащадок TPetPig (домашня свинка)
  TPetPig = class(TPig)
  public
    function GetInfo: String; override;
  end;

  // Клас-нащадок TFarmPig (фермерська свиня)
  TFarmPig = class(TPig)
  public
    function GetInfo: String; override;
  end;

  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    ButtonAdd: TButton;
    ButtonShow: TButton;
    GroupBox1: TGroupBox;
    RadioButtonPet: TRadioButton;
    RadioButtonFarm: TRadioButton;
    procedure ButtonAddClick(Sender: TObject);
    procedure ButtonShowClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  PigList: array[1..10] of TPig;
  PigCount: Integer = 0;

implementation

{$R *.dfm}

// Конструктор TPig
constructor TPig.Create(Name: String);
begin
  FName := Name;
end;

// Метод GetInfo для домашньої свинки
function TPetPig.GetInfo: String;
begin
  Result := 'Домашня свинка: ' + FName;
end;

// Метод GetInfo для фермерської свині
function TFarmPig.GetInfo: String;
begin
  Result := 'Фермерська свиня: ' + FName;
end;

// Додавання нової свині
procedure TForm1.ButtonAddClick(Sender: TObject);
begin
  if PigCount < 10 then
  begin
    Inc(PigCount);
    if RadioButtonPet.Checked then
      PigList[PigCount] := TPetPig.Create(Edit1.Text)
    else
      PigList[PigCount] := TFarmPig.Create(Edit1.Text);

    Edit1.Text := '';
    Edit1.SetFocus;
  end
  else
    ShowMessage('Список свиней заповнено!');
end;

// Вивід списку свиней
procedure TForm1.ButtonShowClick(Sender: TObject);
var
  i: Integer;
  Info: String;
begin
  Info := '';
  for i := 1 to PigCount do
    if PigList[i] <> nil then
      Info := Info + PigList[i].GetInfo + #13;

  ShowMessage('Список свиней:' + #13 + Info);
end;

end.

