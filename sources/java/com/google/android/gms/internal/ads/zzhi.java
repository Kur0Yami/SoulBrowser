package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhi implements zzha {
    public zzhz b;

    /* renamed from: c, reason: collision with root package name */
    public String f8567c;
    public boolean f;

    /* renamed from: a, reason: collision with root package name */
    public final zzht f8566a = new zzht();
    public int d = 8000;
    public int e = 8000;

    @Override // com.google.android.gms.internal.ads.zzha
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzhm zza() {
        zzhm zzhmVar = new zzhm(this.f8567c, this.d, this.e, this.f, this.f8566a);
        zzhz zzhzVar = this.b;
        if (zzhzVar != null) {
            zzhmVar.c(zzhzVar);
        }
        return zzhmVar;
    }
}
