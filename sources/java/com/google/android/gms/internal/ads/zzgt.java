package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class zzgt implements zzhb {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f8242a;
    public final ArrayList b = new ArrayList(1);

    /* renamed from: c, reason: collision with root package name */
    public int f8243c;
    public zzhf d;

    public zzgt(boolean z) {
        this.f8242a = z;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void c(zzhz zzhzVar) {
        zzhzVar.getClass();
        ArrayList arrayList = this.b;
        if (!arrayList.contains(zzhzVar)) {
            arrayList.add(zzhzVar);
            this.f8243c++;
        }
    }

    public final void d(zzhf zzhfVar) {
        for (int i = 0; i < this.f8243c; i++) {
            ((zzhz) this.b.get(i)).getClass();
        }
    }

    public final void e(zzhf zzhfVar) {
        this.d = zzhfVar;
        for (int i = 0; i < this.f8243c; i++) {
            ((zzhz) this.b.get(i)).d(this, zzhfVar, this.f8242a);
        }
    }

    public final void f(int i) {
        zzhf zzhfVar = this.d;
        String str = zzfj.f7405a;
        for (int i2 = 0; i2 < this.f8243c; i2++) {
            ((zzhz) this.b.get(i2)).f(zzhfVar, this.f8242a, i);
        }
    }

    public final void g() {
        zzhf zzhfVar = this.d;
        String str = zzfj.f7405a;
        for (int i = 0; i < this.f8243c; i++) {
            ((zzhz) this.b.get(i)).n(zzhfVar, this.f8242a);
        }
        this.d = null;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public Map zzj() {
        return Collections.EMPTY_MAP;
    }
}
