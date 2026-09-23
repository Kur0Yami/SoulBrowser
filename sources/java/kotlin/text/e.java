package kotlin.text;

import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;

/* loaded from: classes4.dex */
public final /* synthetic */ class e implements Function1 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21558c;
    public final /* synthetic */ CharSequence f;

    public /* synthetic */ e(int i, CharSequence charSequence) {
        this.f21558c = i;
        this.f = charSequence;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String splitToSequence$lambda$1$StringsKt__StringsKt;
        String splitToSequence$lambda$0$StringsKt__StringsKt;
        switch (this.f21558c) {
            case 0:
                splitToSequence$lambda$1$StringsKt__StringsKt = StringsKt__StringsKt.splitToSequence$lambda$1$StringsKt__StringsKt(this.f, (IntRange) obj);
                return splitToSequence$lambda$1$StringsKt__StringsKt;
            default:
                splitToSequence$lambda$0$StringsKt__StringsKt = StringsKt__StringsKt.splitToSequence$lambda$0$StringsKt__StringsKt(this.f, (IntRange) obj);
                return splitToSequence$lambda$0$StringsKt__StringsKt;
        }
    }
}
