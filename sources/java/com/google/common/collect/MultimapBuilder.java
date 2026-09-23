package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Supplier;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class MultimapBuilder<K0, V0> {

    /* renamed from: com.google.common.collect.MultimapBuilder$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends MultimapBuilderWithKeys<Object> {
    }

    /* renamed from: com.google.common.collect.MultimapBuilder$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends MultimapBuilderWithKeys<Object> {
    }

    /* renamed from: com.google.common.collect.MultimapBuilder$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends MultimapBuilderWithKeys<Object> {
    }

    /* renamed from: com.google.common.collect.MultimapBuilder$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 extends MultimapBuilderWithKeys<Enum<Object>> {
    }

    /* loaded from: classes3.dex */
    public static final class ArrayListSupplier<V> implements Supplier<List<V>>, Serializable {
        @Override // com.google.common.base.Supplier
        public final Object get() {
            return new ArrayList(0);
        }
    }

    /* loaded from: classes3.dex */
    public static final class EnumSetSupplier<V extends Enum<V>> implements Supplier<Set<V>>, Serializable {
        @Override // com.google.common.base.Supplier
        public final Object get() {
            return EnumSet.noneOf(null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class HashSetSupplier<V> implements Supplier<Set<V>>, Serializable {
        @Override // com.google.common.base.Supplier
        public final Object get() {
            return new CompactHashSet();
        }
    }

    /* loaded from: classes3.dex */
    public static final class LinkedHashSetSupplier<V> implements Supplier<Set<V>>, Serializable {
        @Override // com.google.common.base.Supplier
        public final Object get() {
            return new CompactHashSet();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class LinkedListSupplier implements Supplier<List<?>> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ LinkedListSupplier[] f12367c = {new Enum("INSTANCE", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        LinkedListSupplier EF5;

        public static LinkedListSupplier valueOf(String str) {
            return (LinkedListSupplier) Enum.valueOf(LinkedListSupplier.class, str);
        }

        public static LinkedListSupplier[] values() {
            return (LinkedListSupplier[]) f12367c.clone();
        }

        @Override // com.google.common.base.Supplier
        public final Object get() {
            return new LinkedList();
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class ListMultimapBuilder<K0, V0> extends MultimapBuilder<K0, V0> {
    }

    /* loaded from: classes3.dex */
    public static abstract class MultimapBuilderWithKeys<K0> {

        /* renamed from: com.google.common.collect.MultimapBuilder$MultimapBuilderWithKeys$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends ListMultimapBuilder<Object, Object> {
        }

        /* renamed from: com.google.common.collect.MultimapBuilder$MultimapBuilderWithKeys$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass2 extends ListMultimapBuilder<Object, Object> {
        }

        /* renamed from: com.google.common.collect.MultimapBuilder$MultimapBuilderWithKeys$3, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass3 extends SetMultimapBuilder<Object, Object> {
        }

        /* renamed from: com.google.common.collect.MultimapBuilder$MultimapBuilderWithKeys$4, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass4 extends SetMultimapBuilder<Object, Object> {
        }

        /* renamed from: com.google.common.collect.MultimapBuilder$MultimapBuilderWithKeys$5, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass5 extends SortedSetMultimapBuilder<Object, Object> {
        }

        /* renamed from: com.google.common.collect.MultimapBuilder$MultimapBuilderWithKeys$6, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass6 extends SetMultimapBuilder<Object, Enum<Object>> {
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class SetMultimapBuilder<K0, V0> extends MultimapBuilder<K0, V0> {
    }

    /* loaded from: classes3.dex */
    public static abstract class SortedSetMultimapBuilder<K0, V0> extends SetMultimapBuilder<K0, V0> {
    }

    /* loaded from: classes3.dex */
    public static final class TreeSetSupplier<V> implements Supplier<SortedSet<V>>, Serializable {
        @Override // com.google.common.base.Supplier
        public final Object get() {
            return new TreeSet((Comparator) null);
        }
    }
}
