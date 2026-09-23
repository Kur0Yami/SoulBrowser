package androidx.fragment.app;

import android.util.Log;
import java.io.Writer;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
final class LogWriter extends Writer {
    public final StringBuilder f = new StringBuilder(Uuid.SIZE_BITS);

    /* renamed from: c, reason: collision with root package name */
    public final String f1143c = "FragmentManager";

    public final void a() {
        StringBuilder sb = this.f;
        if (sb.length() > 0) {
            Log.d(this.f1143c, sb.toString());
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        a();
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c2 = cArr[i + i3];
            if (c2 == '\n') {
                a();
            } else {
                this.f.append(c2);
            }
        }
    }
}
