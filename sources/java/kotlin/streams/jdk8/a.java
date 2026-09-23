package kotlin.streams.jdk8;

import java.util.function.Supplier;
import kotlin.sequences.Sequence;
import org.jsoup.internal.StringUtil;

/* loaded from: classes4.dex */
public final /* synthetic */ class a implements Supplier {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21554c;
    public final /* synthetic */ Object f;

    public /* synthetic */ a(int i, Object obj) {
        this.f21554c = i;
        this.f = obj;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        int i = this.f21554c;
        Object obj = this.f;
        switch (i) {
            case 0:
                return StreamsKt.a((Sequence) obj);
            default:
                String[] strArr = StringUtil.f22554a;
                return new StringUtil.StringJoiner((String) obj);
        }
    }
}
