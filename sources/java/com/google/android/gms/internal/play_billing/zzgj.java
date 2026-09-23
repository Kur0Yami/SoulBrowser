package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
public class zzgj {

    /* renamed from: a, reason: collision with root package name */
    public volatile zzhc f11510a;
    public volatile zzev b;

    public final int a() {
        if (this.b != null) {
            return this.b.i();
        }
        if (this.f11510a != null) {
            return this.f11510a.zzn();
        }
        return 0;
    }

    public final zzev b() {
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            try {
                if (this.b != null) {
                    return this.b;
                }
                if (this.f11510a == null) {
                    this.b = zzev.f;
                } else {
                    this.b = this.f11510a.zzj();
                }
                return this.b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(zzhc zzhcVar) {
        if (this.f11510a == null) {
            synchronized (this) {
                if (this.f11510a != null) {
                    return;
                }
                try {
                    this.f11510a = zzhcVar;
                    this.b = zzev.f;
                } catch (zzgd unused) {
                    this.f11510a = zzhcVar;
                    this.b = zzev.f;
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgj)) {
            return false;
        }
        zzgj zzgjVar = (zzgj) obj;
        zzhc zzhcVar = this.f11510a;
        zzhc zzhcVar2 = zzgjVar.f11510a;
        if (zzhcVar == null && zzhcVar2 == null) {
            return b().equals(zzgjVar.b());
        }
        if (zzhcVar != null && zzhcVar2 != null) {
            return zzhcVar.equals(zzhcVar2);
        }
        if (zzhcVar != null) {
            zzgjVar.c(zzhcVar.zzl());
            return zzhcVar.equals(zzgjVar.f11510a);
        }
        c(zzhcVar2.zzl());
        return this.f11510a.equals(zzhcVar2);
    }

    public int hashCode() {
        return 1;
    }
}
