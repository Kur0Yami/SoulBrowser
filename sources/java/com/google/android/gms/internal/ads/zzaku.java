package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;

/* loaded from: classes.dex */
public final class zzaku {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f4140a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    public static zzafv a(zzaep zzaepVar, boolean z, boolean z2) {
        zzafv zzafvVar;
        long j;
        zzer zzerVar;
        int i;
        int i2;
        long j2;
        int i3;
        int i4;
        int i5;
        int[] iArr;
        long zzo = zzaepVar.zzo();
        long j3 = -1;
        long j4 = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        if (zzo != -1 && zzo <= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            j4 = zzo;
        }
        zzer zzerVar2 = new zzer(64);
        int i6 = (int) j4;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i8 < i6) {
            zzerVar2.y(8);
            if (!zzaepVar.m(zzerVar2.f6834a, i7, 8, true)) {
                break;
            }
            long P = zzerVar2.P();
            int b = zzerVar2.b();
            if (P == 1) {
                j = j3;
                zzaepVar.j(zzerVar2.f6834a, 8, 8);
                i = 16;
                zzerVar2.C(16);
                P = zzerVar2.d();
                zzerVar = zzerVar2;
            } else {
                j = j3;
                if (P == 0) {
                    long zzo2 = zzaepVar.zzo();
                    if (zzo2 != j) {
                        P = (zzo2 - zzaepVar.zzm()) + 8;
                    }
                }
                zzerVar = zzerVar2;
                i = 8;
            }
            long j5 = P;
            zzafvVar = null;
            long j6 = i;
            if (j5 < j6) {
                i2 = 1;
                if (b == 1718773093) {
                    if (i == 8) {
                        j5 = 8;
                        b = 1718773093;
                    } else {
                        b = 1718773093;
                    }
                }
                return new zzajo(j5, b, i);
            }
            i2 = 1;
            i8 += i;
            if (b == 1836019574) {
                i6 += (int) j5;
                if (zzo != -1 && i6 > zzo) {
                    i6 = (int) zzo;
                }
                zzerVar2 = zzerVar;
                j3 = j;
                i7 = 0;
            } else {
                if (b == 1953653099 || b == 1835297121 || b == 1835626086) {
                    j2 = zzo;
                    i3 = 0;
                } else {
                    if (b == 1836019558 || b == 1836475768) {
                        i7 = i2;
                        break;
                    }
                    if (b == 1835295092) {
                        i4 = 0;
                    } else {
                        i4 = i2;
                    }
                    i9 |= i4 ^ 1;
                    if (b == 1937007212) {
                        if (j5 > 1000000) {
                            i7 = 0;
                            break;
                        }
                        b = 1937007212;
                    }
                    j2 = zzo;
                    if ((i8 + j5) - j6 >= i6) {
                        i7 = 0;
                        break;
                    }
                    int i10 = (int) (j5 - j6);
                    i8 += i10;
                    if (b == 1718909296) {
                        if (i10 < 8) {
                            return new zzajo(i10, 1718909296, 8);
                        }
                        zzerVar.y(i10);
                        i3 = 0;
                        zzaepVar.j(zzerVar.f6834a, 0, i10);
                        int b2 = zzerVar.b();
                        int i11 = (b(b2, z2) ? 1 : 0) | i9;
                        zzerVar.G(4);
                        int B = zzerVar.B() / 4;
                        if (i11 == 0 && B > 0) {
                            iArr = new int[B];
                            int i12 = 0;
                            while (true) {
                                if (i12 < B) {
                                    int b3 = zzerVar.b();
                                    iArr[i12] = b3;
                                    if (b(b3, z2)) {
                                        i5 = i2;
                                        break;
                                    }
                                    i12++;
                                } else {
                                    i5 = i11;
                                    break;
                                }
                            }
                        } else {
                            i5 = i11;
                            iArr = null;
                        }
                        if (i5 != 0) {
                            i9 = i5;
                        } else {
                            return new zzakz(b2, iArr);
                        }
                    } else {
                        i3 = 0;
                        if (i10 != 0) {
                            zzaepVar.h(i10);
                        }
                    }
                }
                i7 = i3;
                zzerVar2 = zzerVar;
                zzo = j2;
                j3 = j;
            }
        }
        zzafvVar = null;
        if (i9 == 0) {
            return zzakq.f4135a;
        }
        if (z != i7) {
            if (i7 != 0) {
                return zzaki.b;
            }
            return zzaki.f4126c;
        }
        return zzafvVar;
    }

    public static boolean b(int i, boolean z) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        if (i == 1751476579) {
            if (z) {
                return true;
            }
            i = 1751476579;
        }
        for (int i2 = 0; i2 < 29; i2++) {
            if (f4140a[i2] == i) {
                return true;
            }
        }
        return false;
    }
}
