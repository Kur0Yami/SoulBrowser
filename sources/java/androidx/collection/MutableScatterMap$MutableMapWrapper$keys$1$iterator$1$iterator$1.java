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

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u00020\u00050\u0004H\u008a@"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "K", "V", "Lkotlin/sequences/SequenceScope;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.collection.MutableScatterMap$MutableMapWrapper$keys$1$iterator$1$iterator$1", f = "ScatterMap.kt", i = {0, 0, 0, 0, 0, 0, 0}, l = {1431}, m = "invokeSuspend", n = {"$this$iterator", "m$iv", "lastIndex$iv", "i$iv", "slot$iv", "bitCount$iv", "j$iv"}, s = {"L$0", "L$1", "I$0", "I$1", "J$0", "I$2", "I$3"})
@SourceDebugExtension({"SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1$iterator$1$iterator$1\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1850:1\n363#2,6:1851\n373#2,3:1858\n376#2,9:1862\n1826#3:1857\n1688#3:1861\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1$iterator$1$iterator$1\n*L\n1430#1:1851,6\n1430#1:1858,3\n1430#1:1862,9\n1430#1:1857\n1430#1:1861\n*E\n"})
/* loaded from: classes.dex */
final class MutableScatterMap$MutableMapWrapper$keys$1$iterator$1$iterator$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Integer>, Continuation<? super Unit>, Object> {

    /* renamed from: c, reason: collision with root package name */
    public long[] f456c;
    public int f;
    public int g;
    public int h;
    public int i;
    public long j;
    public int k;
    public /* synthetic */ Object l;

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.coroutines.Continuation, kotlin.coroutines.jvm.internal.RestrictedSuspendLambda, androidx.collection.MutableScatterMap$MutableMapWrapper$keys$1$iterator$1$iterator$1] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ?? restrictedSuspendLambda = new RestrictedSuspendLambda(2, continuation);
        restrictedSuspendLambda.l = obj;
        return restrictedSuspendLambda;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SequenceScope<? super Integer> sequenceScope, Continuation<? super Unit> continuation) {
        return ((MutableScatterMap$MutableMapWrapper$keys$1$iterator$1$iterator$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0061, code lost:
    
        r3 = 8 - ((~(r6 - r7)) >>> 31);
        r1 = 0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            r14 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r14.k
            if (r1 == 0) goto L75
            r2 = 1
            if (r1 != r2) goto L6d
            int r1 = r14.i
            int r3 = r14.h
            long r4 = r14.j
            int r6 = r14.g
            int r7 = r14.f
            long[] r8 = r14.f456c
            java.lang.Object r9 = r14.l
            kotlin.sequences.SequenceScope r9 = (kotlin.sequences.SequenceScope) r9
            kotlin.ResultKt.throwOnFailure(r15)
        L1e:
            r15 = 8
            long r4 = r4 >> r15
            int r1 = r1 + r2
        L22:
            if (r1 >= r3) goto L4b
            r10 = 255(0xff, double:1.26E-321)
            long r10 = r10 & r4
            r12 = 128(0x80, double:6.3E-322)
            int r15 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r15 >= 0) goto L1e
            int r15 = r6 << 3
            int r15 = r15 + r1
            java.lang.Integer r15 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r15)
            r14.l = r9
            r14.f456c = r8
            r14.f = r7
            r14.g = r6
            r14.j = r4
            r14.h = r3
            r14.i = r1
            r14.k = r2
            java.lang.Object r15 = r9.yield(r15, r14)
            if (r15 != r0) goto L1e
            return r0
        L4b:
            if (r3 != r15) goto L6a
        L4d:
            if (r6 == r7) goto L6a
            int r6 = r6 + 1
            r4 = r8[r6]
            long r10 = ~r4
            r1 = 7
            long r10 = r10 << r1
            long r10 = r10 & r4
            r12 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r10 = r10 & r12
            int r1 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r1 == 0) goto L4d
            int r1 = r6 - r7
            int r1 = ~r1
            int r1 = r1 >>> 31
            int r3 = 8 - r1
            r1 = 0
            goto L22
        L6a:
            kotlin.Unit r15 = kotlin.Unit.INSTANCE
            return r15
        L6d:
            java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r15.<init>(r0)
            throw r15
        L75:
            kotlin.ResultKt.throwOnFailure(r15)
            java.lang.Object r15 = r14.l
            kotlin.sequences.SequenceScope r15 = (kotlin.sequences.SequenceScope) r15
            r15 = 0
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.MutableScatterMap$MutableMapWrapper$keys$1$iterator$1$iterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
