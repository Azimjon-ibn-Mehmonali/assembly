//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "asosiy.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"

TForm1 *Form1;
//---------------------------------------------------------------------------
// Utility functions to trim
std::string& ltrim(std::string& str, const std::string& chars = "\t\n\v\f\r ")
{
    str.erase(0, str.find_first_not_of(chars));
    return str;
}

std::string& rtrim(std::string& str, const std::string& chars = "\t\n\v\f\r ")
{
    str.erase(str.find_last_not_of(chars) + 1);
    return str;
}

std::string& trim(std::string& str, const std::string& chars = "\t\n\v\f\r ")
{
    return ltrim(rtrim(str, chars), chars);
}

void kichik(string & s) {
    for (int i = 0; i < (int)s.size(); i++) {
        s[i] = tolower(s[i]);
    }
}

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm1::yuklashClick(TObject *Sender)
{
    teng = -1;
    matn = code->Lines;
    for (int i = 0; i < matn->Count; i++) {
        dastur.push_back(trim(string(code->Lines->Strings[i].c_str())));
        kichik(dastur[i]);
    }

    bool tugadi = false;
    for (int i = 0; i < (int)dastur.size(); i++) {
        int tj = dastur[i].find(":");
        if (tj != -1) {
            string nishon;
            nishon = dastur[i].substr(0, tj);
            trim(nishon);
            nishonlar[nishon] = i;
            dastur[i].erase(0, tj + 1);
            trim(dastur[i]);
            if (tugadi) {
                txq[i] = StrToInt(dastur[i].c_str());
            }
        }                                  
        if (dastur[i] == "end")
            tugadi = true;
    }


    //for (int i = 0; i < (int)dastur.size(); i++)
      //  output->Lines->Add(dastur[i].c_str());
}
//---------------------------------------------------------------------------
void __fastcall TForm1::step_forwardClick(TObject *Sender)
{
    string js, buyruq;
    js = string(dastur[pc->Text.ToInt()]);
    pc->Text = (pc->Text.ToInt() < 10 ? "0" : "") + IntToStr(StrToInt(pc->Text) + 1);
    buyruq = js.substr(0, 3);
    trim(buyruq);
    js.erase(0, 3);
    trim(js);
    if (buyruq == "ldm") {
        acc->Text = js.substr(1, js.size() - 1).c_str();
    }
    else if (buyruq == "ldr") {
        ix->Text = js.substr(1, js.size() - 1).c_str();
    }
    else if (buyruq == "ldd") {
        if (isdigit(js[0])) {
            acc->Text = IntToStr(txq[StrToInt(js.c_str())]);
        }
        else {
            acc->Text = IntToStr(txq[nishonlar[js]]);
        }
    }
    else if (buyruq == "ldi") {
        if (isdigit(js[0])) {
            acc->Text = IntToStr(txq[txq[StrToInt(js.c_str())]]);
        }
        else {
            acc->Text = IntToStr(txq[txq[nishonlar[js]]]);
        }
    }
    else if (buyruq == "ldx") {
        if (isdigit(js[0])) {
            acc->Text = IntToStr(txq[StrToInt(js.c_str()) + StrToInt(ix->Text)]);
        }
        else {
            acc->Text = IntToStr(txq[nishonlar[js] + StrToInt(ix->Text)]);
        }
    }
    else if (buyruq == "sto") {
         if (isdigit(js[0])) {
            txq[StrToInt(js.c_str())] = StrToInt(acc->Text);
         }
         else {
            txq[nishonlar[js]] = StrToInt(acc->Text);
         }
    }
    else if (buyruq == "mov") {
        ix->Text = acc->Text;
    }
    else if (buyruq == "out") {
        chiqish->Lines->Add(acc->Text);
    }
    else if (buyruq == "in") {
        step_forward->Enabled = false;
    }
    else if (buyruq == "jmp") {
        if (isdigit(js[0])) {
            pc->Text = js.c_str();
        }
        else {
            pc->Text = IntToStr(nishonlar[js]);
        }
    }
    else if (buyruq == "cmp") {
        if (js[0] == '#') {
            teng = StrToInt(js.substr(1, js.size() - 1).c_str()) == StrToInt(acc->Text);
        }
        else {
            teng = txq[nishonlar[js]] == StrToInt(acc->Text);
        }
    }
    else if (buyruq == "cmi") {
        if (isdigit(js[0])) {
            teng = txq[txq[StrToInt(js.c_str())]] == StrToInt(acc->Text);
        }
        else {
            teng == txq[txq[nishonlar[js]]] == StrToInt(acc->Text);
        }
    }
    else if (buyruq == "jpe") {
        if (teng > 0) {
            if (isdigit(js[0])) {
                pc->Text = js.c_str();
            }
            else {
                pc->Text = IntToStr(nishonlar[js]);
            }
        }
    }
    else if (buyruq == "jpn") {
        if (!teng) {
            if (isdigit(js[0])) {
                pc->Text = js.c_str();
            }
            else {
                pc->Text = IntToStr(nishonlar[js]);
            }
        }
    }
    else if (buyruq == "add") {
        if (js[0] == '#') {
            acc->Text = IntToStr(StrToInt(acc->Text) +
                StrToInt(js.substr(1, js.size() - 1).c_str()));
        }
        else {
            if (isdigit(js[0])) {
                acc->Text = IntToStr(StrToInt(acc->Text) + txq[StrToInt(js.c_str())]);
            }
            else {
                acc->Text = IntToStr(StrToInt(acc->Text) + txq[nishonlar[js]]);
            }
        }
    }
    else if (buyruq == "sub") {
        if (js[0] == '#') {
            acc->Text = IntToStr(StrToInt(acc->Text) -
                StrToInt(js.substr(1, js.size() - 1).c_str()));
        }
        else {
            if (isdigit(js[0])) {
                acc->Text = IntToStr(StrToInt(acc->Text) - txq[StrToInt(js.c_str())]);
            }
            else {
                acc->Text = IntToStr(StrToInt(acc->Text) - txq[nishonlar[js]]);
            }
        }
    }
    else if (buyruq == "inc") {
        if (js == "acc") {
            acc->Text = IntToStr(StrToInt(acc->Text) + 1);
        }
        else {
            ix->Text = IntToStr(StrToInt(ix->Text) + 1);
        }
    }
    else if (buyruq == "dec") {
        if (js == "acc") {
            acc->Text = IntToStr(StrToInt(acc->Text) - 1);
        }
        else {
            ix->Text = IntToStr(StrToInt(ix->Text) - 1);
        }
    }
    else if (buyruq == "end") {
        step_forward->Enabled = false;
    }
}
//---------------------------------------------------------------------------




void __fastcall TForm1::qaytaClick(TObject *Sender)
{
    acc->Text = "0";
    pc->Text = "00";
    ix->Text = "0";
    step_forward->Enabled = true;
    memset(txq, 0, 1000);
    kirish->Clear();
    chiqish->Clear();
    nishonlar.clear();
    dastur.clear();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::kirishKeyPress(TObject *Sender, char &Key)
{
    if (Key == 13) {
        acc->Text = kirish->Text;
        step_forward->Enabled = true;
    }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
    while (step_forward->Enabled)
        step_forward->Click();
}
//---------------------------------------------------------------------------

