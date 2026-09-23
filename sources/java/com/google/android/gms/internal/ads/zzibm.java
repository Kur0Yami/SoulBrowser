package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public class zzibm {

    /* renamed from: a, reason: collision with root package name */
    public volatile zzicc f8922a;
    public volatile zzhzl b;

    public final int a() {
        if (this.b != null) {
            return ((zzhzj) this.b).g.length;
        }
        if (this.f8922a != null) {
            return this.f8922a.d();
        }
        return 0;
    }

    public final zzhzl b() {
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            try {
                if (this.b != null) {
                    return this.b;
                }
                if (this.f8922a == null) {
                    this.b = zzhzl.f;
                } else {
                    this.b = this.f8922a.b();
                }
                return this.b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(zzicc zziccVar) {
        if (this.f8922a == null) {
            synchronized (this) {
                if (this.f8922a != null) {
                    return;
                }
                try {
                    this.f8922a = zziccVar;
                    this.b = zzhzl.f;
                } catch (zzibg unused) {
                    this.f8922a = zziccVar;
                    this.b = zzhzl.f;
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzibm)) {
            return false;
        }
        zzibm zzibmVar = (zzibm) obj;
        zzicc zziccVar = this.f8922a;
        zzicc zziccVar2 = zzibmVar.f8922a;
        if (zziccVar == null && zziccVar2 == null) {
            return b().equals(zzibmVar.b());
        }
        if (zziccVar != null && zziccVar2 != null) {
            return zziccVar.equals(zziccVar2);
        }
        if (zziccVar != null) {
            zzibmVar.c(zziccVar.e());
            return zziccVar.equals(zzibmVar.f8922a);
        }
        c(zziccVar2.e());
        return this.f8922a.equals(zziccVar2);
    }

    public int hashCode() {
        return 1;
    }
}
