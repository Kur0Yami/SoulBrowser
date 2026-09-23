package okio;

import java.io.RandomAccessFile;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/JvmFileHandle;", "Lokio/FileHandle;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class JvmFileHandle extends FileHandle {
    public final RandomAccessFile h;

    public JvmFileHandle(RandomAccessFile randomAccessFile) {
        Intrinsics.checkNotNullParameter(randomAccessFile, "randomAccessFile");
        this.h = randomAccessFile;
    }

    @Override // okio.FileHandle
    public final synchronized void a() {
        this.h.close();
    }

    @Override // okio.FileHandle
    public final synchronized int b(long j, byte[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.h.seek(j);
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            int read = this.h.read(array, i, i2 - i3);
            if (read == -1) {
                if (i3 == 0) {
                    return -1;
                }
            } else {
                i3 += read;
            }
        }
        return i3;
    }

    @Override // okio.FileHandle
    public final synchronized long d() {
        return this.h.length();
    }
}
