package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
final class zzgu extends zzgw {
    @Override // com.google.android.gms.internal.cast.zzgw
    public final void a(final zzgt zzgtVar) {
        if (zzgtVar.f9709a == null) {
            zzgtVar.f9709a = new Runnable() { // from class: com.google.android.gms.internal.cast.zzgr
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    System.nanoTime();
                    zzgt.this.a();
                }
            };
        }
        throw null;
    }
}
