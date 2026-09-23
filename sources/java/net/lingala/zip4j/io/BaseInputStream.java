package net.lingala.zip4j.io;

import java.io.InputStream;

/* loaded from: classes4.dex */
public abstract class BaseInputStream extends InputStream {
    @Override // java.io.InputStream
    public int available() {
        return 0;
    }

    @Override // java.io.InputStream
    public int read() {
        return 0;
    }
}
