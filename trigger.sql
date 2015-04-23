Create Trigger r_acc_before_delete_trig
Before Delete on Accusation
Begin
	if to_number(to_char(sysdate, 'YYYY')+7) not in acc_date
		raise_application_error(-20500, 'This record can not be deleted, it is still within the retention time period');
	end if;
END; r_accusation_before_delete_trigger
/