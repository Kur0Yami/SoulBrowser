package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.Build;
import java.nio.ByteBuffer;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes.dex */
final class zzxq {

    /* renamed from: a, reason: collision with root package name */
    public final zzaah f9371a;
    public final zzer b = new zzer(32);

    /* renamed from: c, reason: collision with root package name */
    public zzxp f9372c;
    public zzxp d;
    public zzxp e;
    public long f;

    public zzxq(zzaah zzaahVar) {
        this.f9371a = zzaahVar;
        zzxp zzxpVar = new zzxp(0L);
        this.f9372c = zzxpVar;
        this.d = zzxpVar;
        this.e = zzxpVar;
    }

    public static zzxp c(zzxp zzxpVar, zzih zzihVar, zzxr zzxrVar, zzer zzerVar) {
        boolean z;
        if (zzihVar.b(1073741824)) {
            long j = zzxrVar.b;
            int i = 1;
            zzerVar.y(1);
            zzxp e = e(zzxpVar, j, zzerVar.f6834a, 1);
            long j2 = j + 1;
            byte b = zzerVar.f6834a[0];
            int i2 = b & ByteCompanionObject.MIN_VALUE;
            int i3 = b & ByteCompanionObject.MAX_VALUE;
            zzie zzieVar = zzihVar.f8983c;
            byte[] bArr = zzieVar.f8962a;
            if (bArr == null) {
                zzieVar.f8962a = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            if (i2 != 0) {
                z = true;
            } else {
                z = false;
            }
            zzxpVar = e(e, j2, zzieVar.f8962a, i3);
            long j3 = j2 + i3;
            if (z) {
                zzerVar.y(2);
                zzxpVar = e(zzxpVar, j3, zzerVar.f6834a, 2);
                j3 += 2;
                i = zzerVar.L();
            }
            int[] iArr = zzieVar.d;
            if (iArr == null || iArr.length < i) {
                iArr = new int[i];
            }
            int[] iArr2 = zzieVar.e;
            if (iArr2 == null || iArr2.length < i) {
                iArr2 = new int[i];
            }
            if (z) {
                int i4 = i * 6;
                zzerVar.y(i4);
                zzxpVar = e(zzxpVar, j3, zzerVar.f6834a, i4);
                j3 += i4;
                zzerVar.E(0);
                for (int i5 = 0; i5 < i; i5++) {
                    iArr[i5] = zzerVar.L();
                    iArr2[i5] = zzerVar.h();
                }
            } else {
                iArr[0] = 0;
                iArr2[0] = zzxrVar.f9373a - ((int) (j3 - zzxrVar.b));
            }
            zzafz zzafzVar = zzxrVar.f9374c;
            String str = zzfj.f7405a;
            byte[] bArr2 = zzafzVar.b;
            byte[] bArr3 = zzieVar.f8962a;
            int i6 = zzafzVar.f3992a;
            int i7 = zzafzVar.f3993c;
            int i8 = zzafzVar.d;
            zzieVar.f = i;
            zzieVar.d = iArr;
            zzieVar.e = iArr2;
            zzieVar.b = bArr2;
            zzieVar.f8962a = bArr3;
            zzieVar.f8963c = i6;
            zzieVar.g = i7;
            zzieVar.h = i8;
            MediaCodec.CryptoInfo cryptoInfo = zzieVar.i;
            cryptoInfo.numSubSamples = i;
            cryptoInfo.numBytesOfClearData = iArr;
            cryptoInfo.numBytesOfEncryptedData = iArr2;
            cryptoInfo.key = bArr2;
            cryptoInfo.iv = bArr3;
            cryptoInfo.mode = i6;
            if (Build.VERSION.SDK_INT >= 24) {
                zzid zzidVar = zzieVar.j;
                zzidVar.getClass();
                zzidVar.a(i7, i8);
            }
            long j4 = zzxrVar.b;
            int i9 = (int) (j3 - j4);
            zzxrVar.b = j4 + i9;
            zzxrVar.f9373a -= i9;
        }
        if (zzihVar.b(268435456)) {
            zzerVar.y(4);
            zzxp e2 = e(zzxpVar, zzxrVar.b, zzerVar.f6834a, 4);
            int h = zzerVar.h();
            zzxrVar.b += 4;
            zzxrVar.f9373a -= 4;
            zzihVar.d(h);
            zzxp d = d(e2, zzxrVar.b, zzihVar.d, h);
            zzxrVar.b += h;
            int i10 = zzxrVar.f9373a - h;
            zzxrVar.f9373a = i10;
            ByteBuffer byteBuffer = zzihVar.g;
            if (byteBuffer != null && byteBuffer.capacity() >= i10) {
                zzihVar.g.clear();
            } else {
                zzihVar.g = ByteBuffer.allocate(i10);
            }
            return d(d, zzxrVar.b, zzihVar.g, zzxrVar.f9373a);
        }
        zzihVar.d(zzxrVar.f9373a);
        return d(zzxpVar, zzxrVar.b, zzihVar.d, zzxrVar.f9373a);
    }

    public static zzxp d(zzxp zzxpVar, long j, ByteBuffer byteBuffer, int i) {
        while (j >= zzxpVar.b) {
            zzxpVar = zzxpVar.d;
        }
        while (i > 0) {
            int min = Math.min(i, (int) (zzxpVar.b - j));
            zzaaf zzaafVar = zzxpVar.f9370c;
            byte[] bArr = zzaafVar.f3846a;
            long j2 = j - zzxpVar.f9369a;
            zzaafVar.getClass();
            byteBuffer.put(bArr, (int) j2, min);
            i -= min;
            j += min;
            if (j == zzxpVar.b) {
                zzxpVar = zzxpVar.d;
            }
        }
        return zzxpVar;
    }

    public static zzxp e(zzxp zzxpVar, long j, byte[] bArr, int i) {
        while (j >= zzxpVar.b) {
            zzxpVar = zzxpVar.d;
        }
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (zzxpVar.b - j));
            zzaaf zzaafVar = zzxpVar.f9370c;
            byte[] bArr2 = zzaafVar.f3846a;
            long j2 = j - zzxpVar.f9369a;
            zzaafVar.getClass();
            System.arraycopy(bArr2, (int) j2, bArr, i - i2, min);
            i2 -= min;
            j += min;
            if (j == zzxpVar.b) {
                zzxpVar = zzxpVar.d;
            }
        }
        return zzxpVar;
    }

    public final void a(long j) {
        zzxp zzxpVar;
        if (j != -1) {
            while (true) {
                zzxpVar = this.f9372c;
                if (j < zzxpVar.b) {
                    break;
                }
                this.f9371a.b(zzxpVar.f9370c);
                zzxp zzxpVar2 = this.f9372c;
                zzxpVar2.f9370c = null;
                zzxp zzxpVar3 = zzxpVar2.d;
                zzxpVar2.d = null;
                this.f9372c = zzxpVar3;
            }
            if (this.d.f9369a < zzxpVar.f9369a) {
                this.d = zzxpVar;
            }
        }
    }

    public final int b(int i) {
        zzxp zzxpVar = this.e;
        if (zzxpVar.f9370c == null) {
            zzaaf zza = this.f9371a.zza();
            zzxp zzxpVar2 = new zzxp(this.e.b);
            zzxpVar.f9370c = zza;
            zzxpVar.d = zzxpVar2;
        }
        return Math.min(i, (int) (this.e.b - this.f));
    }
}
