package okio.internal;

import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okio"}, k = 2, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class _JavaIoKt {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f22234a = Logger.getLogger("okio.Okio");

    public static final boolean a(AssertionError assertionError) {
        boolean z;
        Intrinsics.checkNotNullParameter(assertionError, "<this>");
        if (assertionError.getCause() != null) {
            String message = assertionError.getMessage();
            if (message != null) {
                z = StringsKt__StringsKt.contains$default(message, "getsockname failed", false, 2, (Object) null);
            } else {
                z = false;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }
}
