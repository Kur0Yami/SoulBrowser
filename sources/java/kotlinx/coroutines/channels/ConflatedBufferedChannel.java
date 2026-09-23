package kotlinx.coroutines.channels;

import android.support.v4.media.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.selects.SelectInstance;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/channels/ConflatedBufferedChannel;", "E", "Lkotlinx/coroutines/channels/BufferedChannel;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConflatedBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 5 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n*L\n1#1,115:1\n556#2,5:116\n522#2,6:121\n522#2,6:208\n556#2,5:214\n244#3:127\n269#3,10:128\n280#3,68:139\n3046#4:138\n269#5:207\n*S KotlinDebug\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n*L\n37#1:116,5\n49#1:121,6\n102#1:208,6\n105#1:214,5\n76#1:127\n76#1:128,10\n76#1:139,68\n76#1:138\n76#1:207\n*E\n"})
/* loaded from: classes4.dex */
public class ConflatedBufferedChannel<E> extends BufferedChannel<E> {
    public final BufferOverflow p;

    public ConflatedBufferedChannel(int i, BufferOverflow bufferOverflow) {
        super(i);
        this.p = bufferOverflow;
        if (bufferOverflow != BufferOverflow.f21616c) {
            if (i >= 1) {
            } else {
                throw new IllegalArgumentException(a.f(i, "Buffered channel capacity must be at least 1, but ", " was specified").toString());
            }
        } else {
            throw new IllegalArgumentException(("This implementation does not support suspension for senders, use " + Reflection.getOrCreateKotlinClass(BufferedChannel.class).getSimpleName() + " instead").toString());
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public final boolean C() {
        if (this.p == BufferOverflow.f) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public final void I(SelectInstance selectInstance, Object obj) {
        Object Q = Q(obj, false);
        if (!(Q instanceof ChannelResult.Failed)) {
            selectInstance.d(Unit.INSTANCE);
        } else {
            if (Q instanceof ChannelResult.Closed) {
                selectInstance.d(BufferedChannelKt.l);
                return;
            }
            throw new IllegalStateException("unreachable");
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public final Object K(Continuation continuation) {
        Object Q = Q(null, true);
        if (!(Q instanceof ChannelResult.Failed)) {
            return Boxing.boxBoolean(true);
        }
        return Boxing.boxBoolean(false);
    }

    public final Object Q(Object obj, boolean z) {
        ChannelSegment channelSegment;
        ConflatedBufferedChannel<E> conflatedBufferedChannel;
        Object obj2;
        Waiter waiter;
        if (this.p == BufferOverflow.g) {
            Object q = super.q(obj);
            if ((q instanceof ChannelResult.Failed) && !(q instanceof ChannelResult.Closed)) {
                return Unit.INSTANCE;
            }
            return q;
        }
        Object obj3 = BufferedChannelKt.d;
        ChannelSegment channelSegment2 = (ChannelSegment) BufferedChannel.k.get(this);
        while (true) {
            long andIncrement = BufferedChannel.g.getAndIncrement(this);
            long j = andIncrement & 1152921504606846975L;
            boolean A = A(andIncrement, false);
            int i = BufferedChannelKt.b;
            long j2 = i;
            long j3 = j / j2;
            int i2 = (int) (j % j2);
            if (channelSegment2.g != j3) {
                ChannelSegment b = BufferedChannel.b(this, j3, channelSegment2);
                if (b == null) {
                    if (A) {
                        return new ChannelResult.Closed(x());
                    }
                } else {
                    channelSegment = b;
                    obj2 = obj;
                    conflatedBufferedChannel = this;
                }
            } else {
                channelSegment = channelSegment2;
                conflatedBufferedChannel = this;
                obj2 = obj;
            }
            int i3 = BufferedChannel.i(conflatedBufferedChannel, channelSegment, i2, obj2, j, obj3, A);
            channelSegment2 = channelSegment;
            if (i3 != 0) {
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            if (i3 != 4) {
                                if (i3 == 5) {
                                    channelSegment2.a();
                                }
                                obj = obj2;
                            } else {
                                if (j < BufferedChannel.h.get(this)) {
                                    channelSegment2.a();
                                }
                                return new ChannelResult.Closed(x());
                            }
                        } else {
                            throw new IllegalStateException("unexpected");
                        }
                    } else {
                        if (A) {
                            channelSegment2.h();
                            return new ChannelResult.Closed(x());
                        }
                        if (obj3 instanceof Waiter) {
                            waiter = (Waiter) obj3;
                        } else {
                            waiter = null;
                        }
                        if (waiter != null) {
                            waiter.b(channelSegment2, i2 + i);
                        }
                        n((channelSegment2.g * j2) + i2);
                        return Unit.INSTANCE;
                    }
                } else {
                    return Unit.INSTANCE;
                }
            } else {
                channelSegment2.a();
                return Unit.INSTANCE;
            }
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public final Object q(Object obj) {
        return Q(obj, false);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public final Object r(Object obj, Continuation continuation) {
        if (!(Q(obj, true) instanceof ChannelResult.Closed)) {
            return Unit.INSTANCE;
        }
        throw x();
    }
}
