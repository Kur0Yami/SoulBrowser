package androidx.datastore.core;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.internal.ContextScope;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Landroidx/datastore/core/SimpleActor;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "datastore-core"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class SimpleActor<T> {

    /* renamed from: a, reason: collision with root package name */
    public final ContextScope f948a;
    public final Function2 b;

    /* renamed from: c, reason: collision with root package name */
    public final BufferedChannel f949c;
    public final AtomicInteger d;

    public SimpleActor(ContextScope scope, final Function1 onComplete, final Function2 onUndeliveredElement, Function2 consumeMessage) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        Intrinsics.checkNotNullParameter(onUndeliveredElement, "onUndeliveredElement");
        Intrinsics.checkNotNullParameter(consumeMessage, "consumeMessage");
        this.f948a = scope;
        this.b = consumeMessage;
        this.f949c = ChannelKt.a(Integer.MAX_VALUE, null, 6);
        this.d = new AtomicInteger(0);
        Job job = (Job) scope.f21870c.get(Job.Key.f21595c);
        if (job == null) {
            return;
        }
        job.n(new Function1<Throwable, Unit>() { // from class: androidx.datastore.core.SimpleActor.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Unit invoke(Throwable th) {
                Unit unit;
                Throwable th2 = th;
                ((SingleProcessDataStore$actor$1) Function1.this).invoke(th2);
                BufferedChannel bufferedChannel = this.f949c;
                bufferedChannel.l(th2, false);
                do {
                    Object g = bufferedChannel.g();
                    unit = null;
                    if (g instanceof ChannelResult.Failed) {
                        g = null;
                    }
                    if (g != null) {
                        onUndeliveredElement.invoke(g, th2);
                        unit = Unit.INSTANCE;
                    }
                } while (unit != null);
                return Unit.INSTANCE;
            }
        });
    }

    public final void a(Object obj) {
        Object q = this.f949c.q(obj);
        if (q instanceof ChannelResult.Closed) {
            Throwable a2 = ChannelResult.a(q);
            if (a2 == null) {
                throw new IllegalStateException("Channel was closed normally");
            }
            throw a2;
        }
        if (!(q instanceof ChannelResult.Failed)) {
            if (this.d.getAndIncrement() == 0) {
                BuildersKt.b(this.f948a, new SimpleActor$offer$2(this, null), 3);
                return;
            }
            return;
        }
        throw new IllegalStateException("Check failed.");
    }
}
