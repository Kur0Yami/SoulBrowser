package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Date;
import kotlin.UByte;

/* loaded from: classes.dex */
public final class zzasy extends zziip {
    public Date n;
    public Date o;
    public long p;
    public long q;
    public double r;
    public float s;
    public zziiz t;
    public long u;

    @Override // com.google.android.gms.internal.ads.zziin
    public final void c(ByteBuffer byteBuffer) {
        int i = byteBuffer.get();
        if (i < 0) {
            i += 256;
        }
        this.m = i;
        byteBuffer.get();
        byteBuffer.get();
        byteBuffer.get();
        if (!this.f) {
            d();
        }
        if (this.m == 1) {
            this.n = zziiu.a(zzasu.b(byteBuffer));
            this.o = zziiu.a(zzasu.b(byteBuffer));
            this.p = zzasu.a(byteBuffer);
            this.q = zzasu.b(byteBuffer);
        } else {
            this.n = zziiu.a(zzasu.a(byteBuffer));
            this.o = zziiu.a(zzasu.a(byteBuffer));
            this.p = zzasu.a(byteBuffer);
            this.q = zzasu.a(byteBuffer);
        }
        this.r = zzasu.c(byteBuffer);
        byteBuffer.get(new byte[2]);
        this.s = ((short) ((r1[1] & UByte.MAX_VALUE) | ((short) (65280 & (r1[0] << 8))))) / 256.0f;
        byteBuffer.get();
        byteBuffer.get();
        zzasu.a(byteBuffer);
        zzasu.a(byteBuffer);
        this.t = new zziiz(zzasu.c(byteBuffer), zzasu.c(byteBuffer), zzasu.c(byteBuffer), zzasu.c(byteBuffer), zzasu.d(byteBuffer), zzasu.d(byteBuffer), zzasu.d(byteBuffer), zzasu.c(byteBuffer), zzasu.c(byteBuffer));
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        this.u = zzasu.a(byteBuffer);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MovieHeaderBox[creationTime=");
        sb.append(this.n);
        sb.append(";modificationTime=");
        sb.append(this.o);
        sb.append(";timescale=");
        sb.append(this.p);
        sb.append(";duration=");
        sb.append(this.q);
        sb.append(";rate=");
        sb.append(this.r);
        sb.append(";volume=");
        sb.append(this.s);
        sb.append(";matrix=");
        sb.append(this.t);
        sb.append(";nextTrackId=");
        return android.support.v4.media.a.o(sb, this.u, "]");
    }
}
