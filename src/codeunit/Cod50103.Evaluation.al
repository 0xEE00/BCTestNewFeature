codeunit 50103 "Evaluation"
{
    local procedure CallEvaluate()
    begin
        iSE := soccer;
        Evaluate(iSE);
    end;

    local procedure Evaluate(var se: Interface ISportsEvaluation)
    begin
        se.GetEvaluation();
    end;

    var
        soccer: Codeunit Soccer;
        iSE: Interface ISportsEvaluation;

}