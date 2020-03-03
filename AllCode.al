interface ISportsEvaluation
{
    procedure GetEvaluation(): Text;
}

codeunit 50100 Basketball implements ISportsEvaluation
{
    procedure GetEvaluation(): Text
    begin
        exit('Basketball is cool');
    end;
}

codeunit 50101 Tennis implements ISportsEvaluation
{
    procedure GetEvaluation(): Text
    begin
        exit('Tennis is fun');
    end;
}

codeunit 50102 Soccer implements ISportsEvaluation
{
    procedure GetEvaluation(): Text
    begin
        exit('Soccer is sucks');
    end;
}

codeunit 50103 Evaluation
{
    local procedure Evaluate(var se: Interface ISportsEvaluation)
    begin
        se.GetEvaluation();
    end;

    local procedure CallEvaluate()
    begin
        iSE := soccer;
        Evaluate(iSE);
    end;
    var
        soccer: Codeunit Soccer;
        iSE: Interface ISportsEvaluation;
    
}