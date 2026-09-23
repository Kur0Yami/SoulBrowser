package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.collection.CircularIntArray;
import java.util.ArrayDeque;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zztw extends MediaCodec.Callback {
    public final HandlerThread b;

    /* renamed from: c, reason: collision with root package name */
    public Handler f9286c;
    public MediaFormat h;
    public MediaFormat i;
    public MediaCodec.CodecException j;
    public MediaCodec.CryptoException k;
    public long l;
    public boolean m;
    public IllegalStateException n;
    public zzuf o;

    /* renamed from: a, reason: collision with root package name */
    public final Object f9285a = new Object();
    public final CircularIntArray d = new CircularIntArray();
    public final CircularIntArray e = new CircularIntArray();
    public final ArrayDeque f = new ArrayDeque();
    public final ArrayDeque g = new ArrayDeque();

    public zztw(HandlerThread handlerThread) {
        this.b = handlerThread;
    }

    public final void a() {
        ArrayDeque arrayDeque = this.g;
        if (!arrayDeque.isEmpty()) {
            this.i = (MediaFormat) arrayDeque.getLast();
        }
        CircularIntArray circularIntArray = this.d;
        circularIntArray.f438c = circularIntArray.b;
        CircularIntArray circularIntArray2 = this.e;
        circularIntArray2.f438c = circularIntArray2.b;
        this.f.clear();
        arrayDeque.clear();
    }

    public final void b() {
        IllegalStateException illegalStateException = this.n;
        if (illegalStateException == null) {
            MediaCodec.CodecException codecException = this.j;
            if (codecException == null) {
                MediaCodec.CryptoException cryptoException = this.k;
                if (cryptoException == null) {
                    return;
                }
                this.k = null;
                throw cryptoException;
            }
            this.j = null;
            throw codecException;
        }
        this.n = null;
        throw illegalStateException;
    }

    @Override // android.media.MediaCodec.Callback
    public final void onCryptoError(MediaCodec mediaCodec, MediaCodec.CryptoException cryptoException) {
        synchronized (this.f9285a) {
            this.k = cryptoException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f9285a) {
            this.j = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
        zzmh zzmhVar;
        synchronized (this.f9285a) {
            try {
                this.d.a(i);
                zzuf zzufVar = this.o;
                if (zzufVar != null && (zzmhVar = ((zzuo) zzufVar).f9299a.L) != null) {
                    zzmhVar.zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        zzmh zzmhVar;
        synchronized (this.f9285a) {
            try {
                MediaFormat mediaFormat = this.i;
                if (mediaFormat != null) {
                    this.e.a(-2);
                    this.g.add(mediaFormat);
                    this.i = null;
                }
                this.e.a(i);
                this.f.add(bufferInfo);
                zzuf zzufVar = this.o;
                if (zzufVar != null && (zzmhVar = ((zzuo) zzufVar).f9299a.L) != null) {
                    zzmhVar.zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f9285a) {
            this.e.a(-2);
            this.g.add(mediaFormat);
            this.i = null;
        }
    }
}
