package kotlinx.coroutines.channels;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.channels.SendChannel;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0012\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0012\u0004\u0012\u00028\u00000\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/channels/BroadcastCoroutine;", "E", "Lkotlinx/coroutines/AbstractCoroutine;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlinx/coroutines/channels/ProducerScope;", "Lkotlinx/coroutines/channels/BroadcastChannel;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBroadcast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,200:1\n703#2,2:201\n703#2,2:203\n*S KotlinDebug\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n*L\n149#1:201,2\n155#1:203,2\n*E\n"})
/* loaded from: classes4.dex */
class BroadcastCoroutine<E> extends AbstractCoroutine<Unit> implements ProducerScope<E>, BroadcastChannel<E> {
    @Override // kotlinx.coroutines.JobSupport
    public final void D(CancellationException cancellationException) {
        JobSupport.h0(this, cancellationException);
        throw null;
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    public final void a(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(H(), null, this);
        }
        JobSupport.h0(this, cancellationException);
        throw null;
    }

    @Override // kotlinx.coroutines.channels.ProducerScope
    public final SendChannel h() {
        return this;
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    public final void j0(Throwable th, boolean z) {
        throw null;
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    public final void k0(Object obj) {
        SendChannel.DefaultImpls.a(null);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final void p(Function1 function1) {
        throw null;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final Object q(Object obj) {
        throw null;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final Object r(Object obj, Continuation continuation) {
        throw null;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final boolean s() {
        throw null;
    }
}
