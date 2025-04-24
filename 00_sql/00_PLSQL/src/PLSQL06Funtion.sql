CREATE OR REPLACE FUNCTION calculate_bonus (
    p_salary NUMBER,
    p_bonus_percentage NUMBER
) RETURN NUMBER IS
    v_bonus NUMBER;
BEGIN
    v_bonus := p_salary * (p_bonus_percentage / 100);
    RETURN v_bonus;
END calculate_bonus;
/