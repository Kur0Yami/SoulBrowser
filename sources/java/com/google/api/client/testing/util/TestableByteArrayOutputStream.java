package com.google.api.client.testing.util;

import com.google.api.client.util.Beta;
import java.io.ByteArrayOutputStream;

@Beta
/* loaded from: classes3.dex */
public class TestableByteArrayOutputStream extends ByteArrayOutputStream {
    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
