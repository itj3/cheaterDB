Drop Trigger r_acc_before_delete_trig;

Create Trigger r_acc_before_delete_trig
Before Delete on Accusation
For Each Row 
Begin
	if to_date(add_months(:old.acc_date,84)) != to_date(sysdate, 'DD-MON-YYYY') then
		raise_application_error(-20500, 'This record can not be deleted, it is still within the retention time period');
	end if;
END;
/