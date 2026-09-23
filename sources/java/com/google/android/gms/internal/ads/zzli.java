package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzli {

    /* renamed from: a, reason: collision with root package name */
    public final long f9087a;
    public final float b;

    /* renamed from: c, reason: collision with root package name */
    public final long f9088c;

    public /* synthetic */ zzli(zzlh zzlhVar) {
        this.f9087a = zzlhVar.f9085a;
        this.b = zzlhVar.b;
        this.f9088c = zzlhVar.f9086c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzli)) {
            return false;
        }
        zzli zzliVar = (zzli) obj;
        if (this.f9087a == zzliVar.f9087a && this.b == zzliVar.b && this.f9088c == zzliVar.f9088c) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f9087a), Float.valueOf(this.b), Long.valueOf(this.f9088c));
    }
}
