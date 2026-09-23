package androidx.collection;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.sequences.SequenceScope;

@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010)\n\u0002\u0010'\n\u0000\b\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MutableScatterMap$MutableMapWrapper$entries$1$iterator$1 implements Iterator<Map.Entry<Object, Object>>, KMutableIterator {

    /* renamed from: c, reason: collision with root package name */
    public Iterator f453c;
    public int f;

    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010'\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00050\u0004H\u008a@"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "K", "V", "Lkotlin/sequences/SequenceScope;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.collection.MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1", f = "ScatterMap.kt", i = {0, 0, 0, 0, 0, 0, 0}, l = {1328}, m = "invokeSuspend", n = {"$this$iterator", "m$iv", "lastIndex$iv", "i$iv", "slot$iv", "bitCount$iv", "j$iv"}, s = {"L$0", "L$3", "I$0", "I$1", "J$0", "I$2", "I$3"})
    @SourceDebugExtension({"SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1850:1\n363#2,6:1851\n373#2,3:1858\n376#2,9:1862\n1826#3:1857\n1688#3:1861\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1\n*L\n1326#1:1851,6\n1326#1:1858,3\n1326#1:1862,9\n1326#1:1857\n1326#1:1861\n*E\n"})
    /* renamed from: androidx.collection.MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Map.Entry<Object, Object>>, Continuation<? super Unit>, Object> {

        /* renamed from: c, reason: collision with root package name */
        public MutableScatterMap$MutableMapWrapper$entries$1$iterator$1 f454c;
        public MutableScatterMap f;
        public long[] g;
        public int h;
        public int i;
        public int j;
        public int k;
        public long l;
        public int m;
        public /* synthetic */ Object n;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
            anonymousClass1.n = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super Map.Entry<Object, Object>> sequenceScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0074, code lost:
        
            r4 = 8 - ((~(r7 - r8)) >>> 31);
            r2 = 0;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r19) {
            /*
                r18 = this;
                r0 = r18
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.m
                if (r2 == 0) goto L88
                r3 = 1
                if (r2 != r3) goto L80
                int r2 = r0.k
                int r4 = r0.j
                long r5 = r0.l
                int r7 = r0.i
                int r8 = r0.h
                long[] r9 = r0.g
                androidx.collection.MutableScatterMap r10 = r0.f
                androidx.collection.MutableScatterMap$MutableMapWrapper$entries$1$iterator$1 r11 = r0.f454c
                java.lang.Object r12 = r0.n
                kotlin.sequences.SequenceScope r12 = (kotlin.sequences.SequenceScope) r12
                kotlin.ResultKt.throwOnFailure(r19)
            L24:
                r13 = 8
                long r5 = r5 >> r13
                int r2 = r2 + r3
            L28:
                if (r2 >= r4) goto L5d
                r13 = 255(0xff, double:1.26E-321)
                long r13 = r13 & r5
                r15 = 128(0x80, double:6.3E-322)
                int r13 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
                if (r13 >= 0) goto L24
                int r13 = r7 << 3
                int r13 = r13 + r2
                r11.f = r13
                androidx.collection.MutableMapEntry r14 = new androidx.collection.MutableMapEntry
                java.lang.Object[] r15 = r10.b
                java.lang.Object[] r3 = r10.f464c
                r14.<init>(r15, r3, r13)
                r0.n = r12
                r0.f454c = r11
                r0.f = r10
                r0.g = r9
                r0.h = r8
                r0.i = r7
                r0.l = r5
                r0.j = r4
                r0.k = r2
                r3 = 1
                r0.m = r3
                java.lang.Object r13 = r12.yield(r14, r0)
                if (r13 != r1) goto L24
                return r1
            L5d:
                if (r4 != r13) goto L7d
            L5f:
                if (r7 == r8) goto L7d
                int r7 = r7 + 1
                r5 = r9[r7]
                long r14 = ~r5
                r2 = 7
                long r14 = r14 << r2
                long r14 = r14 & r5
                r16 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
                long r14 = r14 & r16
                int r2 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
                if (r2 == 0) goto L5f
                int r2 = r7 - r8
                int r2 = ~r2
                int r2 = r2 >>> 31
                int r4 = 8 - r2
                r2 = 0
                goto L28
            L7d:
                kotlin.Unit r1 = kotlin.Unit.INSTANCE
                return r1
            L80:
                java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r1
            L88:
                kotlin.ResultKt.throwOnFailure(r19)
                java.lang.Object r1 = r0.n
                kotlin.sequences.SequenceScope r1 = (kotlin.sequences.SequenceScope) r1
                r1 = 0
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.collection.MutableScatterMap$MutableMapWrapper$entries$1$iterator$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f453c.hasNext();
    }

    @Override // java.util.Iterator
    public final Map.Entry<Object, Object> next() {
        return (Map.Entry) this.f453c.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.f == -1) {
        } else {
            throw null;
        }
    }
}
