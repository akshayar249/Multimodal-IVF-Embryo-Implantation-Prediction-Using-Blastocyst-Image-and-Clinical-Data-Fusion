
import json, math, sys
import numpy as np

MODEL = "gardner_pnp_model.json"
FEATURES = [
    "glucose", "m_proc_IM", "n_frozen", "P",
    "m_proc_density", "age", "m_proc_method", "m_proc_NP"
]

def load_trees(path):
    with open(path, "r") as f:
        m = json.load(f)
    return m["learner"]["gradient_booster"]["model"]["trees"]

def tree_score(tree, x):
    node = 0
    while tree["left_children"][node] != -1:
        fi = int(tree["split_indices"][node])
        threshold = int(round(float(tree["split_conditions"][node]) * 100))
        node = (tree["left_children"][node]
                if int(round(float(x[fi]) * 100)) < threshold
                else tree["right_children"][node])
    return float(tree["base_weights"][node])

def reference_margin(trees, x):
    return sum(tree_score(t, x) for t in trees)

def main():
    trees = load_trees(MODEL)
    assert len(trees) == 25
    print("Trees:", len(trees))
    print("Features:", len(FEATURES))
    x = [12, 5, 5, 1, 0.5, 38, 1, 1]
    margin = reference_margin(trees, x)
    print("Sample:", x)
    print("Reference margin:", margin)
    print("Reference P:", 1/(1+math.exp(-margin)))
    print("Reference class:", "P" if margin >= 0 else "NP")

if __name__ == "__main__":
    main()
