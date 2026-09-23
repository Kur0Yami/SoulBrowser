package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzapk implements zzadz {

    /* renamed from: a, reason: collision with root package name */
    public final zzfg f4317a;
    public final zzer b = new zzer();

    /* renamed from: c, reason: collision with root package name */
    public final int f4318c;

    public zzapk(int i, zzfg zzfgVar) {
        this.f4318c = i;
        this.f4317a = zzfgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    public final zzady a(zzaep zzaepVar, long j) {
        long j2;
        long zzn = zzaepVar.zzn();
        int min = (int) Math.min(112800L, zzaepVar.zzo() - zzn);
        zzer zzerVar = this.b;
        zzerVar.y(min);
        zzaepVar.j(zzerVar.f6834a, 0, min);
        int i = zzerVar.f6835c;
        long j3 = -1;
        long j4 = -1;
        long j5 = -9223372036854775807L;
        while (true) {
            if (zzerVar.B() >= 188) {
                byte[] bArr = zzerVar.f6834a;
                int i2 = zzerVar.b;
                while (true) {
                    if (i2 < i) {
                        j2 = -9223372036854775807L;
                        if (bArr[i2] == 71) {
                            break;
                        }
                        i2++;
                    } else {
                        j2 = -9223372036854775807L;
                        break;
                    }
                }
                int i3 = i2 + 188;
                if (i3 > i) {
                    break;
                }
                long a2 = zzapw.a(zzerVar, i2, this.f4318c);
                if (a2 != j2) {
                    long d = this.f4317a.d(a2);
                    if (d > j) {
                        if (j5 == j2) {
                            return new zzady(d, zzn, -1);
                        }
                        return new zzady(-9223372036854775807L, zzn + j4, 0);
                    }
                    j5 = d;
                    long j6 = i2;
                    if (100000 + j5 > j) {
                        return new zzady(-9223372036854775807L, zzn + j6, 0);
                    }
                    j4 = j6;
                }
                zzerVar.E(i3);
                j3 = i3;
            } else {
                j2 = -9223372036854775807L;
                break;
            }
        }
        if (j5 != j2) {
            return new zzady(j5, zzn + j3, -2);
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
