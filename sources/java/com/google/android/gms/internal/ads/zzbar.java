package com.google.android.gms.internal.ads;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbar extends zzbbh {
    public final zzazl h;

    public zzbar(zzazt zzaztVar, zzavs zzavsVar, int i, zzazl zzazlVar) {
        super(zzaztVar, "sl6J6ogR1CQFBNHXqYqYlsoHhQEQ3GzqykotbgjuxxtAslvwVDD28XhO/FGDcWNY", "etPaLFHhmzrmC9guV7/txSJ19uqkwWx/gSnrE4vBCvs=", zzavsVar, i, 94);
        this.h = zzazlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        Method method = this.e;
        zzazl zzazlVar = this.h;
        List list = zzazlVar.f4501a;
        zzazlVar.f4501a = Collections.EMPTY_LIST;
        int intValue = ((Integer) method.invoke(null, list)).intValue();
        zzavs zzavsVar = this.d;
        synchronized (zzavsVar) {
            int a2 = zzawe.a(intValue);
            zzavsVar.k();
            ((zzawp) zzavsVar.f).x0(a2);
        }
    }
}
