package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzhin extends zzhan {

    /* renamed from: a, reason: collision with root package name */
    public final zzhka f8577a;

    public zzhin(zzhka zzhkaVar) {
        this.f8577a = zzhkaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        if (this.f8577a.b.F() != zzhpw.RAW) {
            return true;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhin)) {
            return false;
        }
        zzhka zzhkaVar = ((zzhin) obj).f8577a;
        zzhka zzhkaVar2 = this.f8577a;
        zzhpd zzhpdVar = zzhkaVar2.b;
        zzhpd zzhpdVar2 = zzhkaVar2.b;
        zzhpw F = zzhpdVar.F();
        zzhpd zzhpdVar3 = zzhkaVar.b;
        zzhpd zzhpdVar4 = zzhkaVar.b;
        if (!F.equals(zzhpdVar3.F()) || !zzhpdVar2.D().equals(zzhpdVar4.D()) || !zzhpdVar2.E().equals(zzhpdVar4.E())) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        zzhka zzhkaVar = this.f8577a;
        return Objects.hash(zzhkaVar.b, zzhkaVar.f8608a);
    }

    public final String toString() {
        String str;
        zzhka zzhkaVar = this.f8577a;
        String D = zzhkaVar.b.D();
        int ordinal = zzhkaVar.b.F().ordinal();
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
        return android.support.v4.media.a.n("(typeUrl=", D, ", outputPrefixType=", str, ")");
    }
}
