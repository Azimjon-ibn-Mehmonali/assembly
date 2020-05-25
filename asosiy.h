//---------------------------------------------------------------------------

#ifndef asosiyH
#define asosiyH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <vector>
#include <map>
#include <string>
#include <algorithm>

using namespace std;
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TRichEdit *code;
        TLabel *label_code;
    TButton *yuklash;
    TMemo *chiqish;
        TLabel *label_input;
        TLabel *label_output;
        TGroupBox *cpu;
        TEdit *pc;
        TLabel *label_pc;
        TEdit *acc;
        TLabel *label_acc;
        TLabel *label_ix;
        TEdit *ix;
        TButton *step_forward;
        TButton *step_back;
    TButton *qayta;
    TEdit *kirish;
    TButton *Button1;
        void __fastcall yuklashClick(TObject *Sender);
    void __fastcall step_forwardClick(TObject *Sender);
    void __fastcall qaytaClick(TObject *Sender);
    void __fastcall kirishKeyPress(TObject *Sender, char &Key);
    void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        TStrings * matn;
        map<string, int> nishonlar;
        vector<string> dastur;
        int txq[1000];
        int teng;

        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
