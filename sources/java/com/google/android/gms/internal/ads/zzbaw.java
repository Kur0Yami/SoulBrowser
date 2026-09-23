package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzbaw extends zzbbh {
    public zzbaw(zzazt zzaztVar, zzavs zzavsVar, int i) {
        super(zzaztVar, "ExKA4wjDRRYdztAsabUEoV5NOADo4vSkAwQNa4IGw0yLC0NQlDOhDdBTfDT5YHOb", "1Gz3ZRhjJNvXJ0g284S9b/dpVAajMMfg8CE3pBcFNFA=", zzavsVar, i, 73);
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        zzavs zzavsVar = this.d;
        try {
            int i = 1;
            if (true == ((Boolean) this.e.invoke(null, this.f4531a.f4510a)).booleanValue()) {
                i = 2;
            }
            zzavsVar.k();
            ((zzawp) zzavsVar.f).v0(i);
        } catch (InvocationTargetException unused) {
            zzavsVar.k();
            ((zzawp) zzavsVar.f).v0(3);
        }
    }
}
