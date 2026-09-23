package androidx.privacysandbox.ads.adservices.adid;

import android.annotation.SuppressLint;
import androidx.annotation.RequiresExtension;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Api33Ext4Impl", "Companion", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class AdIdManager {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\u00020\u0002H\u0097@ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0005"}, d2 = {"Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Api33Ext4Impl;", "Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;", "Landroidx/privacysandbox/ads/adservices/adid/AdId;", "a", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SuppressLint({"ClassVerificationFailure", "NewApi"})
    @RequiresExtension
    @SourceDebugExtension({"SMAP\nAdIdManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdIdManager.kt\nandroidx/privacysandbox/ads/adservices/adid/AdIdManager$Api33Ext4Impl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,98:1\n314#2,11:99\n*S KotlinDebug\n*F\n+ 1 AdIdManager.kt\nandroidx/privacysandbox/ads/adservices/adid/AdIdManager$Api33Ext4Impl\n*L\n67#1:99,11\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Api33Ext4Impl extends AdIdManager {
        /* JADX WARN: Removed duplicated region for block: B:14:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
        @androidx.annotation.RequiresPermission
        @androidx.annotation.DoNotInline
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object a(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super androidx.privacysandbox.ads.adservices.adid.AdId> r5) {
            /*
                r4 = this;
                boolean r0 = r5 instanceof androidx.privacysandbox.ads.adservices.adid.AdIdManager$Api33Ext4Impl$getAdId$1
                if (r0 == 0) goto L13
                r0 = r5
                androidx.privacysandbox.ads.adservices.adid.AdIdManager$Api33Ext4Impl$getAdId$1 r0 = (androidx.privacysandbox.ads.adservices.adid.AdIdManager$Api33Ext4Impl$getAdId$1) r0
                int r1 = r0.h
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.h = r1
                goto L18
            L13:
                androidx.privacysandbox.ads.adservices.adid.AdIdManager$Api33Ext4Impl$getAdId$1 r0 = new androidx.privacysandbox.ads.adservices.adid.AdIdManager$Api33Ext4Impl$getAdId$1
                r0.<init>(r4, r5)
            L18:
                java.lang.Object r5 = r0.f
                kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r0.h
                r2 = 1
                if (r1 == 0) goto L4b
                if (r1 != r2) goto L43
                java.lang.Object r0 = r0.f1443c
                androidx.privacysandbox.ads.adservices.adid.AdIdManager$Api33Ext4Impl r0 = (androidx.privacysandbox.ads.adservices.adid.AdIdManager.Api33Ext4Impl) r0
                kotlin.ResultKt.throwOnFailure(r5)
                android.adservices.adid.AdId r5 = (android.adservices.adid.AdId) r5
                r0.getClass()
                androidx.privacysandbox.ads.adservices.adid.AdId r0 = new androidx.privacysandbox.ads.adservices.adid.AdId
                java.lang.String r1 = r5.getAdId()
                java.lang.String r2 = "response.adId"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
                boolean r5 = r5.isLimitAdTrackingEnabled()
                r0.<init>(r1, r5)
                return r0
            L43:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r0)
                throw r5
            L4b:
                kotlin.ResultKt.throwOnFailure(r5)
                r0.f1443c = r4
                r0.h = r2
                kotlinx.coroutines.CancellableContinuationImpl r5 = new kotlinx.coroutines.CancellableContinuationImpl
                kotlin.coroutines.Continuation r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r0)
                r5.<init>(r2, r0)
                r5.r()
                androidx.core.os.OutcomeReceiverKt.a(r5)
                r5 = 0
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.privacysandbox.ads.adservices.adid.AdIdManager.Api33Ext4Impl.a(kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }
}
