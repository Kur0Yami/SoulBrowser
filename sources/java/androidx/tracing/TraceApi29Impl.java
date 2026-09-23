package androidx.tracing;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

@RequiresApi
/* loaded from: classes.dex */
final class TraceApi29Impl {
    @DoNotInline
    public static boolean a() {
        return android.os.Trace.isEnabled();
    }
}
