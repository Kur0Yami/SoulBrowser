package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zztu implements zzuh {
    public static final ArrayDeque g = new ArrayDeque();
    public static final Object h = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final MediaCodec f9282a;
    public final HandlerThread b;

    /* renamed from: c, reason: collision with root package name */
    public Handler f9283c;
    public final AtomicReference d;
    public final zzdq e;
    public boolean f;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzdq, java.lang.Object] */
    public zztu(MediaCodec mediaCodec, HandlerThread handlerThread) {
        ?? obj = new Object();
        this.f9282a = mediaCodec;
        this.b = handlerThread;
        this.e = obj;
        this.d = new AtomicReference();
    }

    public static zztt d() {
        ArrayDeque arrayDeque = g;
        synchronized (arrayDeque) {
            try {
                if (arrayDeque.isEmpty()) {
                    return new zztt();
                }
                return (zztt) arrayDeque.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(int i, zzie zzieVar, long j, int i2) {
        int length;
        int length2;
        int length3;
        int length4;
        c();
        zztt d = d();
        d.f9280a = i;
        d.b = 0;
        d.d = j;
        d.e = i2;
        MediaCodec.CryptoInfo cryptoInfo = d.f9281c;
        cryptoInfo.numSubSamples = zzieVar.f;
        int[] iArr = zzieVar.d;
        int[] iArr2 = cryptoInfo.numBytesOfClearData;
        if (iArr != null) {
            if (iArr2 != null && iArr2.length >= (length4 = iArr.length)) {
                System.arraycopy(iArr, 0, iArr2, 0, length4);
            } else {
                iArr2 = Arrays.copyOf(iArr, iArr.length);
            }
        }
        cryptoInfo.numBytesOfClearData = iArr2;
        int[] iArr3 = zzieVar.e;
        int[] iArr4 = cryptoInfo.numBytesOfEncryptedData;
        if (iArr3 != null) {
            if (iArr4 != null && iArr4.length >= (length3 = iArr3.length)) {
                System.arraycopy(iArr3, 0, iArr4, 0, length3);
            } else {
                iArr4 = Arrays.copyOf(iArr3, iArr3.length);
            }
        }
        cryptoInfo.numBytesOfEncryptedData = iArr4;
        byte[] bArr = zzieVar.b;
        byte[] bArr2 = cryptoInfo.key;
        if (bArr != null) {
            if (bArr2 != null && bArr2.length >= (length2 = bArr.length)) {
                System.arraycopy(bArr, 0, bArr2, 0, length2);
            } else {
                bArr2 = Arrays.copyOf(bArr, bArr.length);
            }
        }
        bArr2.getClass();
        cryptoInfo.key = bArr2;
        byte[] bArr3 = zzieVar.f8962a;
        byte[] bArr4 = cryptoInfo.iv;
        if (bArr3 != null) {
            if (bArr4 != null && bArr4.length >= (length = bArr3.length)) {
                System.arraycopy(bArr3, 0, bArr4, 0, length);
            } else {
                bArr4 = Arrays.copyOf(bArr3, bArr3.length);
            }
        }
        bArr4.getClass();
        cryptoInfo.iv = bArr4;
        cryptoInfo.mode = zzieVar.f8963c;
        if (Build.VERSION.SDK_INT >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(zzieVar.g, zzieVar.h));
        }
        Handler handler = this.f9283c;
        String str = zzfj.f7405a;
        handler.obtainMessage(2, d).sendToTarget();
    }

    public final void b() {
        if (this.f) {
            try {
                Handler handler = this.f9283c;
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                    zzdq zzdqVar = this.e;
                    synchronized (zzdqVar) {
                        zzdqVar.f6014a = false;
                    }
                    Handler handler2 = this.f9283c;
                    if (handler2 != null) {
                        handler2.obtainMessage(3).sendToTarget();
                        zzdqVar.c();
                        return;
                    }
                    throw null;
                }
                throw null;
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
        }
    }

    public final void c() {
        RuntimeException runtimeException = (RuntimeException) this.d.getAndSet(null);
        if (runtimeException == null) {
        } else {
            throw runtimeException;
        }
    }
}
