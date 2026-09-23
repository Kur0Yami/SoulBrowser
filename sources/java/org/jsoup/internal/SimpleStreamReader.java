package org.jsoup.internal;

import java.io.InputStream;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;

/* loaded from: classes4.dex */
public class SimpleStreamReader extends Reader {

    /* renamed from: c, reason: collision with root package name */
    public final InputStream f22552c;
    public final CharsetDecoder f;
    public ByteBuffer g;

    public SimpleStreamReader(InputStream inputStream, Charset charset) {
        this.f22552c = inputStream;
        CharsetDecoder newDecoder = charset.newDecoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        this.f = newDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
        ByteBuffer wrap = ByteBuffer.wrap((byte[]) SimpleBufferedInput.j.borrow());
        this.g = wrap;
        wrap.flip();
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ByteBuffer byteBuffer = this.g;
        if (byteBuffer == null) {
            return;
        }
        SimpleBufferedInput.j.release(byteBuffer.array());
        this.g = null;
        this.f22552c.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0096, code lost:
    
        throw new java.io.IOException("Underlying input stream returned zero bytes");
     */
    @Override // java.io.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(char[] r7, int r8, int r9) {
        /*
            r6 = this;
            java.nio.ByteBuffer r0 = r6.g
            org.jsoup.helper.Validate.notNull(r0)
            java.nio.CharBuffer r7 = java.nio.CharBuffer.wrap(r7, r8, r9)
            int r8 = r7.position()
            if (r8 == 0) goto L13
            java.nio.CharBuffer r7 = r7.slice()
        L13:
            r8 = 0
            r9 = r8
        L15:
            java.nio.ByteBuffer r0 = r6.g
            java.nio.charset.CharsetDecoder r1 = r6.f
            java.nio.charset.CoderResult r0 = r1.decode(r0, r7, r9)
            boolean r2 = r0.isUnderflow()
            if (r2 == 0) goto L9d
            if (r9 != 0) goto La3
            boolean r0 = r7.hasRemaining()
            if (r0 == 0) goto La3
            int r0 = r7.position()
            java.io.InputStream r2 = r6.f22552c
            if (r0 <= 0) goto L3a
            int r0 = r2.available()
            if (r0 > 0) goto L3a
            goto La3
        L3a:
            java.nio.ByteBuffer r0 = r6.g
            r0.compact()
            java.nio.ByteBuffer r0 = r6.g     // Catch: java.lang.Throwable -> L8d
            int r0 = r0.position()     // Catch: java.lang.Throwable -> L8d
            java.nio.ByteBuffer r3 = r6.g     // Catch: java.lang.Throwable -> L8d
            int r3 = r3.limit()     // Catch: java.lang.Throwable -> L8d
            int r3 = r3 - r0
            java.nio.ByteBuffer r4 = r6.g     // Catch: java.lang.Throwable -> L8d
            byte[] r4 = r4.array()     // Catch: java.lang.Throwable -> L8d
            java.nio.ByteBuffer r5 = r6.g     // Catch: java.lang.Throwable -> L8d
            int r5 = r5.arrayOffset()     // Catch: java.lang.Throwable -> L8d
            int r5 = r5 + r0
            int r2 = r2.read(r4, r5, r3)     // Catch: java.lang.Throwable -> L8d
            if (r2 >= 0) goto L65
            java.nio.ByteBuffer r0 = r6.g
            r0.flip()
            goto L78
        L65:
            if (r2 == 0) goto L8f
            java.nio.ByteBuffer r3 = r6.g     // Catch: java.lang.Throwable -> L8d
            int r0 = r0 + r2
            r3.position(r0)     // Catch: java.lang.Throwable -> L8d
            java.nio.ByteBuffer r0 = r6.g
            r0.flip()
            java.nio.ByteBuffer r0 = r6.g
            int r2 = r0.remaining()
        L78:
            if (r2 >= 0) goto L15
            int r9 = r7.position()
            r0 = 1
            if (r9 != 0) goto L8b
            java.nio.ByteBuffer r9 = r6.g
            boolean r9 = r9.hasRemaining()
            if (r9 != 0) goto L8b
            r9 = r0
            goto La3
        L8b:
            r9 = r0
            goto L15
        L8d:
            r7 = move-exception
            goto L97
        L8f:
            java.io.IOException r7 = new java.io.IOException     // Catch: java.lang.Throwable -> L8d
            java.lang.String r8 = "Underlying input stream returned zero bytes"
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L8d
            throw r7     // Catch: java.lang.Throwable -> L8d
        L97:
            java.nio.ByteBuffer r8 = r6.g
            r8.flip()
            throw r7
        L9d:
            boolean r2 = r0.isOverflow()
            if (r2 == 0) goto Lb8
        La3:
            if (r9 == 0) goto La8
            r1.reset()
        La8:
            int r0 = r7.position()
            if (r0 != 0) goto Lb3
            if (r9 == 0) goto Lb2
            r7 = -1
            return r7
        Lb2:
            return r8
        Lb3:
            int r7 = r7.position()
            return r7
        Lb8:
            r0.throwException()
            goto L15
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.internal.SimpleStreamReader.read(char[], int, int):int");
    }
}
