package com.google.android.gms.internal.ads;

import kotlin.uuid.Uuid;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzapn implements zzapg {

    /* renamed from: a, reason: collision with root package name */
    public final zzeq f4321a = new zzeq(new byte[4], 4);
    public final /* synthetic */ zzapq b;

    public zzapn(zzapq zzapqVar) {
        this.b = zzapqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzapg
    public final void a(zzfg zzfgVar, zzaer zzaerVar, zzapu zzapuVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzapg
    public final void b(zzer zzerVar) {
        if (zzerVar.K() == 0 && (zzerVar.K() & Uuid.SIZE_BITS) != 0) {
            zzerVar.G(6);
            int B = zzerVar.B() / 4;
            int i = 0;
            while (true) {
                zzapq zzapqVar = this.b;
                if (i < B) {
                    zzeq zzeqVar = this.f4321a;
                    zzerVar.H(zzeqVar.f6806a, 0, 4);
                    zzeqVar.d(0);
                    int h = zzeqVar.h(16);
                    zzeqVar.f(3);
                    if (h == 0) {
                        zzeqVar.f(13);
                    } else {
                        int h2 = zzeqVar.h(13);
                        if (zzapqVar.f.get(h2) == null) {
                            zzapqVar.f.put(h2, new zzaph(new zzapo(zzapqVar, h2)));
                        }
                    }
                    i++;
                } else {
                    zzapqVar.f.remove(0);
                    return;
                }
            }
        }
    }
}
