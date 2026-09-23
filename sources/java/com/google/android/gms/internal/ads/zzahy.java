package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzahy extends zzaig {
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4051c;
    public final int d;
    public final long e;
    public final long f;
    public final zzaig[] g;

    public zzahy(String str, int i, int i2, long j, long j2, zzaig[] zzaigVarArr) {
        super("CHAP");
        this.b = str;
        this.f4051c = i;
        this.d = i2;
        this.e = j;
        this.f = j2;
        this.g = zzaigVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahy.class == obj.getClass()) {
            zzahy zzahyVar = (zzahy) obj;
            if (this.f4051c == zzahyVar.f4051c && this.d == zzahyVar.d && this.e == zzahyVar.e && this.f == zzahyVar.f && Objects.equals(this.b, zzahyVar.b) && Arrays.equals(this.g, zzahyVar.g)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + ((((((((this.f4051c + 527) * 31) + this.d) * 31) + ((int) this.e)) * 31) + ((int) this.f)) * 31);
    }
}
