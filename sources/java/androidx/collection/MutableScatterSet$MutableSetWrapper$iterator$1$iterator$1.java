package androidx.collection;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequenceScope;

@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "E", "Lkotlin/sequences/SequenceScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.collection.MutableScatterSet$MutableSetWrapper$iterator$1$iterator$1", f = "ScatterSet.kt", i = {0, 0, 0, 0, 0, 0, 0}, l = {1060}, m = "invokeSuspend", n = {"$this$iterator", "m$iv", "lastIndex$iv", "i$iv", "slot$iv", "bitCount$iv", "j$iv"}, s = {"L$0", "L$3", "I$0", "I$1", "J$0", "I$2", "I$3"})
@SourceDebugExtension({"SMAP\nScatterSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterSet.kt\nandroidx/collection/MutableScatterSet$MutableSetWrapper$iterator$1$iterator$1\n+ 2 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1100:1\n237#2,7:1101\n248#2,3:1109\n251#2,9:1113\n1826#3:1108\n1688#3:1112\n*S KotlinDebug\n*F\n+ 1 ScatterSet.kt\nandroidx/collection/MutableScatterSet$MutableSetWrapper$iterator$1$iterator$1\n*L\n1057#1:1101,7\n1057#1:1109,3\n1057#1:1113,9\n1057#1:1108\n1057#1:1112\n*E\n"})
/* loaded from: classes.dex */
final class MutableScatterSet$MutableSetWrapper$iterator$1$iterator$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<Object>, Continuation<? super Unit>, Object> {

    /* renamed from: c, reason: collision with root package name */
    public MutableScatterSet$MutableSetWrapper$iterator$1 f460c;
    public MutableScatterSet f;
    public long[] g;
    public int h;
    public int i;
    public int j;
    public int k;
    public long l;
    public int m;
    public /* synthetic */ Object n;
    public final /* synthetic */ MutableScatterSet$MutableSetWrapper$iterator$1 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableScatterSet$MutableSetWrapper$iterator$1$iterator$1(MutableScatterSet$MutableSetWrapper$iterator$1 mutableScatterSet$MutableSetWrapper$iterator$1, Continuation continuation) {
        super(2, continuation);
        this.o = mutableScatterSet$MutableSetWrapper$iterator$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        MutableScatterSet$MutableSetWrapper$iterator$1$iterator$1 mutableScatterSet$MutableSetWrapper$iterator$1$iterator$1 = new MutableScatterSet$MutableSetWrapper$iterator$1$iterator$1(this.o, continuation);
        mutableScatterSet$MutableSetWrapper$iterator$1$iterator$1.n = obj;
        return mutableScatterSet$MutableSetWrapper$iterator$1$iterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SequenceScope<Object> sequenceScope, Continuation<? super Unit> continuation) {
        return ((MutableScatterSet$MutableSetWrapper$iterator$1$iterator$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x006e, code lost:
    
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
            if (r2 == 0) goto L82
            r3 = 1
            if (r2 != r3) goto L7a
            int r2 = r0.k
            int r4 = r0.j
            long r5 = r0.l
            int r7 = r0.i
            int r8 = r0.h
            long[] r9 = r0.g
            androidx.collection.MutableScatterSet r10 = r0.f
            androidx.collection.MutableScatterSet$MutableSetWrapper$iterator$1 r11 = r0.f460c
            java.lang.Object r12 = r0.n
            kotlin.sequences.SequenceScope r12 = (kotlin.sequences.SequenceScope) r12
            kotlin.ResultKt.throwOnFailure(r19)
        L24:
            r13 = 8
            long r5 = r5 >> r13
            int r2 = r2 + r3
        L28:
            if (r2 >= r4) goto L57
            r13 = 255(0xff, double:1.26E-321)
            long r13 = r13 & r5
            r15 = 128(0x80, double:6.3E-322)
            int r13 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r13 >= 0) goto L24
            int r13 = r7 << 3
            int r13 = r13 + r2
            r11.f459c = r13
            java.lang.Object[] r14 = r10.b
            r13 = r14[r13]
            r0.n = r12
            r0.f460c = r11
            r0.f = r10
            r0.g = r9
            r0.h = r8
            r0.i = r7
            r0.l = r5
            r0.j = r4
            r0.k = r2
            r0.m = r3
            java.lang.Object r13 = r12.yield(r13, r0)
            if (r13 != r1) goto L24
            return r1
        L57:
            if (r4 != r13) goto L77
        L59:
            if (r7 == r8) goto L77
            int r7 = r7 + 1
            r5 = r9[r7]
            long r14 = ~r5
            r2 = 7
            long r14 = r14 << r2
            long r14 = r14 & r5
            r16 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r14 = r14 & r16
            int r2 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r2 == 0) goto L59
            int r2 = r7 - r8
            int r2 = ~r2
            int r2 = r2 >>> 31
            int r4 = 8 - r2
            r2 = 0
            goto L28
        L77:
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            return r1
        L7a:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L82:
            kotlin.ResultKt.throwOnFailure(r19)
            java.lang.Object r1 = r0.n
            kotlin.sequences.SequenceScope r1 = (kotlin.sequences.SequenceScope) r1
            r1 = 0
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.MutableScatterSet$MutableSetWrapper$iterator$1$iterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
