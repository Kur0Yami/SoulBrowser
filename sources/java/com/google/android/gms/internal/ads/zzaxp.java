package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import kotlin.KotlinVersion;

/* loaded from: classes.dex */
final class zzaxp {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f4455a = false;
    public static MessageDigest b;

    /* renamed from: c, reason: collision with root package name */
    public static final Object f4456c = new Object();
    public static final Object d = new Object();
    public static final CountDownLatch e = new CountDownLatch(1);

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, java.lang.Runnable] */
    public static void a() {
        synchronized (d) {
            try {
                if (!f4455a) {
                    f4455a = true;
                    new Thread((Runnable) new Object()).start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static zzaxf b(String str, byte[] bArr) {
        Vector vector;
        int length = bArr.length;
        if (length > 0) {
            int i = length + 254;
            vector = new Vector();
            for (int i2 = 0; i2 < i / KotlinVersion.MAX_COMPONENT_VALUE; i2++) {
                int i3 = i2 * KotlinVersion.MAX_COMPONENT_VALUE;
                try {
                    int length2 = bArr.length;
                    if (length2 - i3 > 255) {
                        length2 = i3 + KotlinVersion.MAX_COMPONENT_VALUE;
                    }
                    vector.add(Arrays.copyOfRange(bArr, i3, length2));
                } catch (IndexOutOfBoundsException unused) {
                }
            }
            if (vector != null || vector.isEmpty()) {
                return null;
            }
            zzaxf D = zzaxg.D();
            int size = vector.size();
            for (int i4 = 0; i4 < size; i4++) {
                zzhzl B = zzhzl.B(d(str, false, (byte[]) vector.get(i4)), 0, 256);
                D.k();
                ((zzaxg) D.f).E(B);
            }
            byte[] c2 = c(bArr);
            zzhzl zzhzlVar = zzhzl.f;
            zzhzl B2 = zzhzl.B(c2, 0, c2.length);
            D.k();
            ((zzaxg) D.f).F(B2);
            return D;
        }
        vector = null;
        if (vector != null) {
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001f, code lost:
    
        r1.reset();
        r1.update(r6);
        r6 = com.google.android.gms.internal.ads.zzaxp.b.digest();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] c(byte[] r6) {
        /*
            java.lang.Object r0 = com.google.android.gms.internal.ads.zzaxp.f4456c
            monitor-enter(r0)
            a()     // Catch: java.lang.Throwable -> L1b
            r1 = 0
            java.util.concurrent.CountDownLatch r2 = com.google.android.gms.internal.ads.zzaxp.e     // Catch: java.lang.Throwable -> L1b java.lang.InterruptedException -> L1d
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.Throwable -> L1b java.lang.InterruptedException -> L1d
            r4 = 2
            boolean r2 = r2.await(r4, r3)     // Catch: java.lang.Throwable -> L1b java.lang.InterruptedException -> L1d
            if (r2 != 0) goto L14
            goto L1d
        L14:
            java.security.MessageDigest r2 = com.google.android.gms.internal.ads.zzaxp.b     // Catch: java.lang.Throwable -> L1b
            if (r2 != 0) goto L19
            goto L1d
        L19:
            r1 = r2
            goto L1d
        L1b:
            r6 = move-exception
            goto L35
        L1d:
            if (r1 == 0) goto L2d
            r1.reset()     // Catch: java.lang.Throwable -> L1b
            r1.update(r6)     // Catch: java.lang.Throwable -> L1b
            java.security.MessageDigest r6 = com.google.android.gms.internal.ads.zzaxp.b     // Catch: java.lang.Throwable -> L1b
            byte[] r6 = r6.digest()     // Catch: java.lang.Throwable -> L1b
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1b
            return r6
        L2d:
            java.security.NoSuchAlgorithmException r6 = new java.security.NoSuchAlgorithmException     // Catch: java.lang.Throwable -> L1b
            java.lang.String r1 = "Cannot compute hash"
            r6.<init>(r1)     // Catch: java.lang.Throwable -> L1b
            throw r6     // Catch: java.lang.Throwable -> L1b
        L35:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1b
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaxp.c(byte[]):byte[]");
    }

    public static byte[] d(String str, boolean z, byte[] bArr) {
        int i;
        byte[] array;
        int length = bArr.length;
        if (true != z) {
            i = 255;
        } else {
            i = 239;
        }
        if (length > i) {
            zzavs F0 = zzawp.F0();
            F0.p(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
            bArr = ((zzawp) F0.m()).h();
        }
        int i2 = i + 1;
        int length2 = bArr.length;
        byte b2 = (byte) length2;
        if (length2 < i) {
            byte[] bArr2 = new byte[i - length2];
            new SecureRandom().nextBytes(bArr2);
            array = ByteBuffer.allocate(i2).put(b2).put(bArr).put(bArr2).array();
        } else {
            array = ByteBuffer.allocate(i2).put(b2).put(bArr).array();
        }
        if (z) {
            array = ByteBuffer.allocate(256).put(c(array)).put(array).array();
        }
        byte[] bArr3 = new byte[256];
        zzaxq[] zzaxqVarArr = new zzayd().G2;
        int length3 = zzaxqVarArr.length;
        for (int i3 = 0; i3 < 12; i3++) {
            zzaxqVarArr[i3].a(array, bArr3);
        }
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            zzaxh zzaxhVar = new zzaxh(str.getBytes("UTF-8"));
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < 256; i6++) {
                i4 = (i4 + 1) & KotlinVersion.MAX_COMPONENT_VALUE;
                byte[] bArr4 = zzaxhVar.f4448a;
                byte b3 = bArr4[i4];
                i5 = (i5 + b3) & KotlinVersion.MAX_COMPONENT_VALUE;
                bArr4[i4] = bArr4[i5];
                bArr4[i5] = b3;
                bArr3[i6] = (byte) (bArr4[(bArr4[i4] + b3) & KotlinVersion.MAX_COMPONENT_VALUE] ^ bArr3[i6]);
            }
        }
        return bArr3;
    }
}
