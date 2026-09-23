package androidx.privacysandbox.ads.adservices.java.topics;

import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsRequest;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse;
import androidx.privacysandbox.ads.adservices.topics.TopicsManagerApi33Ext4Impl;
import androidx.privacysandbox.ads.adservices.topics.TopicsManagerApi33Ext5Impl;
import androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Api33Ext4JavaImpl", "Companion", "ads-adservices-java_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class TopicsManagerFutures {

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001J\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures$Api33Ext4JavaImpl;", "Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures;", "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;", "request", "Lcom/google/common/util/concurrent/ListenableFuture;", "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;", "b", "(Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;)Lcom/google/common/util/concurrent/ListenableFuture;", "ads-adservices-java_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Api33Ext4JavaImpl extends TopicsManagerFutures {

        /* renamed from: a, reason: collision with root package name */
        public final TopicsManagerImplCommon f1463a;

        public Api33Ext4JavaImpl(TopicsManagerImplCommon mTopicsManager) {
            Intrinsics.checkNotNullParameter(mTopicsManager, "mTopicsManager");
            this.f1463a = mTopicsManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.java.topics.TopicsManagerFutures
        @RequiresPermission
        @DoNotInline
        @NotNull
        public ListenableFuture<GetTopicsResponse> b(@NotNull GetTopicsRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            DefaultScheduler defaultScheduler = Dispatchers.f21584a;
            return CoroutineAdapterKt.a(BuildersKt.a(CoroutineScopeKt.a(MainDispatcherLoader.f21890a), new TopicsManagerFutures$Api33Ext4JavaImpl$getTopicsAsync$1(this, request, null)));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "ads-adservices-java_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nTopicsManagerFutures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicsManagerFutures.kt\nandroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n1#2:74\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    public static final TopicsManagerFutures a(Context context) {
        TopicsManagerImplCommon topicsManagerImplCommon;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(context, "context");
        if (AdServicesInfo.a() >= 5) {
            topicsManagerImplCommon = new TopicsManagerApi33Ext5Impl(context);
        } else if (AdServicesInfo.a() == 4) {
            topicsManagerImplCommon = new TopicsManagerApi33Ext4Impl(context);
        } else {
            topicsManagerImplCommon = null;
        }
        if (topicsManagerImplCommon == null) {
            return null;
        }
        return new Api33Ext4JavaImpl(topicsManagerImplCommon);
    }

    public abstract ListenableFuture b(GetTopicsRequest getTopicsRequest);
}
