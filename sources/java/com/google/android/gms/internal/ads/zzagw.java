package com.google.android.gms.internal.ads;

import java.nio.ByteOrder;

/* loaded from: classes.dex */
final class zzagw implements zzadz {

    /* renamed from: a, reason: collision with root package name */
    public final zzafb f4022a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final zzaev f4023c = new Object();

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzaev, java.lang.Object] */
    public zzagw(zzafb zzafbVar, int i) {
        this.f4022a = zzafbVar;
        this.b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    public final zzady a(zzaep zzaepVar, long j) {
        long zzn = zzaepVar.zzn();
        long b = b(zzaepVar);
        long zzm = zzaepVar.zzm();
        zzaepVar.h(Math.max(6, this.f4022a.f3967c));
        long b2 = b(zzaepVar);
        long zzm2 = zzaepVar.zzm();
        if (b <= j && b2 > j) {
            return new zzady(-9223372036854775807L, zzm, 0);
        }
        if (b2 <= j) {
            return new zzady(b2, zzm2, -2);
        }
        return new zzady(b, zzn, -1);
    }

    public final long b(zzaep zzaepVar) {
        zzaev zzaevVar;
        zzafb zzafbVar;
        int l;
        while (true) {
            long zzm = zzaepVar.zzm();
            long zzo = zzaepVar.zzo() - 6;
            zzaevVar = this.f4023c;
            zzafbVar = this.f4022a;
            if (zzm >= zzo) {
                break;
            }
            long zzm2 = zzaepVar.zzm();
            zzer zzerVar = new zzer(17);
            int i = 0;
            zzaepVar.j(zzerVar.f6834a, 0, 2);
            char r = zzerVar.r(0, ByteOrder.BIG_ENDIAN);
            int i2 = this.b;
            if (r != i2) {
                zzaepVar.zzl();
                zzaepVar.h((int) (zzm2 - zzaepVar.zzn()));
            } else {
                byte[] bArr = zzerVar.f6834a;
                while (i < 15 && (l = zzaepVar.l(bArr, 2 + i, 15 - i)) != -1) {
                    i += l;
                }
                zzerVar.C(i + 2);
                zzaepVar.zzl();
                zzaepVar.h((int) (zzm2 - zzaepVar.zzn()));
                if (zzaew.a(zzerVar, zzafbVar, i2, zzaevVar)) {
                    break;
                }
            }
            zzaepVar.h(1);
        }
        if (zzaepVar.zzm() >= zzaepVar.zzo() - 6) {
            zzaepVar.h((int) (zzaepVar.zzo() - zzaepVar.zzm()));
            return zzafbVar.j;
        }
        return zzaevVar.f3962a;
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    public final /* synthetic */ void zzb() {
    }
}
