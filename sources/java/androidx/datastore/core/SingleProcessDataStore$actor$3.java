package androidx.datastore.core;

import androidx.datastore.core.SingleProcessDataStore;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_T, "msg", "Landroidx/datastore/core/SingleProcessDataStore$Message;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.SingleProcessDataStore$actor$3", f = "SingleProcessDataStore.kt", i = {}, l = {239, 242}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class SingleProcessDataStore$actor$3 extends SuspendLambda implements Function2<SingleProcessDataStore.Message<Object>, Continuation<? super Unit>, Object> {

    /* renamed from: c, reason: collision with root package name */
    public int f963c;
    public /* synthetic */ Object f;
    public final /* synthetic */ SingleProcessDataStore g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$actor$3(SingleProcessDataStore singleProcessDataStore, Continuation continuation) {
        super(2, continuation);
        this.g = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        SingleProcessDataStore$actor$3 singleProcessDataStore$actor$3 = new SingleProcessDataStore$actor$3(this.g, continuation);
        singleProcessDataStore$actor$3.f = obj;
        return singleProcessDataStore$actor$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SingleProcessDataStore.Message<Object> message, Continuation<? super Unit> continuation) {
        return ((SingleProcessDataStore$actor$3) create(message, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006c, code lost:
    
        if (r6 == r0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0085, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0083, code lost:
    
        if (androidx.datastore.core.SingleProcessDataStore.b(r4, (androidx.datastore.core.SingleProcessDataStore.Message.Update) r6, r5) == r0) goto L40;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.f963c
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1c
            if (r1 == r3) goto L17
            if (r1 != r2) goto Lf
            goto L17
        Lf:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L17:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L86
        L1c:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.Object r6 = r5.f
            androidx.datastore.core.SingleProcessDataStore$Message r6 = (androidx.datastore.core.SingleProcessDataStore.Message) r6
            boolean r1 = r6 instanceof androidx.datastore.core.SingleProcessDataStore.Message.Read
            androidx.datastore.core.SingleProcessDataStore r4 = r5.g
            if (r1 == 0) goto L77
            androidx.datastore.core.SingleProcessDataStore$Message$Read r6 = (androidx.datastore.core.SingleProcessDataStore.Message.Read) r6
            r5.f963c = r3
            kotlinx.coroutines.flow.MutableStateFlow r1 = r4.f
            java.lang.Object r1 = r1.getValue()
            androidx.datastore.core.State r1 = (androidx.datastore.core.State) r1
            boolean r2 = r1 instanceof androidx.datastore.core.Data
            if (r2 == 0) goto L3a
            goto L6a
        L3a:
            boolean r2 = r1 instanceof androidx.datastore.core.ReadException
            if (r2 == 0) goto L50
            androidx.datastore.core.State r6 = r6.f957a
            if (r1 != r6) goto L6a
            java.lang.Object r6 = r4.f(r5)
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r6 != r1) goto L4d
            goto L6c
        L4d:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            goto L6c
        L50:
            androidx.datastore.core.UnInitialized r6 = androidx.datastore.core.UnInitialized.f979a
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r6)
            if (r6 == 0) goto L66
            java.lang.Object r6 = r4.f(r5)
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r6 != r1) goto L63
            goto L6c
        L63:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            goto L6c
        L66:
            boolean r6 = r1 instanceof androidx.datastore.core.Final
            if (r6 != 0) goto L6f
        L6a:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
        L6c:
            if (r6 != r0) goto L86
            goto L85
        L6f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "Can't read in final state."
            r6.<init>(r0)
            throw r6
        L77:
            boolean r1 = r6 instanceof androidx.datastore.core.SingleProcessDataStore.Message.Update
            if (r1 == 0) goto L86
            androidx.datastore.core.SingleProcessDataStore$Message$Update r6 = (androidx.datastore.core.SingleProcessDataStore.Message.Update) r6
            r5.f963c = r2
            java.lang.Object r6 = androidx.datastore.core.SingleProcessDataStore.b(r4, r6, r5)
            if (r6 != r0) goto L86
        L85:
            return r0
        L86:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore$actor$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
