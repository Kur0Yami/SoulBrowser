package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.Build;

/* loaded from: classes.dex */
public final class zzie {

    /* renamed from: a, reason: collision with root package name */
    public byte[] f8962a;
    public byte[] b;

    /* renamed from: c, reason: collision with root package name */
    public int f8963c;
    public int[] d;
    public int[] e;
    public int f;
    public int g;
    public int h;
    public final MediaCodec.CryptoInfo i;
    public final zzid j;

    public zzie() {
        zzid zzidVar;
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.i = cryptoInfo;
        if (Build.VERSION.SDK_INT >= 24) {
            zzidVar = new zzid(cryptoInfo);
        } else {
            zzidVar = null;
        }
        this.j = zzidVar;
    }

    public final void a(int i) {
        if (i == 0) {
            return;
        }
        if (this.d == null) {
            int[] iArr = new int[1];
            this.d = iArr;
            this.i.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.d;
        iArr2[0] = iArr2[0] + i;
    }
}
