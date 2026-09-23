package kotlin.text;

import kotlin.jvm.functions.Function1;

/* loaded from: classes4.dex */
public final /* synthetic */ class c implements Function1 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21556c;
    public final /* synthetic */ Object f;

    public /* synthetic */ c(int i, Object obj) {
        this.f21556c = i;
        this.f = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String prependIndent$lambda$0$StringsKt__IndentKt;
        String indentFunction$lambda$1$StringsKt__IndentKt;
        switch (this.f21556c) {
            case 0:
                prependIndent$lambda$0$StringsKt__IndentKt = StringsKt__IndentKt.prependIndent$lambda$0$StringsKt__IndentKt((String) this.f, (String) obj);
                return prependIndent$lambda$0$StringsKt__IndentKt;
            case 1:
                indentFunction$lambda$1$StringsKt__IndentKt = StringsKt__IndentKt.getIndentFunction$lambda$1$StringsKt__IndentKt((String) this.f, (String) obj);
                return indentFunction$lambda$1$StringsKt__IndentKt;
            default:
                return MatcherMatchResult$groups$1.c((MatcherMatchResult$groups$1) this.f, ((Integer) obj).intValue());
        }
    }
}
