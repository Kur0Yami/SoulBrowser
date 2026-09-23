package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
final class zzicq extends zzhze {

    /* renamed from: c, reason: collision with root package name */
    public final zzics f8942c;
    public zzhzg f = a();

    public zzicq(zzict zzictVar) {
        this.f8942c = new zzics(zzictVar);
    }

    public final zzhzg a() {
        zzics zzicsVar = this.f8942c;
        if (zzicsVar.hasNext()) {
            return new zzhzd(zzicsVar.next());
        }
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f != null;
    }

    @Override // com.google.android.gms.internal.ads.zzhzg
    public final byte zza() {
        zzhzg zzhzgVar = this.f;
        if (zzhzgVar != null) {
            byte zza = zzhzgVar.zza();
            if (!this.f.hasNext()) {
                this.f = a();
            }
            return zza;
        }
        throw new NoSuchElementException();
    }
}
