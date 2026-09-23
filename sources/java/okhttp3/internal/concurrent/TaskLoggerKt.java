package okhttp3.internal.concurrent;

import android.support.v4.media.a;
import java.util.Arrays;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.time.DurationKt;
import kotlin.time.InstantKt;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class TaskLoggerKt {
    public static final void a(Logger logger, Task task, TaskQueue taskQueue, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(taskQueue.b);
        sb.append(' ');
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        sb.append(format);
        sb.append(": ");
        sb.append(task.f22082a);
        logger.fine(sb.toString());
    }

    public static final String b(long j) {
        String o;
        if (j <= -999500000) {
            o = a.o(new StringBuilder(), (j - 500000000) / InstantKt.NANOS_PER_SECOND, " s ");
        } else if (j <= -999500) {
            o = a.o(new StringBuilder(), (j - 500000) / DurationKt.NANOS_IN_MILLIS, " ms");
        } else if (j <= 0) {
            o = a.o(new StringBuilder(), (j - 500) / 1000, " µs");
        } else if (j < 999500) {
            o = a.o(new StringBuilder(), (j + 500) / 1000, " µs");
        } else if (j < 999500000) {
            o = a.o(new StringBuilder(), (j + 500000) / DurationKt.NANOS_IN_MILLIS, " ms");
        } else {
            o = a.o(new StringBuilder(), (j + 500000000) / InstantKt.NANOS_PER_SECOND, " s ");
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%6s", Arrays.copyOf(new Object[]{o}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }
}
