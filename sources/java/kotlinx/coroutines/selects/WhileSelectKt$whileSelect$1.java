package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 176)
@DebugMetadata(c = "kotlinx.coroutines.selects.WhileSelectKt", f = "WhileSelect.kt", i = {0}, l = {37}, m = "whileSelect", n = {"builder"}, s = {"L$0"})
@SourceDebugExtension({"SMAP\nWhileSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WhileSelect.kt\nkotlinx/coroutines/selects/WhileSelectKt$whileSelect$1\n*L\n1#1,29:1\n*E\n"})
/* loaded from: classes4.dex */
final class WhileSelectKt$whileSelect$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Function1 f21933c;
    public /* synthetic */ Object f;
    public int g;

    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0041 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x004e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0042 -> B:5:0x0046). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            r6.f = r7
            int r0 = r6.g
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 | r1
            int r0 = r0 - r1
            r6.g = r0
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.g
            r2 = 1
            if (r1 == 0) goto L25
            if (r1 != r2) goto L1d
            kotlin.jvm.functions.Function1 r1 = r6.f21933c
            kotlin.ResultKt.throwOnFailure(r7)
            r3 = r1
            r1 = r6
            goto L46
        L1d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L25:
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = 0
            r1 = r7
            r7 = r6
        L2b:
            kotlinx.coroutines.selects.SelectImplementation r3 = new kotlinx.coroutines.selects.SelectImplementation
            kotlin.coroutines.CoroutineContext r4 = r7.getF()
            r3.<init>(r4)
            r1.invoke(r3)
            r7.f21933c = r1
            r7.g = r2
            java.lang.Object r3 = r3.g(r7)
            if (r3 != r0) goto L42
            return r0
        L42:
            r5 = r1
            r1 = r7
            r7 = r3
            r3 = r5
        L46:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 != 0) goto L51
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L51:
            r7 = r1
            r1 = r3
            goto L2b
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.WhileSelectKt$whileSelect$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
