package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public abstract class zziin implements zzasv {
    public static final zziiy l = zziiy.b(zziin.class);

    /* renamed from: c, reason: collision with root package name */
    public final String f8992c;
    public ByteBuffer h;
    public long i;
    public zziis k;
    public long j = -1;
    public boolean g = true;
    public boolean f = true;

    public zziin(String str) {
        this.f8992c = str;
    }

    @Override // com.google.android.gms.internal.ads.zzasv
    public final void a(zziis zziisVar, ByteBuffer byteBuffer, long j, zzasr zzasrVar) {
        this.i = zziisVar.zzc();
        byteBuffer.remaining();
        this.j = j;
        this.k = zziisVar;
        zziisVar.h(zziisVar.zzc() + j);
        this.g = false;
        this.f = false;
        d();
    }

    public final synchronized void b() {
        String str;
        try {
            if (!this.g) {
                try {
                    zziiy zziiyVar = l;
                    String str2 = this.f8992c;
                    if (str2.length() != 0) {
                        str = "mem mapping ".concat(str2);
                    } else {
                        str = new String("mem mapping ");
                    }
                    zziiyVar.a(str);
                    this.h = this.k.c(this.i, this.j);
                    this.g = true;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public abstract void c(ByteBuffer byteBuffer);

    public final synchronized void d() {
        String str;
        try {
            b();
            zziiy zziiyVar = l;
            String str2 = this.f8992c;
            if (str2.length() != 0) {
                str = "parsing details of ".concat(str2);
            } else {
                str = new String("parsing details of ");
            }
            zziiyVar.a(str);
            ByteBuffer byteBuffer = this.h;
            if (byteBuffer != null) {
                this.f = true;
                byteBuffer.rewind();
                c(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    byteBuffer.slice();
                }
                this.h = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
