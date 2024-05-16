SELECT p.name, gm.membership_status FROM person p 
LEFT JOIN get_fit_now_member gm ON p.id = gm.person_id 
WHERE gm.name IS NULL;
