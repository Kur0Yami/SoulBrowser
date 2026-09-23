package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zzaio {

    /* renamed from: a, reason: collision with root package name */
    public final long f4069a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4070c;

    public zzaio(long j, long j2, int i) {
        boolean z;
        if (j < j2) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        this.f4069a = j;
        this.b = j2;
        this.f4070c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaio.class == obj.getClass()) {
            zzaio zzaioVar = (zzaio) obj;
            if (this.f4069a == zzaioVar.f4069a && this.b == zzaioVar.b && this.f4070c == zzaioVar.f4070c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f4069a), Long.valueOf(this.b), Integer.valueOf(this.f4070c));
    }

    public final String toString() {
        String str = zzfj.f7405a;
        Locale locale = Locale.US;
        return "Segment: startTimeMs=" + this.f4069a + ", endTimeMs=" + this.b + ", speedDivisor=" + this.f4070c;
    }
}
