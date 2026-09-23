package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ComparisonChain {

    /* renamed from: a, reason: collision with root package name */
    public static final ComparisonChain f12267a = new Object();
    public static final ComparisonChain b = new InactiveComparisonChain(-1);

    /* renamed from: c, reason: collision with root package name */
    public static final ComparisonChain f12268c = new InactiveComparisonChain(1);

    /* renamed from: com.google.common.collect.ComparisonChain$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends ComparisonChain {
        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain a(Comparable comparable, Comparable comparable2) {
            int compareTo = comparable.compareTo(comparable2);
            if (compareTo < 0) {
                return ComparisonChain.b;
            }
            if (compareTo > 0) {
                return ComparisonChain.f12268c;
            }
            return ComparisonChain.f12267a;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final int b() {
            return 0;
        }
    }

    /* loaded from: classes3.dex */
    public static final class InactiveComparisonChain extends ComparisonChain {
        public final int d;

        public InactiveComparisonChain(int i) {
            this.d = i;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain a(Comparable comparable, Comparable comparable2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final int b() {
            return this.d;
        }
    }

    public abstract ComparisonChain a(Comparable comparable, Comparable comparable2);

    public abstract int b();
}
