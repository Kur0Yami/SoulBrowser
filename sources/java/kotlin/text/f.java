package kotlin.text;

import java.util.List;
import kotlin.jvm.functions.Function2;

/* loaded from: classes4.dex */
public final /* synthetic */ class f implements Function2 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21559c;
    public final /* synthetic */ boolean f;
    public final /* synthetic */ Object g;

    public /* synthetic */ f(Object obj, boolean z, int i) {
        this.f21559c = i;
        this.g = obj;
        this.f = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f21559c) {
            case 0:
                int intValue = ((Integer) obj2).intValue();
                return StringsKt__StringsKt.d((char[]) this.g, this.f, (CharSequence) obj, intValue);
            default:
                int intValue2 = ((Integer) obj2).intValue();
                return StringsKt__StringsKt.f((List) this.g, this.f, (CharSequence) obj, intValue2);
        }
    }
}
