package com.google.android.gms.internal.drive;

/* loaded from: classes.dex */
public class zzkx {

    /* renamed from: a, reason: collision with root package name */
    public volatile zzlq f10228a;
    public volatile zzjc b;

    static {
        int i = zzjx.b;
        Class cls = zzjw.f10210a;
        if (cls != null) {
            try {
            } catch (Exception unused) {
            }
        }
    }

    public final zzjc a() {
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            try {
                if (this.b != null) {
                    return this.b;
                }
                if (this.f10228a == null) {
                    this.b = zzjc.f;
                } else {
                    this.b = this.f10228a.a();
                }
                return this.b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int b() {
        if (this.b != null) {
            return this.b.size();
        }
        if (this.f10228a != null) {
            return this.f10228a.d();
        }
        return 0;
    }

    public final zzlq c(zzlq zzlqVar) {
        if (this.f10228a == null) {
            synchronized (this) {
                if (this.f10228a == null) {
                    try {
                        this.f10228a = zzlqVar;
                        this.b = zzjc.f;
                    } catch (zzkq unused) {
                        this.f10228a = zzlqVar;
                        this.b = zzjc.f;
                    }
                }
            }
        }
        return this.f10228a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzkx)) {
            return false;
        }
        zzkx zzkxVar = (zzkx) obj;
        zzlq zzlqVar = this.f10228a;
        zzlq zzlqVar2 = zzkxVar.f10228a;
        if (zzlqVar == null && zzlqVar2 == null) {
            return a().equals(zzkxVar.a());
        }
        if (zzlqVar != null && zzlqVar2 != null) {
            return zzlqVar.equals(zzlqVar2);
        }
        if (zzlqVar != null) {
            return zzlqVar.equals(zzkxVar.c(zzlqVar.b()));
        }
        return c(zzlqVar2.b()).equals(zzlqVar2);
    }

    public int hashCode() {
        return 1;
    }
}
