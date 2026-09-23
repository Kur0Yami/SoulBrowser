package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.zip.Inflater;
import kotlin.KotlinVersion;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzamm implements zzaly {

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4196a = new zzer();
    public final zzer b = new zzer();

    /* renamed from: c, reason: collision with root package name */
    public final zzaml f4197c = new zzaml();
    public Inflater d;

    @Override // com.google.android.gms.internal.ads.zzaly
    public final void a(byte[] bArr, int i, int i2, zzdr zzdrVar) {
        zzer zzerVar;
        zzcx zzcxVar;
        int i3;
        zzer zzerVar2;
        int i4;
        int i5;
        zzer zzerVar3;
        int O;
        zzer zzerVar4 = this.f4196a;
        zzerVar4.z(bArr, i + i2);
        zzerVar4.E(i);
        if (this.d == null) {
            this.d = new Inflater();
        }
        Inflater inflater = this.d;
        zzer zzerVar5 = this.b;
        if (zzfj.g(zzerVar4, zzerVar5, inflater)) {
            zzerVar4.z(zzerVar5.f6834a, zzerVar5.f6835c);
        }
        zzaml zzamlVar = this.f4197c;
        int i6 = 0;
        zzamlVar.d = 0;
        zzer zzerVar6 = zzamlVar.f4194a;
        zzamlVar.e = 0;
        zzamlVar.f = 0;
        zzamlVar.g = 0;
        zzamlVar.h = 0;
        zzamlVar.i = 0;
        zzerVar6.y(0);
        zzamlVar.f4195c = false;
        int[] iArr = zzamlVar.b;
        ArrayList arrayList = new ArrayList();
        while (zzerVar4.B() >= 3) {
            int i7 = zzerVar4.f6835c;
            int K = zzerVar4.K();
            int L = zzerVar4.L();
            int i8 = zzerVar4.b + L;
            if (i8 > i7) {
                zzerVar4.E(i7);
                zzerVar = zzerVar6;
                zzcxVar = null;
                i3 = i6;
                zzerVar2 = zzerVar4;
            } else {
                if (K != 128) {
                    switch (K) {
                        case 20:
                            if (L % 5 != 2) {
                                zzerVar3 = zzerVar4;
                                zzerVar = zzerVar6;
                            } else {
                                zzerVar4.G(2);
                                Arrays.fill(iArr, i6);
                                int i9 = L / 5;
                                int i10 = i6;
                                while (i10 < i9) {
                                    int K2 = zzerVar4.K();
                                    int K3 = zzerVar4.K();
                                    int K4 = zzerVar4.K();
                                    int K5 = zzerVar4.K();
                                    double d = K3;
                                    int K6 = zzerVar4.K() << 24;
                                    String str = zzfj.f7405a;
                                    zzer zzerVar7 = zzerVar4;
                                    double d2 = K4 - 128;
                                    double d3 = K5 - 128;
                                    iArr[K2] = (Math.max(0, Math.min((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), KotlinVersion.MAX_COMPONENT_VALUE)) << 8) | K6 | (Math.max(0, Math.min((int) ((1.402d * d2) + d), KotlinVersion.MAX_COMPONENT_VALUE)) << 16) | Math.max(0, Math.min((int) ((1.772d * d3) + d), KotlinVersion.MAX_COMPONENT_VALUE));
                                    i10++;
                                    zzerVar6 = zzerVar6;
                                    zzerVar4 = zzerVar7;
                                }
                                zzerVar3 = zzerVar4;
                                zzerVar = zzerVar6;
                                zzamlVar.f4195c = true;
                            }
                            zzerVar2 = zzerVar3;
                            i3 = 0;
                            zzcxVar = null;
                            break;
                        case 21:
                            if (L >= 4) {
                                zzerVar4.G(3);
                                int i11 = L - 4;
                                if ((128 & zzerVar4.K()) != 0) {
                                    if (i11 >= 7 && (O = zzerVar4.O()) >= 4) {
                                        zzamlVar.h = zzerVar4.L();
                                        zzamlVar.i = zzerVar4.L();
                                        zzerVar6.y(O - 4);
                                        i11 = L - 11;
                                    }
                                }
                                int i12 = zzerVar6.b;
                                int i13 = zzerVar6.f6835c;
                                if (i12 < i13 && i11 > 0) {
                                    int min = Math.min(i11, i13 - i12);
                                    zzerVar4.H(zzerVar6.f6834a, i12, min);
                                    zzerVar6.E(i12 + min);
                                    break;
                                }
                            }
                            break;
                        case 22:
                            if (L >= 19) {
                                zzamlVar.d = zzerVar4.L();
                                zzamlVar.e = zzerVar4.L();
                                zzerVar4.G(11);
                                zzamlVar.f = zzerVar4.L();
                                zzamlVar.g = zzerVar4.L();
                                break;
                            }
                            break;
                    }
                    zzerVar = zzerVar6;
                    zzcxVar = null;
                    i3 = i6;
                    zzerVar2 = zzerVar4;
                } else {
                    zzer zzerVar8 = zzerVar4;
                    zzerVar = zzerVar6;
                    if (zzamlVar.d != 0 && zzamlVar.e != 0 && zzamlVar.h != 0 && zzamlVar.i != 0 && (i4 = zzerVar.f6835c) != 0 && zzerVar.b == i4 && zzamlVar.f4195c) {
                        zzerVar.E(0);
                        int i14 = zzamlVar.h * zzamlVar.i;
                        int[] iArr2 = new int[i14];
                        int i15 = 0;
                        while (i15 < i14) {
                            int K7 = zzerVar.K();
                            if (K7 != 0) {
                                iArr2[i15] = iArr[K7];
                                i15++;
                            } else {
                                int K8 = zzerVar.K();
                                if (K8 != 0) {
                                    int i16 = K8 & 63;
                                    if ((K8 & 64) != 0) {
                                        i16 = (i16 << 8) | zzerVar.K();
                                    }
                                    if ((K8 & Uuid.SIZE_BITS) == 0) {
                                        i5 = iArr[0];
                                    } else {
                                        i5 = iArr[zzerVar.K()];
                                    }
                                    int i17 = i15 + i16;
                                    Arrays.fill(iArr2, i15, i17, i5);
                                    i15 = i17;
                                }
                            }
                        }
                        Bitmap createBitmap = Bitmap.createBitmap(iArr2, zzamlVar.h, zzamlVar.i, Bitmap.Config.ARGB_8888);
                        zzcw zzcwVar = new zzcw();
                        zzcwVar.b = createBitmap;
                        zzcwVar.f5522a = null;
                        float f = zzamlVar.f;
                        float f2 = zzamlVar.d;
                        zzcwVar.h = f / f2;
                        zzcwVar.i = 0;
                        float f3 = zzamlVar.g;
                        float f4 = zzamlVar.e;
                        zzcwVar.e = f3 / f4;
                        zzcwVar.f = 0;
                        zzcwVar.g = 0;
                        zzcwVar.l = zzamlVar.h / f2;
                        zzcwVar.m = zzamlVar.i / f4;
                        zzcxVar = zzcwVar.b();
                    } else {
                        zzcxVar = null;
                    }
                    i3 = 0;
                    zzamlVar.d = 0;
                    zzamlVar.e = 0;
                    zzamlVar.f = 0;
                    zzamlVar.g = 0;
                    zzamlVar.h = 0;
                    zzamlVar.i = 0;
                    zzerVar.y(0);
                    zzamlVar.f4195c = false;
                    zzerVar2 = zzerVar8;
                }
                zzerVar2.E(i8);
            }
            if (zzcxVar != null) {
                arrayList.add(zzcxVar);
            }
            zzerVar4 = zzerVar2;
            i6 = i3;
            zzerVar6 = zzerVar;
        }
        ((zzama) zzdrVar).zza(new zzalq(arrayList, -9223372036854775807L, -9223372036854775807L));
    }
}
