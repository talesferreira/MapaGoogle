unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ShellAPI, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    WebBrowser1: TWebBrowser;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
WebBrowser1.Navigate(PChar('http://maps.google.com.br/maps?f=q&am...' + Edit1.Text + '-BR&jsv=143c&sll=-23.186453­,-46.884453&sspn=0.478436,' + '0.545883&g=&ie=UTF8&ct=­clnk&cd=1'));

//ShellExecute(0, Nil, PChar('http://maps.google.com.br/maps?f=q&am...' + Edit1.Text + '-BR&jsv=143c&sll=-23.186453­,-46.884453&sspn=0.478436,' + '0.545883&g=&ie=UTF8&ct=­clnk&cd=1'), Nil, Nil, 0);
end;

end.
