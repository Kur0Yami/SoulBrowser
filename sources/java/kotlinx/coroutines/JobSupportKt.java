package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.internal.Symbol;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class JobSupportKt {

    /* renamed from: a, reason: collision with root package name */
    public static final Symbol f21600a = new Symbol("COMPLETING_ALREADY");
    public static final Symbol b = new Symbol("COMPLETING_WAITING_CHILDREN");

    /* renamed from: c, reason: collision with root package name */
    public static final Symbol f21601c = new Symbol("COMPLETING_RETRY");
    public static final Symbol d = new Symbol("TOO_LATE_TO_CANCEL");
    public static final Symbol e = new Symbol("SEALED");
    public static final Empty f = new Empty(false);
    public static final Empty g = new Empty(true);

    public static final Object a(Object obj) {
        IncompleteStateBox incompleteStateBox;
        Incomplete incomplete;
        if (obj instanceof IncompleteStateBox) {
            incompleteStateBox = (IncompleteStateBox) obj;
        } else {
            incompleteStateBox = null;
        }
        if (incompleteStateBox != null && (incomplete = incompleteStateBox.f21593a) != null) {
            return incomplete;
        }
        return obj;
    }
}
