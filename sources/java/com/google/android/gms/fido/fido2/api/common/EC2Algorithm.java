package com.google.android.gms.fido.fido2.api.common;

/* loaded from: classes.dex */
public enum EC2Algorithm implements Algorithm {
    /* JADX INFO: Fake field, exist only in values array */
    ED256(-260),
    /* JADX INFO: Fake field, exist only in values array */
    ED512(-261),
    /* JADX INFO: Fake field, exist only in values array */
    ED25519(-8),
    /* JADX INFO: Fake field, exist only in values array */
    ES256(-7),
    /* JADX INFO: Fake field, exist only in values array */
    ECDH_HKDF_256(-25),
    /* JADX INFO: Fake field, exist only in values array */
    ES384(-35),
    /* JADX INFO: Fake field, exist only in values array */
    ES512(-36);


    /* renamed from: c, reason: collision with root package name */
    public final int f3754c;

    EC2Algorithm(int i) {
        this.f3754c = i;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.Algorithm
    public final int a() {
        return this.f3754c;
    }
}
