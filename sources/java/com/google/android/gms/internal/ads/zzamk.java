package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import java.util.List;
import kotlin.KotlinVersion;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzamk implements zzaly {
    public static final byte[] h = {0, 7, 8, 15};
    public static final byte[] i = {0, 119, -120, -1};
    public static final byte[] j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* renamed from: a, reason: collision with root package name */
    public final Paint f4192a;
    public final Paint b;

    /* renamed from: c, reason: collision with root package name */
    public final Canvas f4193c;
    public final zzamd d;
    public final zzamc e;
    public final zzamj f;
    public Bitmap g;

    public zzamk(List list) {
        zzer zzerVar = new zzer((byte[]) list.get(0));
        int L = zzerVar.L();
        int L2 = zzerVar.L();
        Paint paint = new Paint();
        this.f4192a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f4193c = new Canvas();
        this.d = new zzamd(719, 575, 0, 719, 0, 575);
        this.e = new zzamc(0, new int[]{0, -1, -16777216, -8421505}, d(), e());
        this.f = new zzamj(L, L2);
    }

    public static zzamc b(zzeq zzeqVar, int i2) {
        int[] iArr;
        int h2;
        int h3;
        int i3;
        int i4;
        int i5 = 8;
        int h4 = zzeqVar.h(8);
        zzeqVar.f(8);
        int i6 = 0;
        int[] iArr2 = {0, -1, -16777216, -8421505};
        int[] d = d();
        int[] e = e();
        int i7 = i2 - 2;
        while (i7 > 0) {
            int h5 = zzeqVar.h(i5);
            int h6 = zzeqVar.h(i5);
            if ((h6 & Uuid.SIZE_BITS) != 0) {
                iArr = iArr2;
            } else if ((h6 & 64) != 0) {
                iArr = d;
            } else {
                iArr = e;
            }
            if ((h6 & 1) != 0) {
                i3 = zzeqVar.h(i5);
                i4 = zzeqVar.h(i5);
                h2 = zzeqVar.h(i5);
                h3 = zzeqVar.h(i5);
                i7 -= 6;
            } else {
                int h7 = zzeqVar.h(6) << 2;
                int h8 = zzeqVar.h(4) << 4;
                i7 -= 4;
                h2 = zzeqVar.h(4) << 4;
                h3 = zzeqVar.h(2) << 6;
                i3 = h7;
                i4 = h8;
            }
            if (i3 == 0) {
                h3 = 255;
            }
            if (i3 == 0) {
                h2 = i6;
            }
            if (i3 == 0) {
                i4 = i6;
            }
            int i8 = 255 - (h3 & KotlinVersion.MAX_COMPONENT_VALUE);
            double d2 = i3;
            String str = zzfj.f7405a;
            double d3 = i4 - 128;
            double d4 = h2 - 128;
            iArr[h5] = f((byte) i8, Math.max(0, Math.min((int) ((1.402d * d3) + d2), KotlinVersion.MAX_COMPONENT_VALUE)), Math.max(0, Math.min((int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d)), KotlinVersion.MAX_COMPONENT_VALUE)), Math.max(0, Math.min((int) ((d4 * 1.772d) + d2), KotlinVersion.MAX_COMPONENT_VALUE)));
            i6 = 0;
            h4 = h4;
            e = e;
            i5 = 8;
        }
        return new zzamc(h4, iArr2, d, e);
    }

    public static zzame c(zzeq zzeqVar) {
        byte[] bArr;
        boolean z;
        int h2 = zzeqVar.h(16);
        zzeqVar.f(4);
        int h3 = zzeqVar.h(2);
        boolean g = zzeqVar.g();
        boolean z2 = true;
        zzeqVar.f(1);
        byte[] bArr2 = zzfj.b;
        if (h3 == 1) {
            zzeqVar.f(zzeqVar.h(8) * 16);
        } else if (h3 == 0) {
            int h4 = zzeqVar.h(16);
            int h5 = zzeqVar.h(16);
            if (h4 > 0) {
                bArr2 = new byte[h4];
                if (zzeqVar.f6807c == 0) {
                    z = true;
                } else {
                    z = false;
                }
                zzgqa.f(z);
                System.arraycopy(zzeqVar.f6806a, zzeqVar.b, bArr2, 0, h4);
                zzeqVar.b += h4;
                zzeqVar.m();
            }
            if (h5 > 0) {
                bArr = new byte[h5];
                if (zzeqVar.f6807c != 0) {
                    z2 = false;
                }
                zzgqa.f(z2);
                System.arraycopy(zzeqVar.f6806a, zzeqVar.b, bArr, 0, h5);
                zzeqVar.b += h5;
                zzeqVar.m();
                return new zzame(h2, g, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new zzame(h2, g, bArr2, bArr);
    }

    public static int[] d() {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i7 = 1; i7 < 16; i7++) {
            int i8 = i7 & 4;
            int i9 = i7 & 2;
            int i10 = i7 & 1;
            if (i7 < 8) {
                if (1 != i10) {
                    i4 = 0;
                } else {
                    i4 = 255;
                }
                if (i9 != 0) {
                    i5 = 255;
                } else {
                    i5 = 0;
                }
                if (i8 != 0) {
                    i6 = 255;
                } else {
                    i6 = 0;
                }
                iArr[i7] = f(KotlinVersion.MAX_COMPONENT_VALUE, i4, i5, i6);
            } else {
                int i11 = 127;
                if (1 != i10) {
                    i2 = 0;
                } else {
                    i2 = 127;
                }
                if (i9 != 0) {
                    i3 = 127;
                } else {
                    i3 = 0;
                }
                if (i8 == 0) {
                    i11 = 0;
                }
                iArr[i7] = f(KotlinVersion.MAX_COMPONENT_VALUE, i2, i3, i11);
            }
        }
        return iArr;
    }

    public static int[] e() {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i20 = 0; i20 < 256; i20++) {
            int i21 = KotlinVersion.MAX_COMPONENT_VALUE;
            if (i20 < 8) {
                int i22 = i20 & 2;
                int i23 = i20 & 4;
                if (1 != (i20 & 1)) {
                    i18 = 0;
                } else {
                    i18 = 255;
                }
                if (i22 != 0) {
                    i19 = 255;
                } else {
                    i19 = 0;
                }
                if (i23 == 0) {
                    i21 = 0;
                }
                iArr[i20] = f(63, i18, i19, i21);
            } else {
                int i24 = i20 & 136;
                int i25 = 170;
                int i26 = 85;
                if (i24 != 0) {
                    if (i24 != 8) {
                        int i27 = 43;
                        if (i24 != 128) {
                            if (i24 == 136) {
                                int i28 = i20 & 16;
                                int i29 = i20 & 32;
                                int i30 = i20 & 2;
                                int i31 = i20 & 64;
                                int i32 = i20 & 4;
                                if (1 != (i20 & 1)) {
                                    i14 = 0;
                                } else {
                                    i14 = 43;
                                }
                                if (i28 != 0) {
                                    i15 = 85;
                                } else {
                                    i15 = 0;
                                }
                                if (i30 != 0) {
                                    i16 = 43;
                                } else {
                                    i16 = 0;
                                }
                                if (i29 != 0) {
                                    i17 = 85;
                                } else {
                                    i17 = 0;
                                }
                                if (i32 == 0) {
                                    i27 = 0;
                                }
                                if (i31 == 0) {
                                    i26 = 0;
                                }
                                iArr[i20] = f(KotlinVersion.MAX_COMPONENT_VALUE, i14 + i15, i16 + i17, i27 + i26);
                            }
                        } else {
                            int i33 = i20 & 16;
                            int i34 = i20 & 32;
                            int i35 = i20 & 2;
                            int i36 = i20 & 64;
                            int i37 = i20 & 4;
                            if (1 != (i20 & 1)) {
                                i10 = 0;
                            } else {
                                i10 = 43;
                            }
                            int i38 = i10 + 127;
                            if (i33 != 0) {
                                i11 = 85;
                            } else {
                                i11 = 0;
                            }
                            if (i35 != 0) {
                                i12 = 43;
                            } else {
                                i12 = 0;
                            }
                            int i39 = i12 + 127;
                            if (i34 != 0) {
                                i13 = 85;
                            } else {
                                i13 = 0;
                            }
                            if (i37 == 0) {
                                i27 = 0;
                            }
                            int i40 = i27 + 127;
                            if (i36 == 0) {
                                i26 = 0;
                            }
                            iArr[i20] = f(KotlinVersion.MAX_COMPONENT_VALUE, i38 + i11, i39 + i13, i40 + i26);
                        }
                    } else {
                        int i41 = i20 & 16;
                        int i42 = i20 & 32;
                        int i43 = i20 & 2;
                        int i44 = i20 & 64;
                        int i45 = i20 & 4;
                        if (1 != (i20 & 1)) {
                            i6 = 0;
                        } else {
                            i6 = 85;
                        }
                        if (i41 != 0) {
                            i7 = 170;
                        } else {
                            i7 = 0;
                        }
                        if (i43 != 0) {
                            i8 = 85;
                        } else {
                            i8 = 0;
                        }
                        if (i42 != 0) {
                            i9 = 170;
                        } else {
                            i9 = 0;
                        }
                        if (i45 == 0) {
                            i26 = 0;
                        }
                        if (i44 == 0) {
                            i25 = 0;
                        }
                        iArr[i20] = f(127, i6 + i7, i8 + i9, i26 + i25);
                    }
                } else {
                    int i46 = i20 & 16;
                    int i47 = i20 & 32;
                    int i48 = i20 & 2;
                    int i49 = i20 & 64;
                    int i50 = i20 & 4;
                    if (1 != (i20 & 1)) {
                        i2 = 0;
                    } else {
                        i2 = 85;
                    }
                    if (i46 != 0) {
                        i3 = 170;
                    } else {
                        i3 = 0;
                    }
                    if (i48 != 0) {
                        i4 = 85;
                    } else {
                        i4 = 0;
                    }
                    if (i47 != 0) {
                        i5 = 170;
                    } else {
                        i5 = 0;
                    }
                    if (i50 == 0) {
                        i26 = 0;
                    }
                    if (i49 == 0) {
                        i25 = 0;
                    }
                    iArr[i20] = f(KotlinVersion.MAX_COMPONENT_VALUE, i2 + i3, i4 + i5, i26 + i25);
                }
            }
        }
        return iArr;
    }

    public static int f(int i2, int i3, int i4, int i5) {
        return (i2 << 24) | (i3 << 16) | (i4 << 8) | i5;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01d0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0201 A[LOOP:3: B:85:0x0163->B:98:0x0201, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01fa A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void g(byte[] r22, int[] r23, int r24, int r25, int r26, android.graphics.Paint r27, android.graphics.Canvas r28) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamk.g(byte[], int[], int, int, int, android.graphics.Paint, android.graphics.Canvas):void");
    }

    public static byte[] h(int i2, int i3, zzeq zzeqVar) {
        byte[] bArr = new byte[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            bArr[i4] = (byte) zzeqVar.h(i3);
        }
        return bArr;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01e4, code lost:
    
        r3.l(r12 - r3.c());
     */
    @Override // com.google.android.gms.internal.ads.zzaly
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(byte[] r27, int r28, int r29, com.google.android.gms.internal.ads.zzdr r30) {
        /*
            Method dump skipped, instructions count: 1018
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamk.a(byte[], int, int, com.google.android.gms.internal.ads.zzdr):void");
    }
}
