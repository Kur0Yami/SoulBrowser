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

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "K", "V", "Lkotlin/sequences/SequenceScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.collection.ScatterMap$MapWrapper$values$1$iterator$1", f = "ScatterMap.kt", i = {0, 0, 0, 0, 0, 0, 0, 0}, l = {744}, m = "invokeSuspend", n = {"$this$iterator", "v$iv", "m$iv$iv", "lastIndex$iv$iv", "i$iv$iv", "slot$iv$iv", "bitCount$iv$iv", "j$iv$iv"}, s = {"L$0", "L$1", "L$2", "I$0", "I$1", "J$0", "I$2", "I$3"})
@SourceDebugExtension({"SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/ScatterMap$MapWrapper$values$1$iterator$1\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1850:1\n418#2,3:1851\n363#2,6:1854\n373#2,3:1861\n376#2,2:1865\n422#2,2:1867\n379#2,6:1869\n424#2:1875\n1826#3:1860\n1688#3:1864\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/ScatterMap$MapWrapper$values$1$iterator$1\n*L\n743#1:1851,3\n743#1:1854,6\n743#1:1861,3\n743#1:1865,2\n743#1:1867,2\n743#1:1869,6\n743#1:1875\n743#1:1860\n743#1:1864\n*E\n"})
/* loaded from: classes.dex */
final class ScatterMap$MapWrapper$values$1$iterator$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<Object>, Continuation<? super Unit>, Object> {

    /* renamed from: c, reason: collision with root package name */
    public Object[] f467c;
    public long[] f;
    public int g;
    public int h;
    public int i;
    public int j;
    public long k;
    public int l;
    public /* synthetic */ Object m;

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.coroutines.Continuation, androidx.collection.ScatterMap$MapWrapper$values$1$iterator$1, kotlin.coroutines.jvm.internal.RestrictedSuspendLambda] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ?? restrictedSuspendLambda = new RestrictedSuspendLambda(2, continuation);
        restrictedSuspendLambda.m = obj;
        return restrictedSuspendLambda;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SequenceScope<Object> sequenceScope, Continuation<? super Unit> continuation) {
        return ((ScatterMap$MapWrapper$values$1$iterator$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0065, code lost:
    
        r4 = 8 - ((~(r7 - r8)) >>> 31);
        r2 = 0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            r17 = this;
            r0 = r17
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.l
            if (r2 == 0) goto L79
            r3 = 1
            if (r2 != r3) goto L71
            int r2 = r0.j
            int r4 = r0.i
            long r5 = r0.k
            int r7 = r0.h
            int r8 = r0.g
            long[] r9 = r0.f
            java.lang.Object[] r10 = r0.f467c
            java.lang.Object r11 = r0.m
            kotlin.sequences.SequenceScope r11 = (kotlin.sequences.SequenceScope) r11
            kotlin.ResultKt.throwOnFailure(r18)
        L22:
            r12 = 8
            long r5 = r5 >> r12
            int r2 = r2 + r3
        L26:
            if (r2 >= r4) goto L4f
            r12 = 255(0xff, double:1.26E-321)
            long r12 = r12 & r5
            r14 = 128(0x80, double:6.3E-322)
            int r12 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r12 >= 0) goto L22
            int r12 = r7 << 3
            int r12 = r12 + r2
            r12 = r10[r12]
            r0.m = r11
            r0.f467c = r10
            r0.f = r9
            r0.g = r8
            r0.h = r7
            r0.k = r5
            r0.i = r4
            r0.j = r2
            r0.l = r3
            java.lang.Object r12 = r11.yield(r12, r0)
            if (r12 != r1) goto L22
            return r1
        L4f:
            if (r4 != r12) goto L6e
        L51:
            if (r7 == r8) goto L6e
            int r7 = r7 + 1
            r5 = r9[r7]
            long r13 = ~r5
            r2 = 7
            long r13 = r13 << r2
            long r13 = r13 & r5
            r15 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r13 = r13 & r15
            int r2 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r2 == 0) goto L51
            int r2 = r7 - r8
            int r2 = ~r2
            int r2 = r2 >>> 31
            int r4 = 8 - r2
            r2 = 0
            goto L26
        L6e:
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            return r1
        L71:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L79:
            kotlin.ResultKt.throwOnFailure(r18)
            java.lang.Object r1 = r0.m
            kotlin.sequences.SequenceScope r1 = (kotlin.sequences.SequenceScope) r1
            r1 = 0
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ScatterMap$MapWrapper$values$1$iterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
