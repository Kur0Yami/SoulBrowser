package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.selects.SelectInstance;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/channels/BroadcastChannelImpl;", "E", "Lkotlinx/coroutines/channels/BufferedChannel;", "Lkotlinx/coroutines/channels/BroadcastChannel;", "SubscriberBuffered", "SubscriberConflated", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,411:1\n11#2:412\n11#2:413\n11#2:417\n11#2:420\n11#2:426\n11#2:427\n11#2:433\n11#2:436\n11#2:437\n11#2:438\n766#3:414\n857#3,2:415\n1855#3,2:418\n1747#3,3:421\n1855#3,2:424\n1855#3,2:428\n766#3:430\n857#3,2:431\n1855#3,2:434\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl\n*L\n163#1:412\n185#1:413\n210#1:417\n234#1:420\n276#1:426\n328#1:427\n340#1:433\n352#1:436\n379#1:437\n391#1:438\n186#1:414\n186#1:415,2\n223#1:418,2\n239#1:421,3\n248#1:424,2\n330#1:428,2\n335#1:430\n335#1:431,2\n343#1:434,2\n*E\n"})
/* loaded from: classes4.dex */
public final class BroadcastChannelImpl<E> extends BufferedChannel<E> implements BroadcastChannel<E> {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered;", "Lkotlinx/coroutines/channels/BufferedChannel;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n*L\n1#1,411:1\n11#2:412\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered\n*L\n359#1:412\n*E\n"})
    /* loaded from: classes4.dex */
    public final class SubscriberBuffered extends BufferedChannel<E> {
        @Override // kotlinx.coroutines.channels.BufferedChannel
        public final void k(CancellationException cancellationException) {
            throw null;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberConflated;", "Lkotlinx/coroutines/channels/ConflatedBufferedChannel;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public final class SubscriberConflated extends ConflatedBufferedChannel<E> {
        @Override // kotlinx.coroutines.channels.BufferedChannel
        public final void k(CancellationException cancellationException) {
            throw null;
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public final void I(SelectInstance selectInstance, Object obj) {
        throw null;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public final void k(CancellationException cancellationException) {
        throw null;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public final Object q(Object obj) {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object r(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
        /*
            r4 = this;
            boolean r5 = r6 instanceof kotlinx.coroutines.channels.BroadcastChannelImpl$send$1
            if (r5 == 0) goto L13
            r5 = r6
            kotlinx.coroutines.channels.BroadcastChannelImpl$send$1 r5 = (kotlinx.coroutines.channels.BroadcastChannelImpl$send$1) r5
            int r0 = r5.h
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r5.h = r0
            goto L18
        L13:
            kotlinx.coroutines.channels.BroadcastChannelImpl$send$1 r5 = new kotlinx.coroutines.channels.BroadcastChannelImpl$send$1
            r5.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r5.f
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.h
            r2 = 0
            if (r1 == 0) goto L56
            r3 = 1
            if (r1 != r3) goto L4e
            java.util.Iterator r1 = r5.f21614c
            kotlin.ResultKt.throwOnFailure(r6)
        L2b:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L4d
            boolean r6 = r1.hasNext()
            if (r6 == 0) goto L4a
            java.lang.Object r6 = r1.next()
            kotlinx.coroutines.channels.BufferedChannel r6 = (kotlinx.coroutines.channels.BufferedChannel) r6
            r5.f21614c = r1
            r5.h = r3
            java.lang.Object r6 = r6.K(r5)
            if (r6 != r0) goto L2b
            return r0
        L4a:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L4d:
            throw r2
        L4e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L56:
            kotlin.ResultKt.throwOnFailure(r6)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BroadcastChannelImpl.r(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public final boolean s() {
        throw null;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public final String toString() {
        throw null;
    }
}
