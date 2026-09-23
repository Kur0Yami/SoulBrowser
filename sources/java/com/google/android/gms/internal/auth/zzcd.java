package com.google.android.gms.internal.auth;

import android.content.Context;
import android.support.v4.media.a;

/* loaded from: classes.dex */
final class zzcd extends zzda {

    /* renamed from: a, reason: collision with root package name */
    public final Context f9504a;
    public final zzdj b;

    public zzcd(Context context, zzdj zzdjVar) {
        this.f9504a = context;
        this.b = zzdjVar;
    }

    @Override // com.google.android.gms.internal.auth.zzda
    public final Context a() {
        return this.f9504a;
    }

    @Override // com.google.android.gms.internal.auth.zzda
    public final zzdj b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zzda) {
                zzda zzdaVar = (zzda) obj;
                if (this.f9504a.equals(zzdaVar.a()) && this.b.equals(zzdaVar.b())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return ((this.f9504a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public final String toString() {
        return a.n("FlagsContext{context=", this.f9504a.toString(), ", hermeticFileOverrides=", this.b.toString(), "}");
    }
}
