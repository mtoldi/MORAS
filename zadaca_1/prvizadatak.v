Goal forall X Y, ~(X /\ Y) \/ (~X /\ Y) \/ (~X /\ ~Y) <-> ~(X /\ Y).
Proof.
  split.
  - intros. destruct H.
    -- apply H.
    -- destruct H.
       --- unfold not. intros. destruct H0. apply H. apply H0.
       --- destruct H. unfold not. intros. destruct H1. apply H. 
           apply H1.
  - intros. left. apply H.
Qed.

Lemma DeMorgan1 : forall X Y, ~X /\ ~Y <-> ~(X \/ Y).
Proof.
  split.
  - intros. destruct H. unfold not. intros. destruct H1.
    -- apply H. apply H1.
    -- apply H0. apply H1.
  - intros. split.
    -- unfold not. intros. apply H. left. apply H0.
    -- unfold not. intros. apply H. right. apply H0.
Qed.

Goal forall X Y Z, ~(~X /\ Y /\ ~Z) /\ ~(X /\ Y /\ Z) /\ 
                   (X /\ ~Y /\ ~Z) <-> (X /\ ~(Y \/ Z)).
Proof.
  split.
  - intros. destruct H. destruct H0. destruct H1. split.
    -- apply H1.
    -- apply DeMorgan1. apply H2.
  - intros. split.
    -- unfold not. intros. destruct H0. destruct H. apply H0. apply H.
    -- split.
       --- unfold not. intros. destruct H. destruct H0. destruct H2. apply H1.
           left. apply H2.
       --- destruct H. split.
           ---- apply H.
           ---- apply DeMorgan1. apply H0.
Qed.