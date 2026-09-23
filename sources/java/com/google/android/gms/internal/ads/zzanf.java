package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.Rect;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.zip.Inflater;

/* loaded from: classes.dex */
public final class zzanf implements zzaly {

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4231a = new zzer();
    public final zzer b = new zzer();

    /* renamed from: c, reason: collision with root package name */
    public final zzane f4232c;
    public Inflater d;

    public zzanf(List list) {
        int i;
        zzane zzaneVar = new zzane();
        this.f4232c = zzaneVar;
        String trim = new String((byte[]) list.get(0), StandardCharsets.UTF_8).trim();
        String str = zzfj.f7405a;
        for (String str2 : trim.split("\\r?\\n", -1)) {
            if (str2.startsWith("palette: ")) {
                String[] split2 = str2.substring(9).split(",", -1);
                zzaneVar.d = new int[split2.length];
                for (int i2 = 0; i2 < split2.length; i2++) {
                    int[] iArr = zzaneVar.d;
                    try {
                        i = Integer.parseInt(split2[i2].trim(), 16);
                    } catch (RuntimeException unused) {
                        i = 0;
                    }
                    iArr[i2] = i;
                }
            } else if (str2.startsWith("size: ")) {
                String[] split3 = str2.substring(6).trim().split("x", -1);
                if (split3.length == 2) {
                    try {
                        zzaneVar.e = Integer.parseInt(split3[0]);
                        zzaneVar.f = Integer.parseInt(split3[1]);
                        zzaneVar.b = true;
                    } catch (RuntimeException e) {
                        zzee.d("VobsubParser", "Parsing IDX failed", e);
                    }
                }
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0072. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.zzaly
    public final void a(byte[] bArr, int i, int i2, zzdr zzdrVar) {
        zzgtd zzgtdVar;
        Rect rect;
        zzer zzerVar = this.f4231a;
        zzerVar.z(bArr, i + i2);
        zzerVar.E(i);
        if (this.d == null) {
            this.d = new Inflater();
        }
        Inflater inflater = this.d;
        zzer zzerVar2 = this.b;
        if (zzfj.g(zzerVar, zzerVar2, inflater)) {
            zzerVar.z(zzerVar2.f6834a, zzerVar2.f6835c);
        }
        zzane zzaneVar = this.f4232c;
        zzaneVar.f4230c = false;
        zzcx zzcxVar = null;
        zzaneVar.g = null;
        zzaneVar.h = -1;
        zzaneVar.i = -1;
        int B = zzerVar.B();
        if (B >= 2 && zzerVar.L() == B) {
            int[] iArr = zzaneVar.f4229a;
            int[] iArr2 = zzaneVar.d;
            if (iArr2 != null && zzaneVar.b) {
                zzerVar.G(zzerVar.L() - 2);
                int L = zzerVar.L();
                while (zzerVar.b < L && zzerVar.B() > 0) {
                    switch (zzerVar.K()) {
                        case 3:
                            if (zzerVar.B() < 2) {
                                break;
                            } else {
                                int K = zzerVar.K();
                                int K2 = zzerVar.K();
                                int i3 = K >> 4;
                                if (i3 >= iArr2.length) {
                                    i3 = 0;
                                }
                                iArr[3] = iArr2[i3];
                                int i4 = K & 15;
                                if (i4 >= iArr2.length) {
                                    i4 = 0;
                                }
                                iArr[2] = iArr2[i4];
                                int i5 = K2 >> 4;
                                if (i5 >= iArr2.length) {
                                    i5 = 0;
                                }
                                iArr[1] = iArr2[i5];
                                int i6 = K2 & 15;
                                if (i6 >= iArr2.length) {
                                    i6 = 0;
                                }
                                iArr[0] = iArr2[i6];
                                zzaneVar.f4230c = true;
                            }
                        case 4:
                            if (zzerVar.B() >= 2 && zzaneVar.f4230c) {
                                int K3 = zzerVar.K();
                                int K4 = zzerVar.K();
                                iArr[3] = zzane.a(iArr[3], K3 >> 4);
                                iArr[2] = zzane.a(iArr[2], K3 & 15);
                                iArr[1] = zzane.a(iArr[1], K4 >> 4);
                                iArr[0] = zzane.a(iArr[0], K4 & 15);
                            }
                            break;
                        case 5:
                            if (zzerVar.B() < 6) {
                                break;
                            } else {
                                int K5 = zzerVar.K();
                                int K6 = zzerVar.K();
                                int i7 = K6 >> 4;
                                int K7 = ((K6 & 15) << 8) | zzerVar.K();
                                int K8 = zzerVar.K();
                                int K9 = zzerVar.K();
                                zzaneVar.g = new Rect((K5 << 4) | i7, (K8 << 4) | (K9 >> 4), K7 + 1, (((K9 & 15) << 8) | zzerVar.K()) + 1);
                            }
                        case 6:
                            if (zzerVar.B() < 4) {
                                break;
                            } else {
                                zzaneVar.h = zzerVar.L();
                                zzaneVar.i = zzerVar.L();
                            }
                    }
                }
            }
            if (zzaneVar.d != null && zzaneVar.b && zzaneVar.f4230c && (rect = zzaneVar.g) != null && zzaneVar.h != -1 && zzaneVar.i != -1 && rect.width() >= 2 && zzaneVar.g.height() >= 2) {
                Rect rect2 = zzaneVar.g;
                int[] iArr3 = new int[rect2.height() * rect2.width()];
                zzeq zzeqVar = new zzeq();
                zzerVar.E(zzaneVar.h);
                zzeqVar.a(zzerVar);
                zzaneVar.b(zzeqVar, true, rect2, iArr3);
                zzerVar.E(zzaneVar.i);
                zzeqVar.a(zzerVar);
                zzaneVar.b(zzeqVar, false, rect2, iArr3);
                Bitmap createBitmap = Bitmap.createBitmap(iArr3, rect2.width(), rect2.height(), Bitmap.Config.ARGB_8888);
                zzcw zzcwVar = new zzcw();
                zzcwVar.b = createBitmap;
                zzcwVar.f5522a = null;
                zzcwVar.h = rect2.left / zzaneVar.e;
                zzcwVar.i = 0;
                zzcwVar.e = rect2.top / zzaneVar.f;
                zzcwVar.f = 0;
                zzcwVar.g = 0;
                zzcwVar.l = rect2.width() / zzaneVar.e;
                zzcwVar.m = rect2.height() / zzaneVar.f;
                zzcxVar = zzcwVar.b();
            } else {
                zzcxVar = null;
            }
        }
        if (zzcxVar != null) {
            zzgtdVar = zzgtd.r(zzcxVar);
        } else {
            zzgvs zzgvsVar = zzgtd.f;
            zzgtdVar = zzguy.i;
        }
        ((zzama) zzdrVar).zza(new zzalq(zzgtdVar, -9223372036854775807L, 5000000L));
    }
}
