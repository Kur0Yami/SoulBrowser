package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzbaz extends zzbbh {
    public final StackTraceElement[] h;

    public zzbaz(zzazt zzaztVar, zzavs zzavsVar, int i, StackTraceElement[] stackTraceElementArr) {
        super(zzaztVar, "ffEAQyBH71yR4B2obQT/Qgb3Fo0ajWwFYmmZt2nfIS2fjNh6ir76IWAmhSUkzxpD", "s+erUKEK0AKg0XrZCH85OEIt0v0u2CGPZAaj/S6Q0Yk=", zzavsVar, i, 45);
        this.h = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        StackTraceElement[] stackTraceElementArr = this.h;
        if (stackTraceElementArr != null) {
            int i = 1;
            zzazk zzazkVar = new zzazk((String) this.e.invoke(null, stackTraceElementArr));
            zzavs zzavsVar = this.d;
            synchronized (zzavsVar) {
                try {
                    long longValue = zzazkVar.f4499a.longValue();
                    zzavsVar.k();
                    ((zzawp) zzavsVar.f).Q(longValue);
                    if (zzazkVar.b.booleanValue()) {
                        if (true != zzazkVar.f4500c.booleanValue()) {
                            i = 2;
                        }
                        zzavsVar.k();
                        ((zzawp) zzavsVar.f).u0(i);
                    } else {
                        zzavsVar.k();
                        ((zzawp) zzavsVar.f).u0(3);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
