package kotlinx.coroutines.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002*(\b\u0002\u0010\u0002\"\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000¨\u0006\u0003"}, d2 = {"Lkotlin/Function1;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Ctor", "kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nExceptionsConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n1#2:113\n11065#3:114\n11400#3,3:115\n12634#3,3:132\n1963#4,14:118\n*S KotlinDebug\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n*L\n41#1:114\n41#1:115,3\n78#1:132,3\n59#1:118,14\n*E\n"})
/* loaded from: classes4.dex */
public final class ExceptionsConstructorKt {

    /* renamed from: a, reason: collision with root package name */
    public static final int f21874a;

    static {
        WeakMapCtorCache weakMapCtorCache = WeakMapCtorCache.f21904a;
        f21874a = b(-1, Throwable.class);
        try {
            int i = FastServiceLoaderKt.f21881a;
        } catch (Throwable unused) {
            WeakMapCtorCache weakMapCtorCache2 = WeakMapCtorCache.f21904a;
        }
    }

    public static final Function1 a(Class cls) {
        Object obj;
        Function1 function1;
        Pair pair;
        ExceptionsConstructorKt$createConstructor$nullResult$1 exceptionsConstructorKt$createConstructor$nullResult$1 = ExceptionsConstructorKt$createConstructor$nullResult$1.f21879c;
        if (f21874a == b(0, cls)) {
            Constructor<?>[] constructors = cls.getConstructors();
            ArrayList arrayList = new ArrayList(constructors.length);
            int length = constructors.length;
            int i = 0;
            while (true) {
                obj = null;
                if (i >= length) {
                    break;
                }
                final Constructor<?> constructor = constructors[i];
                Class<?>[] parameterTypes = constructor.getParameterTypes();
                int length2 = parameterTypes.length;
                if (length2 != 0) {
                    if (length2 != 1) {
                        if (length2 != 2) {
                            pair = TuplesKt.to(null, -1);
                        } else if (Intrinsics.areEqual(parameterTypes[0], String.class) && Intrinsics.areEqual(parameterTypes[1], Throwable.class)) {
                            final Function1<Throwable, Throwable> function12 = new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createConstructor$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public final Throwable invoke(Throwable th) {
                                    Throwable th2 = th;
                                    Object newInstance = constructor.newInstance(th2.getMessage(), th2);
                                    Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                                    return (Throwable) newInstance;
                                }
                            };
                            pair = TuplesKt.to(new Function1<Throwable, Throwable>(function12) { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$safeCtor$1

                                /* renamed from: c, reason: collision with root package name */
                                public final /* synthetic */ Lambda f21880c;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(1);
                                    this.f21880c = (Lambda) function12;
                                }

                                /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.Lambda] */
                                @Override // kotlin.jvm.functions.Function1
                                public final Throwable invoke(Throwable th) {
                                    Object m30constructorimpl;
                                    Throwable th2 = th;
                                    ?? r0 = this.f21880c;
                                    Object obj2 = null;
                                    try {
                                        Result.Companion companion = Result.INSTANCE;
                                        Throwable th3 = (Throwable) r0.invoke(th2);
                                        if (!Intrinsics.areEqual(th2.getMessage(), th3.getMessage()) && !Intrinsics.areEqual(th3.getMessage(), th2.toString())) {
                                            th3 = null;
                                        }
                                        m30constructorimpl = Result.m30constructorimpl(th3);
                                    } catch (Throwable th4) {
                                        Result.Companion companion2 = Result.INSTANCE;
                                        m30constructorimpl = Result.m30constructorimpl(ResultKt.createFailure(th4));
                                    }
                                    if (!Result.m36isFailureimpl(m30constructorimpl)) {
                                        obj2 = m30constructorimpl;
                                    }
                                    return (Throwable) obj2;
                                }
                            }, 3);
                        } else {
                            pair = TuplesKt.to(null, -1);
                        }
                    } else {
                        Class<?> cls2 = parameterTypes[0];
                        if (Intrinsics.areEqual(cls2, String.class)) {
                            final Function1<Throwable, Throwable> function13 = new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createConstructor$1$2
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public final Throwable invoke(Throwable th) {
                                    Throwable th2 = th;
                                    Object newInstance = constructor.newInstance(th2.getMessage());
                                    Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                                    Throwable th3 = (Throwable) newInstance;
                                    th3.initCause(th2);
                                    return th3;
                                }
                            };
                            pair = TuplesKt.to(new Function1<Throwable, Throwable>(function13) { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$safeCtor$1

                                /* renamed from: c, reason: collision with root package name */
                                public final /* synthetic */ Lambda f21880c;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(1);
                                    this.f21880c = (Lambda) function13;
                                }

                                /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.Lambda] */
                                @Override // kotlin.jvm.functions.Function1
                                public final Throwable invoke(Throwable th) {
                                    Object m30constructorimpl;
                                    Throwable th2 = th;
                                    ?? r0 = this.f21880c;
                                    Object obj2 = null;
                                    try {
                                        Result.Companion companion = Result.INSTANCE;
                                        Throwable th3 = (Throwable) r0.invoke(th2);
                                        if (!Intrinsics.areEqual(th2.getMessage(), th3.getMessage()) && !Intrinsics.areEqual(th3.getMessage(), th2.toString())) {
                                            th3 = null;
                                        }
                                        m30constructorimpl = Result.m30constructorimpl(th3);
                                    } catch (Throwable th4) {
                                        Result.Companion companion2 = Result.INSTANCE;
                                        m30constructorimpl = Result.m30constructorimpl(ResultKt.createFailure(th4));
                                    }
                                    if (!Result.m36isFailureimpl(m30constructorimpl)) {
                                        obj2 = m30constructorimpl;
                                    }
                                    return (Throwable) obj2;
                                }
                            }, 2);
                        } else if (Intrinsics.areEqual(cls2, Throwable.class)) {
                            final Function1<Throwable, Throwable> function14 = new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createConstructor$1$3
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public final Throwable invoke(Throwable th) {
                                    Object newInstance = constructor.newInstance(th);
                                    Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                                    return (Throwable) newInstance;
                                }
                            };
                            pair = TuplesKt.to(new Function1<Throwable, Throwable>(function14) { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$safeCtor$1

                                /* renamed from: c, reason: collision with root package name */
                                public final /* synthetic */ Lambda f21880c;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(1);
                                    this.f21880c = (Lambda) function14;
                                }

                                /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.Lambda] */
                                @Override // kotlin.jvm.functions.Function1
                                public final Throwable invoke(Throwable th) {
                                    Object m30constructorimpl;
                                    Throwable th2 = th;
                                    ?? r0 = this.f21880c;
                                    Object obj2 = null;
                                    try {
                                        Result.Companion companion = Result.INSTANCE;
                                        Throwable th3 = (Throwable) r0.invoke(th2);
                                        if (!Intrinsics.areEqual(th2.getMessage(), th3.getMessage()) && !Intrinsics.areEqual(th3.getMessage(), th2.toString())) {
                                            th3 = null;
                                        }
                                        m30constructorimpl = Result.m30constructorimpl(th3);
                                    } catch (Throwable th4) {
                                        Result.Companion companion2 = Result.INSTANCE;
                                        m30constructorimpl = Result.m30constructorimpl(ResultKt.createFailure(th4));
                                    }
                                    if (!Result.m36isFailureimpl(m30constructorimpl)) {
                                        obj2 = m30constructorimpl;
                                    }
                                    return (Throwable) obj2;
                                }
                            }, 1);
                        } else {
                            pair = TuplesKt.to(null, -1);
                        }
                    }
                } else {
                    final Function1<Throwable, Throwable> function15 = new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createConstructor$1$4
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Throwable invoke(Throwable th) {
                            Object newInstance = constructor.newInstance(null);
                            Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                            Throwable th2 = (Throwable) newInstance;
                            th2.initCause(th);
                            return th2;
                        }
                    };
                    pair = TuplesKt.to(new Function1<Throwable, Throwable>(function15) { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$safeCtor$1

                        /* renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ Lambda f21880c;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(1);
                            this.f21880c = (Lambda) function15;
                        }

                        /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.Lambda] */
                        @Override // kotlin.jvm.functions.Function1
                        public final Throwable invoke(Throwable th) {
                            Object m30constructorimpl;
                            Throwable th2 = th;
                            ?? r0 = this.f21880c;
                            Object obj2 = null;
                            try {
                                Result.Companion companion = Result.INSTANCE;
                                Throwable th3 = (Throwable) r0.invoke(th2);
                                if (!Intrinsics.areEqual(th2.getMessage(), th3.getMessage()) && !Intrinsics.areEqual(th3.getMessage(), th2.toString())) {
                                    th3 = null;
                                }
                                m30constructorimpl = Result.m30constructorimpl(th3);
                            } catch (Throwable th4) {
                                Result.Companion companion2 = Result.INSTANCE;
                                m30constructorimpl = Result.m30constructorimpl(ResultKt.createFailure(th4));
                            }
                            if (!Result.m36isFailureimpl(m30constructorimpl)) {
                                obj2 = m30constructorimpl;
                            }
                            return (Throwable) obj2;
                        }
                    }, 0);
                }
                arrayList.add(pair);
                i++;
            }
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                obj = it.next();
                if (it.hasNext()) {
                    int intValue = ((Number) ((Pair) obj).getSecond()).intValue();
                    do {
                        Object next = it.next();
                        int intValue2 = ((Number) ((Pair) next).getSecond()).intValue();
                        if (intValue < intValue2) {
                            obj = next;
                            intValue = intValue2;
                        }
                    } while (it.hasNext());
                }
            }
            Pair pair2 = (Pair) obj;
            if (pair2 != null && (function1 = (Function1) pair2.getFirst()) != null) {
                return function1;
            }
        }
        return exceptionsConstructorKt$createConstructor$nullResult$1;
    }

    public static final int b(int i, Class cls) {
        Object m30constructorimpl;
        JvmClassMappingKt.getKotlinClass(cls);
        try {
            Result.Companion companion = Result.INSTANCE;
            int i2 = 0;
            do {
                int i3 = 0;
                for (Field field : cls.getDeclaredFields()) {
                    if (!Modifier.isStatic(field.getModifiers())) {
                        i3++;
                    }
                }
                i2 += i3;
                cls = cls.getSuperclass();
            } while (cls != null);
            m30constructorimpl = Result.m30constructorimpl(Integer.valueOf(i2));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m30constructorimpl = Result.m30constructorimpl(ResultKt.createFailure(th));
        }
        Integer valueOf = Integer.valueOf(i);
        if (Result.m36isFailureimpl(m30constructorimpl)) {
            m30constructorimpl = valueOf;
        }
        return ((Number) m30constructorimpl).intValue();
    }
}
