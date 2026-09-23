package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzfri {

    /* renamed from: a, reason: collision with root package name */
    public final zzfru f7592a;
    public final zzfru b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f7593c;
    public final zzfrm d;
    public final zzfrp e;

    public zzfri(zzfrm zzfrmVar, zzfrp zzfrpVar, zzfru zzfruVar, zzfru zzfruVar2, boolean z) {
        this.d = zzfrmVar;
        this.e = zzfrpVar;
        this.f7592a = zzfruVar;
        this.b = zzfruVar2;
        this.f7593c = z;
    }

    public static zzfri a(zzfrm zzfrmVar, zzfrp zzfrpVar, zzfru zzfruVar, zzfru zzfruVar2, boolean z) {
        if (zzfruVar != zzfru.NONE) {
            zzfrm zzfrmVar2 = zzfrm.DEFINED_BY_JAVASCRIPT;
            zzfru zzfruVar3 = zzfru.NATIVE;
            if (zzfrmVar == zzfrmVar2 && zzfruVar == zzfruVar3) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            if (zzfrpVar == zzfrp.DEFINED_BY_JAVASCRIPT && zzfruVar == zzfruVar3) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            return new zzfri(zzfrmVar, zzfrpVar, zzfruVar, zzfruVar2, z);
        }
        throw new IllegalArgumentException("Impression owner is none");
    }
}
