package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.List;

@GwtCompatible
/* loaded from: classes3.dex */
final class SortedLists {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class KeyAbsentBehavior {

        /* renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f12393c;
        public static final AnonymousClass2 f;
        public static final /* synthetic */ KeyAbsentBehavior[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.SortedLists$KeyAbsentBehavior$1] */
        /* JADX WARN: Type inference failed for: r1v0, types: [com.google.common.collect.SortedLists$KeyAbsentBehavior$2] */
        static {
            ?? r0 = new KeyAbsentBehavior() { // from class: com.google.common.collect.SortedLists.KeyAbsentBehavior.1
                @Override // com.google.common.collect.SortedLists.KeyAbsentBehavior
                public final int a(int i) {
                    return i - 1;
                }
            };
            f12393c = r0;
            ?? r1 = new KeyAbsentBehavior() { // from class: com.google.common.collect.SortedLists.KeyAbsentBehavior.2
                @Override // com.google.common.collect.SortedLists.KeyAbsentBehavior
                public final int a(int i) {
                    return i;
                }
            };
            f = r1;
            g = new KeyAbsentBehavior[]{r0, r1, new KeyAbsentBehavior() { // from class: com.google.common.collect.SortedLists.KeyAbsentBehavior.3
                @Override // com.google.common.collect.SortedLists.KeyAbsentBehavior
                public final int a(int i) {
                    return ~i;
                }
            }};
        }

        public static KeyAbsentBehavior valueOf(String str) {
            return (KeyAbsentBehavior) Enum.valueOf(KeyAbsentBehavior.class, str);
        }

        public static KeyAbsentBehavior[] values() {
            return (KeyAbsentBehavior[]) g.clone();
        }

        public abstract int a(int i);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class KeyPresentBehavior {

        /* renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f12394c;
        public static final AnonymousClass2 f;
        public static final AnonymousClass3 g;
        public static final AnonymousClass4 h;
        public static final /* synthetic */ KeyPresentBehavior[] i;

        /* renamed from: com.google.common.collect.SortedLists$KeyPresentBehavior$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        public enum AnonymousClass2 extends KeyPresentBehavior {
            public AnonymousClass2() {
                super("LAST_PRESENT", 1);
            }

            @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
            public final int a(Object obj, List list, int i) {
                int size = list.size() - 1;
                while (i < size) {
                    int i2 = ((i + size) + 1) >>> 1;
                    if (NaturalOrdering.g.compare(list.get(i2), obj) > 0) {
                        size = i2 - 1;
                    } else {
                        i = i2;
                    }
                }
                return i;
            }
        }

        /* renamed from: com.google.common.collect.SortedLists$KeyPresentBehavior$3, reason: invalid class name */
        /* loaded from: classes3.dex */
        public enum AnonymousClass3 extends KeyPresentBehavior {
            public AnonymousClass3() {
                super("FIRST_PRESENT", 2);
            }

            @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
            public final int a(Object obj, List list, int i) {
                int i2 = 0;
                while (i2 < i) {
                    int i3 = (i2 + i) >>> 1;
                    if (NaturalOrdering.g.compare(list.get(i3), obj) < 0) {
                        i2 = i3 + 1;
                    } else {
                        i = i3;
                    }
                }
                return i2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.SortedLists$KeyPresentBehavior$1] */
        /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.collect.SortedLists$KeyPresentBehavior$4] */
        static {
            ?? r0 = new KeyPresentBehavior() { // from class: com.google.common.collect.SortedLists.KeyPresentBehavior.1
                @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
                public final int a(Object obj, List list, int i2) {
                    return i2;
                }
            };
            f12394c = r0;
            AnonymousClass2 anonymousClass2 = new AnonymousClass2();
            f = anonymousClass2;
            AnonymousClass3 anonymousClass3 = new AnonymousClass3();
            g = anonymousClass3;
            ?? r3 = new KeyPresentBehavior() { // from class: com.google.common.collect.SortedLists.KeyPresentBehavior.4
                @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
                public final int a(Object obj, List list, int i2) {
                    return KeyPresentBehavior.f.a(obj, list, i2) + 1;
                }
            };
            h = r3;
            i = new KeyPresentBehavior[]{r0, anonymousClass2, anonymousClass3, r3, new KeyPresentBehavior() { // from class: com.google.common.collect.SortedLists.KeyPresentBehavior.5
                @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
                public final int a(Object obj, List list, int i2) {
                    return KeyPresentBehavior.g.a(obj, list, i2) - 1;
                }
            }};
        }

        public static KeyPresentBehavior valueOf(String str) {
            return (KeyPresentBehavior) Enum.valueOf(KeyPresentBehavior.class, str);
        }

        public static KeyPresentBehavior[] values() {
            return (KeyPresentBehavior[]) i.clone();
        }

        public abstract int a(Object obj, List list, int i2);
    }
}
