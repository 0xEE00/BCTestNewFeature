codeunit 50104 "PriceCalculationSD" implements "Price Calculation"
{
    trigger OnRun()
    var
        PriceCalculationSetup: Record "Price Calculation Setup";
    begin
        PriceCalculationSetup.SetRange(Implementation, PriceCalculationSetup.Implementation::"SD Implementation");
        PriceCalculationSetup.DeleteAll();
        AddSupportedSetup(PriceCalculationSetup);
    end;

    procedure GetLine(var Line: Variant)
    begin
        CurrLineWithPrice.GetLine(Line);
    end;

    procedure Init(NewLineWithPrice: Interface "Line With Price"; PriceCalcualutionSetup: Record "Price Calculation Setup")
    begin
        CurrLineWithPrice := NewLineWithPrice;
        CurrPriceCalculationSetup := PriceCalcualutionSetup;
    end;

    procedure ApplyDiscount()
    var
        TempPriceListLine: Record "Price List Line" temporary;
        PriceListCalculationBufferMgt: Codeunit "Price Calculation Buffer Mgt.";
        AmountType: Enum "Price Amount Type";
        FoundPrice: Boolean;
    begin
        CurrLineWithPrice.SetPrice(AmountType::Discount, TempPriceListLine);
    end;

    procedure ApplyPrice(CalledByFieldNo: Integer)
    var
        TempPriceListLine: Record "Price List Line" temporary;
        PriceListCalculationBufferMgt: Codeunit "Price Calculation Buffer Mgt.";
        AmountType: Enum "Price Amount Type";
        FoundPrice: Boolean;
    begin
    end;

    procedure CountDiscount(ShowAll: Boolean) Result: Integer;
    begin

    end;

    procedure CountPrice(ShowAll: Boolean) Result: Integer;
    begin

    end;

    procedure FindDiscount(var TempPriceListLine: Record "Price List Line"; ShowAll: Boolean) Found: Boolean;
    var
    begin
    end;

    procedure FindPrice(var TempPriceListLine: Record "Price List Line"; ShowAll: Boolean) Found: Boolean;
    var
    begin
    end;

    procedure IsDiscountExists(ShowAll: Boolean) Result: Boolean;
    begin

    end;

    procedure IsPriceExists(ShowAll: Boolean) Result: Boolean;
    begin

    end;

    procedure PickDiscount()
    var
    begin
    end;

    procedure PickPrice()
    var
    begin
    end;

    procedure ShowPrices(var TempPriceListLine: Record "Price List Line")
    begin
    end;

    local procedure AddSupportedSetup(PriceCalculationSetup: Record "Price Calculation Setup")
    begin

    end;

    var
        CurrPriceCalculationSetup: Record "Price Calculation Setup";
        CurrLineWithPrice: Interface "Line With Price";
        TempTableErr: Label 'The table passed as a parametar must be temporary';


}