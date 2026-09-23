package kotlinx.coroutines.channels;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.Segment;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000\u0002R\u0013\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00038\u0002X\u0082\u0004¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/channels/ChannelSegment;", "E", "Lkotlinx/coroutines/internal/Segment;", "Lkotlinx/atomicfu/AtomicArray;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "data", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/ChannelSegment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3063:1\n1#2:3064\n*E\n"})
/* loaded from: classes4.dex */
public final class ChannelSegment<E> extends Segment<ChannelSegment<E>> {
    public final BufferedChannel i;
    public final /* synthetic */ AtomicReferenceArray j;

    public ChannelSegment(long j, ChannelSegment channelSegment, BufferedChannel bufferedChannel, int i) {
        super(j, channelSegment, i);
        this.i = bufferedChannel;
        this.j = new AtomicReferenceArray(BufferedChannelKt.b * 2);
    }

    @Override // kotlinx.coroutines.internal.Segment
    public final int f() {
        return BufferedChannelKt.b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0059, code lost:
    
        m(r5, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x005c, code lost:
    
        if (r0 == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x005e, code lost:
    
        kotlin.jvm.internal.Intrinsics.checkNotNull(r2);
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0064, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:?, code lost:
    
        return;
     */
    @Override // kotlinx.coroutines.internal.Segment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(int r5, kotlin.coroutines.CoroutineContext r6) {
        /*
            r4 = this;
            int r6 = kotlinx.coroutines.channels.BufferedChannelKt.b
            if (r5 < r6) goto L6
            r0 = 1
            goto L7
        L6:
            r0 = 0
        L7:
            if (r0 == 0) goto La
            int r5 = r5 - r6
        La:
            int r6 = r5 * 2
            java.util.concurrent.atomic.AtomicReferenceArray r1 = r4.j
            r1.get(r6)
        L11:
            java.lang.Object r6 = r4.k(r5)
            boolean r1 = r6 instanceof kotlinx.coroutines.Waiter
            kotlinx.coroutines.channels.BufferedChannel r2 = r4.i
            r3 = 0
            if (r1 != 0) goto L65
            boolean r1 = r6 instanceof kotlinx.coroutines.channels.WaiterEB
            if (r1 == 0) goto L21
            goto L65
        L21:
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.channels.BufferedChannelKt.j
            if (r6 == r1) goto L59
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.channels.BufferedChannelKt.k
            if (r6 != r1) goto L2a
            goto L59
        L2a:
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.channels.BufferedChannelKt.g
            if (r6 == r1) goto L11
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.channels.BufferedChannelKt.f
            if (r6 != r1) goto L33
            goto L11
        L33:
            kotlinx.coroutines.internal.Symbol r5 = kotlinx.coroutines.channels.BufferedChannelKt.i
            if (r6 == r5) goto L82
            kotlinx.coroutines.internal.Symbol r5 = kotlinx.coroutines.channels.BufferedChannelKt.d
            if (r6 != r5) goto L3c
            goto L82
        L3c:
            kotlinx.coroutines.internal.Symbol r5 = kotlinx.coroutines.channels.BufferedChannelKt.l
            if (r6 != r5) goto L41
            goto L82
        L41:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "unexpected state: "
            r0.<init>(r1)
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            java.lang.String r6 = r6.toString()
            r5.<init>(r6)
            throw r5
        L59:
            r4.m(r5, r3)
            if (r0 == 0) goto L82
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            r2.getClass()
            return
        L65:
            if (r0 == 0) goto L6a
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.channels.BufferedChannelKt.j
            goto L6c
        L6a:
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.channels.BufferedChannelKt.k
        L6c:
            boolean r6 = r4.j(r5, r6, r1)
            if (r6 == 0) goto L11
            r4.m(r5, r3)
            r6 = r0 ^ 1
            r4.l(r5, r6)
            if (r0 == 0) goto L82
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            r2.getClass()
        L82:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelSegment.g(int, kotlin.coroutines.CoroutineContext):void");
    }

    public final boolean j(int i, Object obj, Object obj2) {
        AtomicReferenceArray atomicReferenceArray;
        int i2 = (i * 2) + 1;
        do {
            atomicReferenceArray = this.j;
            if (atomicReferenceArray.compareAndSet(i2, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceArray.get(i2) == obj);
        return false;
    }

    public final Object k(int i) {
        return this.j.get((i * 2) + 1);
    }

    public final void l(int i, boolean z) {
        if (z) {
            BufferedChannel bufferedChannel = this.i;
            Intrinsics.checkNotNull(bufferedChannel);
            bufferedChannel.P((this.g * BufferedChannelKt.b) + i);
        }
        h();
    }

    public final void m(int i, Object obj) {
        this.j.set(i * 2, obj);
    }

    public final void n(int i, Object obj) {
        this.j.set((i * 2) + 1, obj);
    }
}
