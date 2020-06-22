//---------------------------------------------------------------------------

#ifndef asosiyH
#define asosiyH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <Grids.hpp>
#include <ValEdit.hpp>
#include "sSkinManager.hpp"
#include "sSkinProvider.hpp"
#include "sCheckBox.hpp"
#include "sButton.hpp"
#include "sLabel.hpp"
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
    TMemo *chiqish;
        TGroupBox *cpu;
        TEdit *pc;
        TEdit *acc;
        TEdit *ix;
    TEdit *kirish;
    TValueListEditor *tezxot;
    TGroupBox *xotira;
    TEdit *ymanzil;
    TsSkinManager *sSkinManager1;
    TsSkinProvider *sSkinProvider1;
    TsButton *xotira_qosh;
    TsButton *yuklash;
    TsButton *step_forward;
    TsButton *qayta;
    TsButton *ishla;
    TsLabel *sLabel1;
    TsLabel *sLabel2;
    TsLabel *sLabel3;
    TsLabel *sLabel4;
    TsLabel *sLabel5;
    TsLabel *sLabel6;
        void __fastcall yuklash1Click(TObject *Sender);
    void __fastcall step_forward1Click(TObject *Sender);
    void __fastcall qayta1Click(TObject *Sender);
    void __fastcall kirishKeyPress(TObject *Sender, char &Key);
    void __fastcall ishla1Click(TObject *Sender);
    void __fastcall xoita_qosh1Click(TObject *Sender);
    void __fastcall ge(TObject *Sender, int ACol, int ARow,
          const AnsiString Value);
    void __fastcall FormCreate(TObject *Sender);
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
