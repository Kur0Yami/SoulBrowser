package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public class zzyt {

    /* renamed from: a, reason: collision with root package name */
    public volatile zzzi f9886a;
    public volatile zzxk b;

    public final int a() {
        if (this.b != null) {
            return ((zzxj) this.b).g.length;
        }
        if (this.f9886a != null) {
            return this.f9886a.zzE();
        }
        return 0;
    }

    public final zzxk b() {
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            try {
                if (this.b != null) {
                    return this.b;
                }
                if (this.f9886a == null) {
                    this.b = zzxk.f;
                } else {
                    this.b = this.f9886a.a();
                }
                return this.b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(zzzi zzziVar) {
        if (this.f9886a == null) {
            synchronized (this) {
                if (this.f9886a != null) {
                    return;
                }
                try {
                    this.f9886a = zzziVar;
                    this.b = zzxk.f;
                } catch (zzyo unused) {
                    this.f9886a = zzziVar;
                    this.b = zzxk.f;
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzyt)) {
            return false;
        }
        zzyt zzytVar = (zzyt) obj;
        zzzi zzziVar = this.f9886a;
        zzzi zzziVar2 = zzytVar.f9886a;
        if (zzziVar == null && zzziVar2 == null) {
            return b().equals(zzytVar.b());
        }
        if (zzziVar != null && zzziVar2 != null) {
            return zzziVar.equals(zzziVar2);
        }
        if (zzziVar != null) {
            zzytVar.c(zzziVar.zzx());
            return zzziVar.equals(zzytVar.f9886a);
        }
        c(zzziVar2.zzx());
        return this.f9886a.equals(zzziVar2);
    }

    public int hashCode() {
        return 1;
    }
}
