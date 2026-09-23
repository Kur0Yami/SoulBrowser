package com.google.android.gms.internal.consent_sdk;

/* loaded from: classes.dex */
public class zzra {

    /* renamed from: a, reason: collision with root package name */
    public volatile zzrq f10090a;
    public volatile zzpm b;

    public final int a() {
        if (this.b != null) {
            return ((zzpk) this.b).g.length;
        }
        if (this.f10090a != null) {
            return this.f10090a.zzn();
        }
        return 0;
    }

    public final zzpm b() {
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            try {
                if (this.b != null) {
                    return this.b;
                }
                if (this.f10090a == null) {
                    this.b = zzpm.f;
                } else {
                    this.b = this.f10090a.zzk();
                }
                return this.b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(zzrq zzrqVar) {
        if (this.f10090a == null) {
            synchronized (this) {
                if (this.f10090a != null) {
                    return;
                }
                try {
                    this.f10090a = zzrqVar;
                    this.b = zzpm.f;
                } catch (zzqu unused) {
                    this.f10090a = zzrqVar;
                    this.b = zzpm.f;
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzra)) {
            return false;
        }
        zzra zzraVar = (zzra) obj;
        zzrq zzrqVar = this.f10090a;
        zzrq zzrqVar2 = zzraVar.f10090a;
        if (zzrqVar == null && zzrqVar2 == null) {
            return b().equals(zzraVar.b());
        }
        if (zzrqVar != null && zzrqVar2 != null) {
            return zzrqVar.equals(zzrqVar2);
        }
        if (zzrqVar != null) {
            zzraVar.c(zzrqVar.zzl());
            return zzrqVar.equals(zzraVar.f10090a);
        }
        c(zzrqVar2.zzl());
        return this.f10090a.equals(zzrqVar2);
    }

    public int hashCode() {
        return 1;
    }
}
