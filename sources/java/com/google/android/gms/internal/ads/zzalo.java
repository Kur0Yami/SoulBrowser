package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import kotlin.KotlinVersion;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzalo extends zzalm {
    public zzaln n;
    public int o;
    public boolean p;
    public zzagf q;
    public zzagd r;

    @Override // com.google.android.gms.internal.ads.zzalm
    public final void a(boolean z) {
        super.a(z);
        if (z) {
            this.n = null;
            this.q = null;
            this.r = null;
        }
        this.o = 0;
        this.p = false;
    }

    @Override // com.google.android.gms.internal.ads.zzalm
    public final long b(zzer zzerVar) {
        int i;
        int i2 = 0;
        byte b = zzerVar.f6834a[0];
        if ((b & 1) == 1) {
            return -1L;
        }
        zzaln zzalnVar = this.n;
        zzalnVar.getClass();
        zzagf zzagfVar = zzalnVar.f4165a;
        if (!zzalnVar.d[(b >> 1) & (KotlinVersion.MAX_COMPONENT_VALUE >>> (8 - zzalnVar.e))].f4001a) {
            i = zzagfVar.e;
        } else {
            i = zzagfVar.f;
        }
        if (this.p) {
            i2 = (this.o + i) / 4;
        }
        byte[] bArr = zzerVar.f6834a;
        int length = bArr.length;
        int i3 = zzerVar.f6835c;
        if (length < i3 + 4) {
            byte[] copyOf = Arrays.copyOf(bArr, i3 + 4);
            zzerVar.z(copyOf, copyOf.length);
        } else {
            zzerVar.C(i3 + 4);
        }
        long j = i2;
        byte[] bArr2 = zzerVar.f6834a;
        int i4 = zzerVar.f6835c;
        bArr2[i4 - 4] = (byte) (j & 255);
        bArr2[i4 - 3] = (byte) ((j >>> 8) & 255);
        bArr2[i4 - 2] = (byte) ((j >>> 16) & 255);
        bArr2[i4 - 1] = (byte) ((j >>> 24) & 255);
        this.p = true;
        this.o = i;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzalm
    public final boolean c(zzer zzerVar, long j, zzalk zzalkVar) {
        zzaln zzalnVar;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        long j2;
        int i6;
        int i7;
        if (this.n != null) {
            zzalkVar.f4162a.getClass();
            return false;
        }
        zzagf zzagfVar = this.q;
        int i8 = 1;
        if (zzagfVar == null) {
            zzagg.c(1, zzerVar, false);
            zzerVar.i();
            int K = zzerVar.K();
            int i9 = zzerVar.i();
            int c2 = zzerVar.c();
            if (c2 <= 0) {
                i6 = -1;
            } else {
                i6 = c2;
            }
            int c3 = zzerVar.c();
            if (c3 <= 0) {
                i7 = -1;
            } else {
                i7 = c3;
            }
            zzerVar.c();
            int K2 = zzerVar.K();
            int pow = (int) Math.pow(2.0d, K2 & 15);
            int pow2 = (int) Math.pow(2.0d, (K2 & 240) >> 4);
            zzerVar.K();
            this.q = new zzagf(K, i9, i6, i7, pow, pow2, Arrays.copyOf(zzerVar.f6834a, zzerVar.f6835c));
        } else {
            int i10 = 4;
            zzagd zzagdVar = this.r;
            if (zzagdVar == null) {
                this.r = zzagg.a(zzerVar, true, true);
            } else {
                int i11 = zzerVar.f6835c;
                byte[] bArr = new byte[i11];
                System.arraycopy(zzerVar.f6834a, 0, bArr, 0, i11);
                int i12 = zzagfVar.f4002a;
                int i13 = 5;
                zzagg.c(5, zzerVar, false);
                int K3 = zzerVar.K() + 1;
                zzagc zzagcVar = new zzagc(zzerVar.f6834a);
                int i14 = 8;
                zzagcVar.c(zzerVar.b * 8);
                int i15 = 0;
                while (true) {
                    int i16 = 2;
                    int i17 = 16;
                    if (i15 < K3) {
                        int i18 = i14;
                        if (zzagcVar.b(24) == 5653314) {
                            int b = zzagcVar.b(16);
                            int b2 = zzagcVar.b(24);
                            if (!zzagcVar.a()) {
                                boolean a2 = zzagcVar.a();
                                for (int i19 = 0; i19 < b2; i19++) {
                                    if (a2) {
                                        if (zzagcVar.a()) {
                                            zzagcVar.c(i13);
                                        }
                                    } else {
                                        zzagcVar.c(i13);
                                    }
                                }
                            } else {
                                zzagcVar.c(i13);
                                int i20 = 0;
                                while (i20 < b2) {
                                    int i21 = b2 - i20;
                                    int i22 = 0;
                                    while (i21 > 0) {
                                        i21 >>>= 1;
                                        i22++;
                                    }
                                    i20 += zzagcVar.b(i22);
                                }
                            }
                            int i23 = i10;
                            int b3 = zzagcVar.b(i23);
                            if (b3 <= 2) {
                                if (b3 != i8) {
                                    if (b3 != 2) {
                                        i4 = i8;
                                        i5 = K3;
                                        i15++;
                                        i14 = i18;
                                        K3 = i5;
                                        i8 = i4;
                                        i10 = 4;
                                        i13 = 5;
                                    }
                                } else {
                                    i16 = b3;
                                }
                                zzagcVar.c(32);
                                zzagcVar.c(32);
                                int b4 = zzagcVar.b(i23) + i8;
                                zzagcVar.c(i8);
                                if (i16 == i8) {
                                    if (b != 0) {
                                        i4 = i8;
                                        i5 = K3;
                                        j2 = (long) Math.floor(Math.pow(b2, 1.0d / b));
                                    } else {
                                        i4 = i8;
                                        i5 = K3;
                                        j2 = 0;
                                    }
                                } else {
                                    i4 = i8;
                                    i5 = K3;
                                    j2 = b * b2;
                                }
                                zzagcVar.c((int) (j2 * b4));
                                i15++;
                                i14 = i18;
                                K3 = i5;
                                i8 = i4;
                                i10 = 4;
                                i13 = 5;
                            } else {
                                StringBuilder sb = new StringBuilder(String.valueOf(b3).length() + 42);
                                sb.append("lookup type greater than 2 not decodable: ");
                                sb.append(b3);
                                throw zzat.a(sb.toString(), null);
                            }
                        } else {
                            int i24 = (zzagcVar.f3999c * 8) + zzagcVar.d;
                            StringBuilder sb2 = new StringBuilder(String.valueOf(i24).length() + 55);
                            sb2.append("expected code book to start with [0x56, 0x43, 0x42] at ");
                            sb2.append(i24);
                            throw zzat.a(sb2.toString(), null);
                        }
                    } else {
                        int i25 = i8;
                        int i26 = i14;
                        int i27 = 6;
                        int b5 = zzagcVar.b(6) + 1;
                        for (int i28 = 0; i28 < b5; i28++) {
                            if (zzagcVar.b(16) != 0) {
                                throw zzat.a("placeholder of time domain transforms not zeroed out", null);
                            }
                        }
                        int b6 = zzagcVar.b(6) + 1;
                        int i29 = 0;
                        while (true) {
                            int i30 = 3;
                            if (i29 < b6) {
                                int b7 = zzagcVar.b(i17);
                                if (b7 != 0) {
                                    if (b7 == i25) {
                                        int b8 = zzagcVar.b(5);
                                        int[] iArr = new int[b8];
                                        int i31 = -1;
                                        for (int i32 = 0; i32 < b8; i32++) {
                                            int b9 = zzagcVar.b(4);
                                            iArr[i32] = b9;
                                            if (b9 > i31) {
                                                i31 = b9;
                                            }
                                        }
                                        int i33 = i31 + 1;
                                        int[] iArr2 = new int[i33];
                                        int i34 = 0;
                                        while (i34 < i33) {
                                            iArr2[i34] = zzagcVar.b(i30) + 1;
                                            int b10 = zzagcVar.b(2);
                                            if (b10 > 0) {
                                                i3 = i26;
                                                zzagcVar.c(i3);
                                            } else {
                                                i3 = i26;
                                            }
                                            int i35 = i33;
                                            int i36 = 0;
                                            for (int i37 = 1; i36 < (i37 << b10); i37 = 1) {
                                                zzagcVar.c(i3);
                                                i36++;
                                                i3 = 8;
                                            }
                                            i34++;
                                            i33 = i35;
                                            i26 = 8;
                                            i30 = 3;
                                        }
                                        zzagcVar.c(2);
                                        int b11 = zzagcVar.b(4);
                                        int i38 = 0;
                                        int i39 = 0;
                                        for (int i40 = 0; i40 < b8; i40++) {
                                            i38 += iArr2[iArr[i40]];
                                            while (i39 < i38) {
                                                zzagcVar.c(b11);
                                                i39++;
                                            }
                                        }
                                    } else {
                                        StringBuilder sb3 = new StringBuilder(androidx.work.impl.workers.a.a(b7, 41));
                                        sb3.append("floor type greater than 1 not decodable: ");
                                        sb3.append(b7);
                                        throw zzat.a(sb3.toString(), null);
                                    }
                                } else {
                                    int i41 = i26;
                                    zzagcVar.c(i41);
                                    zzagcVar.c(16);
                                    zzagcVar.c(16);
                                    zzagcVar.c(6);
                                    zzagcVar.c(i41);
                                    int b12 = zzagcVar.b(4) + 1;
                                    int i42 = 0;
                                    while (i42 < b12) {
                                        zzagcVar.c(i41);
                                        i42++;
                                        i41 = 8;
                                    }
                                }
                                i29++;
                                i26 = 8;
                                i27 = 6;
                                i17 = 16;
                                i25 = 1;
                            } else {
                                int b13 = zzagcVar.b(i27) + 1;
                                int i43 = 0;
                                while (i43 < b13) {
                                    if (zzagcVar.b(16) <= 2) {
                                        zzagcVar.c(24);
                                        zzagcVar.c(24);
                                        zzagcVar.c(24);
                                        int b14 = zzagcVar.b(i27) + 1;
                                        int i44 = 8;
                                        zzagcVar.c(8);
                                        int[] iArr3 = new int[b14];
                                        for (int i45 = 0; i45 < b14; i45++) {
                                            int b15 = zzagcVar.b(3);
                                            if (zzagcVar.a()) {
                                                i2 = zzagcVar.b(5);
                                            } else {
                                                i2 = 0;
                                            }
                                            iArr3[i45] = (i2 * 8) + b15;
                                        }
                                        int i46 = 0;
                                        while (i46 < b14) {
                                            int i47 = 0;
                                            while (i47 < i44) {
                                                if ((iArr3[i46] & (1 << i47)) != 0) {
                                                    zzagcVar.c(i44);
                                                }
                                                i47++;
                                                i44 = 8;
                                            }
                                            i46++;
                                            i44 = 8;
                                        }
                                        i43++;
                                        i27 = 6;
                                    } else {
                                        throw zzat.a("residueType greater than 2 is not decodable", null);
                                    }
                                }
                                int b16 = zzagcVar.b(i27) + 1;
                                for (int i48 = 0; i48 < b16; i48++) {
                                    int b17 = zzagcVar.b(16);
                                    if (b17 != 0) {
                                        StringBuilder sb4 = new StringBuilder(androidx.work.impl.workers.a.a(b17, 41));
                                        sb4.append("mapping type other than 0 not supported: ");
                                        sb4.append(b17);
                                        zzee.e("VorbisUtil", sb4.toString());
                                    } else {
                                        if (zzagcVar.a()) {
                                            i = zzagcVar.b(4) + 1;
                                        } else {
                                            i = 1;
                                        }
                                        if (zzagcVar.a()) {
                                            int b18 = zzagcVar.b(8) + 1;
                                            for (int i49 = 0; i49 < b18; i49++) {
                                                int i50 = i12 - 1;
                                                int i51 = i50;
                                                int i52 = 0;
                                                while (i51 > 0) {
                                                    i51 >>>= 1;
                                                    i52++;
                                                }
                                                zzagcVar.c(i52);
                                                int i53 = 0;
                                                while (i50 > 0) {
                                                    i50 >>>= 1;
                                                    i53++;
                                                }
                                                zzagcVar.c(i53);
                                            }
                                        }
                                        if (zzagcVar.b(2) == 0) {
                                            if (i > 1) {
                                                for (int i54 = 0; i54 < i12; i54++) {
                                                    zzagcVar.c(4);
                                                }
                                            }
                                            for (int i55 = 0; i55 < i; i55++) {
                                                zzagcVar.c(8);
                                                zzagcVar.c(8);
                                                zzagcVar.c(8);
                                            }
                                        } else {
                                            throw zzat.a("to reserved bits must be zero after mapping coupling steps", null);
                                        }
                                    }
                                }
                                int b19 = zzagcVar.b(6);
                                int i56 = b19 + 1;
                                zzage[] zzageVarArr = new zzage[i56];
                                for (int i57 = 0; i57 < i56; i57++) {
                                    boolean a3 = zzagcVar.a();
                                    zzagcVar.b(16);
                                    zzagcVar.b(16);
                                    zzagcVar.b(8);
                                    zzageVarArr[i57] = new zzage(a3);
                                }
                                if (zzagcVar.a()) {
                                    int i58 = 0;
                                    while (b19 > 0) {
                                        b19 >>>= 1;
                                        i58++;
                                    }
                                    zzalnVar = new zzaln(zzagfVar, zzagdVar, bArr, zzageVarArr, i58);
                                } else {
                                    throw zzat.a("framing bit after modes not set as expected", null);
                                }
                            }
                        }
                    }
                }
            }
        }
        zzalnVar = null;
        this.n = zzalnVar;
        if (zzalnVar == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        zzagf zzagfVar2 = zzalnVar.f4165a;
        arrayList.add(zzagfVar2.g);
        arrayList.add(zzalnVar.f4166c);
        zzap b20 = zzagg.b(zzgtd.w(zzalnVar.b.f4000a));
        zzt zztVar = new zzt();
        zztVar.d("audio/ogg");
        zztVar.e("audio/vorbis");
        zztVar.g = zzagfVar2.d;
        zztVar.h = zzagfVar2.f4003c;
        zztVar.D = zzagfVar2.f4002a;
        zztVar.E = zzagfVar2.b;
        zztVar.o = arrayList;
        zztVar.j = b20;
        zzalkVar.f4162a = new zzv(zztVar);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzalm
    public final void d(long j) {
        boolean z;
        this.g = j;
        int i = 0;
        if (j != 0) {
            z = true;
        } else {
            z = false;
        }
        this.p = z;
        zzagf zzagfVar = this.q;
        if (zzagfVar != null) {
            i = zzagfVar.e;
        }
        this.o = i;
    }
}
