
import struct

FEATURES = [
    "glucose", "m_proc_IM", "n_frozen", "P",
    "m_proc_density", "age", "m_proc_method", "m_proc_NP"
]

def encode_feature(x: float) -> int:
    q = int(round(float(x) * 100.0))
    if not -32768 <= q <= 32767:
        raise ValueError(f"Feature {x} is outside signed 16-bit *100 range")
    return q

def make_packet(values):
    if len(values) != 8:
        raise ValueError("Exactly 8 feature values are required")
    encoded = [encode_feature(v) for v in values]
    packet = b"".join(struct.pack(">h", q) for q in encoded)
    return encoded, packet

if __name__ == "__main__":
    sample = [12, 5, 5, 1, 0.5, 38, 1, 1]
    encoded, packet = make_packet(sample)
    print("Feature order:")
    print(FEATURES)
    print("Encoded (*100):", encoded)
    print("UART bytes:", packet.hex(" "))
