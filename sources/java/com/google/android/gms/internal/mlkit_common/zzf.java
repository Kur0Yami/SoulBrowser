package com.google.android.gms.internal.mlkit_common;

/* loaded from: classes3.dex */
public final class zzf {

    /* renamed from: a, reason: collision with root package name */
    public final zzac f10723a = new zzac();
    public Boolean b;

    public final void a() {
        if (this.b != null) {
            this.b.getClass();
            zzac zzacVar = this.f10723a;
            zzacVar.f10918c = true;
            zzaf.p(zzacVar.b, zzacVar.f10917a);
            return;
        }
        throw new NullPointerException("Must call internal() or external() when building a SourcePolicy.");
    }
}
