CREATE TABLE toxicity_annotations (
    rev_id decimal,
    worker_id decimal,
    toxicity decimal,
    toxicity_score decimal,
    PRIMARY KEY (rev_id, worker_id)
);
