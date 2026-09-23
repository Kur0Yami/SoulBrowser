package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzhil extends zzhan {

    /* renamed from: a, reason: collision with root package name */
    public final String f8575a;
    public final zzhpw b;

    public zzhil(String str, zzhpw zzhpwVar) {
        this.f8575a = str;
        this.b = zzhpwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        return this.b != zzhpw.RAW;
    }

    public final String toString() {
        String str;
        int ordinal = this.b.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        str = "UNKNOWN";
                    } else {
                        str = "CRUNCHY";
                    }
                } else {
                    str = "RAW";
                }
            } else {
                str = "LEGACY";
            }
        } else {
            str = "TINK";
        }
        return android.support.v4.media.a.n("(typeUrl=", this.f8575a, ", outputPrefixType=", str, ")");
    }
}
