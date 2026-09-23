package androidx.privacysandbox.ads.adservices.measurement;

import android.adservices.measurement.DeletionRequest;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.view.InputEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.arch.core.executor.a;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import com.google.android.gms.ads.RequestConfiguration;
import j$.time.TimeConversions;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Api33Ext5Impl", "Companion", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class MeasurementManager {

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0097@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J%\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0097@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0007H\u0097@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0097@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0014H\u0097@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u0013\u0010\u0018\u001a\u00020\u0017H\u0097@ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager$Api33Ext5Impl;", "Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;", "Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;", "deletionRequest", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "a", "(Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroid/net/Uri;", "attributionSource", "Landroid/view/InputEvent;", "inputEvent", "c", "(Landroid/net/Uri;Landroid/view/InputEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "trigger", "d", "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;", "request", "e", "(Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;", "f", "(Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "b", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    @RequiresExtension
    @SourceDebugExtension({"SMAP\nMeasurementManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeasurementManager.kt\nandroidx/privacysandbox/ads/adservices/measurement/MeasurementManager$Api33Ext5Impl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,263:1\n314#2,11:264\n314#2,11:275\n314#2,11:286\n314#2,11:297\n314#2,11:308\n314#2,11:319\n*S KotlinDebug\n*F\n+ 1 MeasurementManager.kt\nandroidx/privacysandbox/ads/adservices/measurement/MeasurementManager$Api33Ext5Impl\n*L\n106#1:264,11\n131#1:275,11\n144#1:286,11\n155#1:297,11\n193#1:308,11\n226#1:319,11\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Api33Ext5Impl extends MeasurementManager {

        /* renamed from: a, reason: collision with root package name */
        public final android.adservices.measurement.MeasurementManager f1465a;

        public Api33Ext5Impl(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            Object systemService = context.getSystemService((Class<Object>) android.adservices.measurement.MeasurementManager.class);
            Intrinsics.checkNotNullExpressionValue(systemService, "context.getSystemService…:class.java\n            )");
            android.adservices.measurement.MeasurementManager mMeasurementManager = (android.adservices.measurement.MeasurementManager) systemService;
            Intrinsics.checkNotNullParameter(mMeasurementManager, "mMeasurementManager");
            this.f1465a = mMeasurementManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @DoNotInline
        @Nullable
        public Object a(@NotNull DeletionRequest deletionRequest, @NotNull Continuation<? super Unit> continuation) {
            DeletionRequest.Builder start;
            DeletionRequest.Builder end;
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.intercepted(continuation));
            cancellableContinuationImpl.r();
            android.adservices.measurement.MeasurementManager measurementManager = this.f1465a;
            DeletionRequest.Builder builder = new DeletionRequest.Builder();
            deletionRequest.getClass();
            start = builder.setDeletionMode(0).setMatchBehavior(0).setStart(TimeConversions.convert(null));
            end = start.setEnd(TimeConversions.convert(null));
            android.adservices.measurement.DeletionRequest build = end.setDomainUris(null).setOriginUris(null).build();
            Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …\n                .build()");
            measurementManager.deleteRegistrations(build, new a(1), OutcomeReceiverKt.a(cancellableContinuationImpl));
            Object q = cancellableContinuationImpl.q();
            if (q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            if (q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                return q;
            }
            return Unit.INSTANCE;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @RequiresPermission
        @DoNotInline
        @Nullable
        public Object b(@NotNull Continuation<? super Integer> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.intercepted(continuation));
            cancellableContinuationImpl.r();
            this.f1465a.getMeasurementApiStatus(new a(1), OutcomeReceiverKt.a(cancellableContinuationImpl));
            Object q = cancellableContinuationImpl.q();
            if (q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return q;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @RequiresPermission
        @DoNotInline
        @Nullable
        public Object c(@NotNull Uri uri, @Nullable InputEvent inputEvent, @NotNull Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.intercepted(continuation));
            cancellableContinuationImpl.r();
            this.f1465a.registerSource(uri, inputEvent, new a(1), OutcomeReceiverKt.a(cancellableContinuationImpl));
            Object q = cancellableContinuationImpl.q();
            if (q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            if (q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                return q;
            }
            return Unit.INSTANCE;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @RequiresPermission
        @DoNotInline
        @Nullable
        public Object d(@NotNull Uri uri, @NotNull Continuation<? super Unit> continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.intercepted(continuation));
            cancellableContinuationImpl.r();
            this.f1465a.registerTrigger(uri, new a(1), OutcomeReceiverKt.a(cancellableContinuationImpl));
            Object q = cancellableContinuationImpl.q();
            if (q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            if (q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                return q;
            }
            return Unit.INSTANCE;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @RequiresPermission
        @DoNotInline
        @Nullable
        public Object e(@NotNull WebSourceRegistrationRequest webSourceRegistrationRequest, @NotNull Continuation<? super Unit> continuation) {
            new CancellableContinuationImpl(1, IntrinsicsKt.intercepted(continuation)).r();
            webSourceRegistrationRequest.getClass();
            new ArrayList();
            throw null;
        }

        @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
        @RequiresPermission
        @DoNotInline
        @Nullable
        public Object f(@NotNull WebTriggerRegistrationRequest webTriggerRegistrationRequest, @NotNull Continuation<? super Unit> continuation) {
            new CancellableContinuationImpl(1, IntrinsicsKt.intercepted(continuation)).r();
            webTriggerRegistrationRequest.getClass();
            new ArrayList();
            throw null;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "MEASUREMENT_API_STATE_DISABLED", "I", "MEASUREMENT_API_STATE_ENABLED", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public static MeasurementManager a(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            Log.d("MeasurementManager", "AdServicesInfo.version=" + AdServicesInfo.a());
            if (AdServicesInfo.a() >= 5) {
                return new Api33Ext5Impl(context);
            }
            return null;
        }
    }

    public abstract Object a(DeletionRequest deletionRequest, Continuation continuation);

    public abstract Object b(Continuation continuation);

    public abstract Object c(Uri uri, InputEvent inputEvent, Continuation continuation);

    public abstract Object d(Uri uri, Continuation continuation);

    public abstract Object e(WebSourceRegistrationRequest webSourceRegistrationRequest, Continuation continuation);

    public abstract Object f(WebTriggerRegistrationRequest webTriggerRegistrationRequest, Continuation continuation);
}
