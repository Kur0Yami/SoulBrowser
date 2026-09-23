package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFastServiceLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FastServiceLoader.kt\nkotlinx/coroutines/internal/FastServiceLoaderKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,157:1\n1#2:158\n*E\n"})
/* loaded from: classes4.dex */
public final class FastServiceLoaderKt {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f21881a = 0;

    static {
        Object m30constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            m30constructorimpl = Result.m30constructorimpl(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m30constructorimpl = Result.m30constructorimpl(ResultKt.createFailure(th));
        }
        Result.m37isSuccessimpl(m30constructorimpl);
    }
}
