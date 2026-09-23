package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzbbd extends zzbbh {
    public zzbbd(zzazt zzaztVar, zzavs zzavsVar, int i) {
        super(zzaztVar, "f5uC0Q5BJBhs1YfPGy7Wx7MnBjWVUX5JNaW+Lz6dfUOfz0sIXH0KubqvIhiUByWt", "klWlopX/vpRWeyQx7GUjF52wT93EUJwbeMp05ev02yc=", zzavsVar, i, 48);
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        zzavs zzavsVar = this.d;
        zzavsVar.o(3);
        boolean booleanValue = ((Boolean) this.e.invoke(null, this.f4531a.f4510a)).booleanValue();
        synchronized (zzavsVar) {
            try {
                if (booleanValue) {
                    zzavsVar.o(2);
                } else {
                    zzavsVar.o(1);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
