package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Supplier;
import java.util.concurrent.atomic.AtomicLong;

@GwtCompatible
/* loaded from: classes3.dex */
final class LongAddables {

    /* renamed from: a, reason: collision with root package name */
    public static final Supplier f12224a;

    /* renamed from: com.google.common.cache.LongAddables$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Supplier<LongAddable> {
        @Override // com.google.common.base.Supplier
        public final Object get() {
            return new Number();
        }
    }

    /* renamed from: com.google.common.cache.LongAddables$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Supplier<LongAddable> {
        @Override // com.google.common.base.Supplier
        public final Object get() {
            return new AtomicLong();
        }
    }

    /* loaded from: classes3.dex */
    public static final class PureJavaLongAddable extends AtomicLong implements LongAddable {
        @Override // com.google.common.cache.LongAddable
        public final void a() {
            getAndIncrement();
        }

        @Override // com.google.common.cache.LongAddable
        public final void add(long j) {
            getAndAdd(j);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.base.Supplier] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    static {
        ?? r0;
        try {
            new Number();
            r0 = new Object();
        } catch (Throwable unused) {
            r0 = new Object();
        }
        f12224a = r0;
    }

    public static LongAddable a() {
        return (LongAddable) f12224a.get();
    }
}
