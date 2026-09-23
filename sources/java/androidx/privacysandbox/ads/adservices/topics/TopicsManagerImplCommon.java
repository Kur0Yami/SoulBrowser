package androidx.privacysandbox.ads.adservices.topics;

import android.adservices.topics.GetTopicsRequest;
import android.annotation.SuppressLint;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0097@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007"}, d2 = {"Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;", "Landroidx/privacysandbox/ads/adservices/topics/TopicsManager;", "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;", "request", "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;", "b", "(Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"NewApi"})
@RequiresExtension
@RestrictTo
@SourceDebugExtension({"SMAP\nTopicsManagerImplCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicsManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,54:1\n314#2,11:55\n*S KotlinDebug\n*F\n+ 1 TopicsManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon\n*L\n28#1:55,11\n*E\n"})
/* loaded from: classes.dex */
public class TopicsManagerImplCommon extends TopicsManager {

    /* renamed from: a, reason: collision with root package name */
    public final android.adservices.topics.TopicsManager f1470a;

    public TopicsManagerImplCommon(android.adservices.topics.TopicsManager mTopicsManager) {
        Intrinsics.checkNotNullParameter(mTopicsManager, "mTopicsManager");
        this.f1470a = mTopicsManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0086 A[LOOP:0: B:11:0x0080->B:13:0x0086, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @androidx.annotation.RequiresPermission
    @androidx.annotation.DoNotInline
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object c(androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon r6, androidx.privacysandbox.ads.adservices.topics.GetTopicsRequest r7, kotlin.coroutines.Continuation<? super androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse> r8) {
        /*
            boolean r0 = r8 instanceof androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon$getTopics$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon$getTopics$1 r0 = (androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon$getTopics$1) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon$getTopics$1 r0 = new androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon$getTopics$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon r6 = r0.f1471c
            kotlin.ResultKt.throwOnFailure(r8)
            goto L69
        L2b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L33:
            kotlin.ResultKt.throwOnFailure(r8)
            android.adservices.topics.GetTopicsRequest r7 = r6.a(r7)
            r0.f1471c = r6
            r0.h = r3
            kotlinx.coroutines.CancellableContinuationImpl r8 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r0)
            r8.<init>(r3, r2)
            r8.r()
            android.adservices.topics.TopicsManager r2 = r6.f1470a
            androidx.arch.core.executor.a r3 = new androidx.arch.core.executor.a
            r4 = 1
            r3.<init>(r4)
            android.os.OutcomeReceiver r4 = androidx.core.os.OutcomeReceiverKt.a(r8)
            r2.getTopics(r7, r3, r4)
            java.lang.Object r8 = r8.q()
            java.lang.Object r7 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r8 != r7) goto L66
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)
        L66:
            if (r8 != r1) goto L69
            return r1
        L69:
            android.adservices.topics.GetTopicsResponse r8 = (android.adservices.topics.GetTopicsResponse) r8
            r6.getClass()
            java.lang.String r6 = "response"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r6)
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            java.util.List r7 = r8.getTopics()
            java.util.Iterator r7 = r7.iterator()
        L80:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto La1
            java.lang.Object r8 = r7.next()
            android.adservices.topics.Topic r8 = (android.adservices.topics.Topic) r8
            androidx.privacysandbox.ads.adservices.topics.Topic r0 = new androidx.privacysandbox.ads.adservices.topics.Topic
            long r1 = r8.getTaxonomyVersion()
            long r3 = r8.getModelVersion()
            int r5 = r8.getTopicId()
            r0.<init>(r1, r3, r5)
            r6.add(r0)
            goto L80
        La1:
            androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse r7 = new androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse
            r7.<init>(r6)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon.c(androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon, androidx.privacysandbox.ads.adservices.topics.GetTopicsRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public android.adservices.topics.GetTopicsRequest a(GetTopicsRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        android.adservices.topics.GetTopicsRequest build = new GetTopicsRequest.Builder().setAdsSdkName(request.f1466a).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n            .s…ame)\n            .build()");
        return build;
    }

    @RequiresPermission
    @DoNotInline
    @Nullable
    public Object b(@NotNull GetTopicsRequest getTopicsRequest, @NotNull Continuation<? super GetTopicsResponse> continuation) {
        return c(this, getTopicsRequest, continuation);
    }
}
