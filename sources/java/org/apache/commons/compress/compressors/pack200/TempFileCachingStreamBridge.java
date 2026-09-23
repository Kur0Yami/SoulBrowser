package org.apache.commons.compress.compressors.pack200;

import java.io.FileInputStream;

/* loaded from: classes4.dex */
class TempFileCachingStreamBridge extends StreamBridge {

    /* renamed from: org.apache.commons.compress.compressors.pack200.TempFileCachingStreamBridge$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    class AnonymousClass1 extends FileInputStream {
        @Override // java.io.FileInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            super.close();
            throw null;
        }
    }
}
