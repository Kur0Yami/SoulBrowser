package com.google.android.gms.internal.measurement;

/* loaded from: classes3.dex */
public class zzkp {

    /* renamed from: a, reason: collision with root package name */
    public volatile zzlj f10387a;
    public volatile zzjb b;

    static {
        if (zzjo.b == null) {
            synchronized (zzjo.class) {
                try {
                    if (zzjo.b == null) {
                        zzjo.b = zzjo.f10379c;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final zzjb a() {
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            try {
                if (this.b != null) {
                    return this.b;
                }
                if (this.f10387a == null) {
                    this.b = zzjb.f;
                } else {
                    this.b = this.f10387a.b();
                }
                return this.b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(zzlj zzljVar) {
        if (this.f10387a == null) {
            synchronized (this) {
                if (this.f10387a == null) {
                    try {
                        this.f10387a = zzljVar;
                        this.b = zzjb.f;
                    } catch (zzkm unused) {
                        this.f10387a = zzljVar;
                        this.b = zzjb.f;
                    }
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzkp)) {
            return false;
        }
        zzkp zzkpVar = (zzkp) obj;
        zzlj zzljVar = this.f10387a;
        zzlj zzljVar2 = zzkpVar.f10387a;
        if (zzljVar == null && zzljVar2 == null) {
            return a().equals(zzkpVar.a());
        }
        if (zzljVar != null && zzljVar2 != null) {
            return zzljVar.equals(zzljVar2);
        }
        if (zzljVar != null) {
            zzkpVar.b(zzljVar.a());
            return zzljVar.equals(zzkpVar.f10387a);
        }
        b(zzljVar2.a());
        return this.f10387a.equals(zzljVar2);
    }

    public int hashCode() {
        return 1;
    }
}
