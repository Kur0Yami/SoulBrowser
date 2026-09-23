package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzqi {

    /* renamed from: a, reason: collision with root package name */
    public final int f9191a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9192c;
    public final int d;
    public final zzd e;
    public final int f;
    public final int g;

    public /* synthetic */ zzqi(zzqh zzqhVar) {
        this.f9191a = zzqhVar.f9189a;
        this.b = zzqhVar.b;
        this.f9192c = zzqhVar.f9190c;
        this.d = zzqhVar.d;
        this.e = zzqhVar.e;
        this.f = zzqhVar.f;
        this.g = zzqhVar.g;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzqi.class == obj.getClass()) {
            zzqi zzqiVar = (zzqi) obj;
            if (this.f9191a == zzqiVar.f9191a && this.b == zzqiVar.b && this.f9192c == zzqiVar.f9192c && this.d == zzqiVar.d && this.f == zzqiVar.f && this.g == zzqiVar.g && this.e.equals(zzqiVar.e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Integer valueOf = Integer.valueOf(this.f9191a);
        Integer valueOf2 = Integer.valueOf(this.b);
        Integer valueOf3 = Integer.valueOf(this.f9192c);
        Integer valueOf4 = Integer.valueOf(this.d);
        Integer valueOf5 = Integer.valueOf(this.f);
        Integer valueOf6 = Integer.valueOf(this.g);
        Boolean bool = Boolean.FALSE;
        return Objects.hash(valueOf, valueOf2, valueOf3, bool, bool, valueOf4, this.e, valueOf5, valueOf6, bool, bool);
    }
}
