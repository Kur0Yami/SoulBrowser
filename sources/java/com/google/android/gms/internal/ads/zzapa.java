package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzapa implements zzadz {

    /* renamed from: a, reason: collision with root package name */
    public final zzfg f4305a;
    public final zzer b = new zzer();

    @Override // com.google.android.gms.internal.ads.zzadz
    public final zzady a(zzaep zzaepVar, long j) {
        int d;
        long zzn = zzaepVar.zzn();
        int min = (int) Math.min(20000L, zzaepVar.zzo() - zzn);
        zzer zzerVar = this.b;
        zzerVar.y(min);
        zzaepVar.j(zzerVar.f6834a, 0, min);
        int i = -1;
        int i2 = -1;
        long j2 = -9223372036854775807L;
        while (zzerVar.B() >= 4) {
            if (zzapb.d(zzerVar.f6834a, zzerVar.b) != 442) {
                zzerVar.G(1);
            } else {
                zzerVar.G(4);
                long a2 = zzapc.a(zzerVar);
                if (a2 != -9223372036854775807L) {
                    long d2 = this.f4305a.d(a2);
                    if (d2 > j) {
                        if (j2 == -9223372036854775807L) {
                            return new zzady(d2, zzn, -1);
                        }
                        return new zzady(-9223372036854775807L, zzn + i2, 0);
                    }
                    if (100000 + d2 > j) {
                        return new zzady(-9223372036854775807L, zzn + zzerVar.b, 0);
                    }
                    i2 = zzerVar.b;
                    j2 = d2;
                }
                int i3 = zzerVar.f6835c;
                if (zzerVar.B() < 10) {
                    zzerVar.E(i3);
                } else {
                    zzerVar.G(9);
                    int K = zzerVar.K() & 7;
                    if (zzerVar.B() < K) {
                        zzerVar.E(i3);
                    } else {
                        zzerVar.G(K);
                        if (zzerVar.B() < 4) {
                            zzerVar.E(i3);
                        } else {
                            if (zzapb.d(zzerVar.f6834a, zzerVar.b) == 443) {
                                zzerVar.G(4);
                                int L = zzerVar.L();
                                if (zzerVar.B() < L) {
                                    zzerVar.E(i3);
                                } else {
                                    zzerVar.G(L);
                                }
                            }
                            while (true) {
                                if (zzerVar.B() < 4 || (d = zzapb.d(zzerVar.f6834a, zzerVar.b)) == 442 || d == 441 || (d >>> 8) != 1) {
                                    break;
                                }
                                zzerVar.G(4);
                                if (zzerVar.B() < 2) {
                                    zzerVar.E(i3);
                                    break;
                                }
                                zzerVar.E(Math.min(zzerVar.f6835c, zzerVar.b + zzerVar.L()));
                            }
                        }
                    }
                }
                i = zzerVar.b;
            }
        }
        if (j2 != -9223372036854775807L) {
            return new zzady(j2, zzn + i, -2);
        }
        return zzady.d;
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    public final void zzb() {
        byte[] bArr = zzfj.b;
        int length = bArr.length;
        this.b.z(bArr, 0);
    }
}
