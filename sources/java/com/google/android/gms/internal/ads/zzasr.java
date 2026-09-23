package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class zzasr implements zzass {
    public static final Logger b = Logger.getLogger(zzasr.class.getName());

    /* renamed from: a, reason: collision with root package name */
    public final ThreadLocal f4394a = new ThreadLocal();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzass
    public final zzasv a(zziis zziisVar, zziir zziirVar) {
        int x0;
        long j;
        long zzc = zziisVar.zzc();
        ThreadLocal threadLocal = this.f4394a;
        ((ByteBuffer) threadLocal.get()).rewind().limit(8);
        do {
            x0 = zziisVar.x0((ByteBuffer) threadLocal.get());
            if (x0 == 8) {
                ((ByteBuffer) threadLocal.get()).rewind();
                long a2 = zzasu.a((ByteBuffer) threadLocal.get());
                if (a2 < 8 && a2 > 1) {
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(a2);
                    sb.append("). Stop parsing!");
                    b.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                byte[] bArr = new byte[4];
                ((ByteBuffer) threadLocal.get()).get(bArr);
                try {
                    String str = new String(bArr, "ISO-8859-1");
                    if (a2 == 1) {
                        ((ByteBuffer) threadLocal.get()).limit(16);
                        zziisVar.x0((ByteBuffer) threadLocal.get());
                        ((ByteBuffer) threadLocal.get()).position(8);
                        j = zzasu.b((ByteBuffer) threadLocal.get()) - 16;
                    } else if (a2 == 0) {
                        j = zziisVar.zzb() - zziisVar.zzc();
                    } else {
                        j = a2 - 8;
                    }
                    if ("uuid".equals(str)) {
                        ((ByteBuffer) threadLocal.get()).limit(((ByteBuffer) threadLocal.get()).limit() + 16);
                        zziisVar.x0((ByteBuffer) threadLocal.get());
                        byte[] bArr2 = new byte[16];
                        for (int position = ((ByteBuffer) threadLocal.get()).position() - 16; position < ((ByteBuffer) threadLocal.get()).position(); position++) {
                            bArr2[position - (((ByteBuffer) threadLocal.get()).position() - 16)] = ((ByteBuffer) threadLocal.get()).get(position);
                        }
                        j -= 16;
                    }
                    long j2 = j;
                    if (zziirVar instanceof zzasv) {
                    }
                    zzasv b2 = b(str);
                    ((ByteBuffer) threadLocal.get()).rewind();
                    b2.a(zziisVar, (ByteBuffer) threadLocal.get(), j2, this);
                    return b2;
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException(e);
                }
            }
        } while (x0 >= 0);
        zziisVar.h(zzc);
        throw new EOFException();
    }

    public abstract zzasv b(String str);
}
