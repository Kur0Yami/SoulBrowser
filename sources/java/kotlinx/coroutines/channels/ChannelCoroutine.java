package kotlinx.coroutines.channels;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.selects.SelectClause1;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/channels/ChannelCoroutine;", "E", "Lkotlinx/coroutines/AbstractCoroutine;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlinx/coroutines/channels/Channel;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nChannelCoroutine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,39:1\n703#2,2:40\n703#2,2:42\n703#2,2:44\n*S KotlinDebug\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n*L\n17#1:40,2\n23#1:42,2\n30#1:44,2\n*E\n"})
/* loaded from: classes4.dex */
public class ChannelCoroutine<E> extends AbstractCoroutine<Unit> implements Channel<E> {
    public final BufferedChannel h;

    public ChannelCoroutine(CoroutineContext coroutineContext, BufferedChannel bufferedChannel) {
        super(coroutineContext, true);
        this.h = bufferedChannel;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void D(CancellationException cancellationException) {
        CancellationException h0 = JobSupport.h0(this, cancellationException);
        this.h.k(h0);
        C(h0);
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    public final void a(CancellationException cancellationException) {
        if (G()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(H(), null, this);
        }
        D(cancellationException);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final SelectClause1 c() {
        return this.h.c();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final SelectClause1 e() {
        return this.h.e();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final Object g() {
        return this.h.g();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final ChannelIterator iterator() {
        BufferedChannel bufferedChannel = this.h;
        bufferedChannel.getClass();
        return new BufferedChannel.BufferedChannelIterator();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final Object o(ContinuationImpl continuationImpl) {
        BufferedChannel bufferedChannel = this.h;
        bufferedChannel.getClass();
        Object G = BufferedChannel.G(bufferedChannel, continuationImpl);
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return G;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final void p(Function1 function1) {
        this.h.p(function1);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public Object q(Object obj) {
        return this.h.q(obj);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public Object r(Object obj, Continuation continuation) {
        return this.h.r(obj, continuation);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final boolean s() {
        return this.h.s();
    }
}
