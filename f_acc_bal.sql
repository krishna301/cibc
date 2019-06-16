create or replace function f_acc_bal(ls_accountno in number,ls_balance out number)
return boolean
is
a boolean;
begin
select balance into ls_balance from customer where accountno=ls_accountno;
a:=True;
return a;
exception
when no_data_found then
a:=False;
return a;
end;
/
