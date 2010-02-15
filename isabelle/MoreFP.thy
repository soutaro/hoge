theory MoreFP
imports Main
begin

primrec add :: "nat \<Rightarrow> nat \<Rightarrow> nat" where
  "add m 0 = m" |
  "add m (Suc n) = add (Suc m) n"

lemma "add m n = m + n"
  apply(induct_tac n, simp add: add_def)
  apply(simp_all split: nat.split)