package kotlin.text;

import kotlin.jvm.functions.Function1;

/* loaded from: classes4.dex */
public final /* synthetic */ class d implements Function1 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21557c;

    public /* synthetic */ d(int i) {
        this.f21557c = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f21557c) {
            case 0:
                return StringsKt__IndentKt.a((String) obj);
            case 1:
                return StringsKt___StringsKt.l((CharSequence) obj);
            case 2:
                return StringsKt___StringsKt.h((CharSequence) obj);
            default:
                return StringsKt___StringsKt.i((CharSequence) obj);
        }
    }
}
