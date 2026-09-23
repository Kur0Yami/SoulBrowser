package com.mycompany.app.script;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PushbackInputStream;
import java.io.Reader;

/* loaded from: classes3.dex */
public class UnicodeReader extends Reader {

    /* renamed from: c, reason: collision with root package name */
    public final InputStreamReader f17552c;

    public UnicodeReader(InputStream inputStream, String str) {
        String str2;
        int i;
        byte[] bArr = new byte[4];
        PushbackInputStream pushbackInputStream = new PushbackInputStream(inputStream, 4);
        int read = pushbackInputStream.read(bArr, 0, 4);
        byte b = bArr[0];
        if (b == -17 && bArr[1] == -69 && bArr[2] == -65) {
            i = read - 3;
            str2 = "UTF-8";
        } else if (b == -2 && bArr[1] == -1) {
            i = read - 2;
            str2 = "UTF-16BE";
        } else if (b == -1 && bArr[1] == -2) {
            i = read - 2;
            str2 = "UTF-16LE";
        } else if (b == 0 && bArr[1] == 0 && bArr[2] == -2 && bArr[3] == -1) {
            i = read - 4;
            str2 = "UTF-32BE";
        } else if (b == -1 && bArr[1] == -2 && bArr[2] == 0 && bArr[3] == 0) {
            i = read - 4;
            str2 = "UTF-32LE";
        } else {
            str2 = str;
            i = read;
        }
        if (i > 0) {
            pushbackInputStream.unread(bArr, read - i, i);
        } else if (i < -1) {
            pushbackInputStream.unread(bArr, 0, 0);
        }
        if (str2 == null) {
            this.f17552c = new InputStreamReader(pushbackInputStream);
        } else {
            this.f17552c = new InputStreamReader(pushbackInputStream, str2);
        }
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f17552c.close();
    }

    @Override // java.io.Reader
    public final int read(char[] cArr, int i, int i2) {
        return this.f17552c.read(cArr, i, i2);
    }
}
