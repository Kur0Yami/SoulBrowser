package androidx.privacysandbox.ads.adservices.java.internal;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.JobSupport;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ads-adservices-java_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CoroutineAdapterKt {
    public static ListenableFuture a(final Deferred deferred) {
        Intrinsics.checkNotNullParameter(deferred, "<this>");
        ListenableFuture a2 = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver() { // from class: androidx.privacysandbox.ads.adservices.java.internal.a
            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object a(final CallbackToFutureAdapter.Completer completer) {
                final Deferred this_asListenableFuture = Deferred.this;
                Intrinsics.checkNotNullParameter(this_asListenableFuture, "$this_asListenableFuture");
                Intrinsics.checkNotNullParameter(completer, "completer");
                ((JobSupport) this_asListenableFuture).n(new Function1<Throwable, Unit>() { // from class: androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt$asListenableFuture$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Throwable th) {
                        Throwable th2 = th;
                        CallbackToFutureAdapter.Completer completer2 = CallbackToFutureAdapter.Completer.this;
                        if (th2 != null) {
                            if (th2 instanceof CancellationException) {
                                completer2.b();
                            } else {
                                completer2.c(th2);
                            }
                        } else {
                            completer2.a(this_asListenableFuture.b());
                        }
                        return Unit.INSTANCE;
                    }
                });
                return "Deferred.asListenableFuture";
            }
        });
        Intrinsics.checkNotNullExpressionValue(a2, "getFuture { completer ->…        }\n    }\n    tag\n}");
        return a2;
    }
}
