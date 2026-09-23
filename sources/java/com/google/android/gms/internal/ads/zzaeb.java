package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzaeb {
    public static void a(long j, zzer zzerVar, zzaga[] zzagaVarArr) {
        int i;
        int i2;
        boolean z;
        while (true) {
            boolean z2 = true;
            if (zzerVar.B() > 1) {
                int i3 = 0;
                while (true) {
                    if (zzerVar.B() == 0) {
                        i = -1;
                        break;
                    }
                    int K = zzerVar.K();
                    i3 += K;
                    if (K != 255) {
                        i = i3;
                        break;
                    }
                }
                int i4 = 0;
                while (true) {
                    if (zzerVar.B() == 0) {
                        i4 = -1;
                        break;
                    }
                    int K2 = zzerVar.K();
                    i4 += K2;
                    if (K2 != 255) {
                        break;
                    }
                }
                int i5 = zzerVar.b + i4;
                if (i4 != -1 && i4 <= zzerVar.B()) {
                    if (i == 4 && i4 >= 8) {
                        int K3 = zzerVar.K();
                        int L = zzerVar.L();
                        if (L == 49) {
                            i2 = zzerVar.b();
                            L = 49;
                        } else {
                            i2 = 0;
                        }
                        int K4 = zzerVar.K();
                        if (L == 47) {
                            zzerVar.G(1);
                            L = 47;
                        }
                        if (K3 != 181 || ((L != 49 && L != 47) || K4 != 3)) {
                            z = false;
                        } else {
                            z = true;
                        }
                        if (L == 49) {
                            if (i2 != 1195456820) {
                                z2 = false;
                            }
                            z &= z2;
                        }
                        if (z) {
                            b(j, zzerVar, zzagaVarArr);
                        }
                    }
                } else {
                    zzee.c("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                    i5 = zzerVar.f6835c;
                }
                zzerVar.E(i5);
            } else {
                return;
            }
        }
    }

    public static void b(long j, zzer zzerVar, zzaga[] zzagaVarArr) {
        boolean z;
        int K = zzerVar.K();
        if ((K & 64) != 0) {
            int i = K & 31;
            zzerVar.G(1);
            int i2 = zzerVar.b;
            for (zzaga zzagaVar : zzagaVarArr) {
                int i3 = i * 3;
                zzerVar.E(i2);
                zzagaVar.b(i3, zzerVar);
                if (j != -9223372036854775807L) {
                    z = true;
                } else {
                    z = false;
                }
                zzgqa.f(z);
                zzagaVar.d(j, 1, i3, 0, null);
            }
        }
    }
}
