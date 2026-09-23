package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.collect.AbstractIterator;
import com.google.errorprone.annotations.DoNotMock;

@DoNotMock
@Beta
/* loaded from: classes3.dex */
public abstract class Traverser<N> {

    /* renamed from: com.google.common.graph.Traverser$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends Traverser<Object> {
    }

    /* renamed from: com.google.common.graph.Traverser$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends Traverser<Object> {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class InsertionOrder {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ InsertionOrder[] f12444c = {new InsertionOrder() { // from class: com.google.common.graph.Traverser.InsertionOrder.1
        }, new InsertionOrder() { // from class: com.google.common.graph.Traverser.InsertionOrder.2
        }};

        /* JADX INFO: Fake field, exist only in values array */
        InsertionOrder EF2;

        public static InsertionOrder valueOf(String str) {
            return (InsertionOrder) Enum.valueOf(InsertionOrder.class, str);
        }

        public static InsertionOrder[] values() {
            return (InsertionOrder[]) f12444c.clone();
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Traversal<N> {

        /* renamed from: com.google.common.graph.Traverser$Traversal$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends Traversal<Object> {
        }

        /* renamed from: com.google.common.graph.Traverser$Traversal$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass2 extends Traversal<Object> {
        }

        /* renamed from: com.google.common.graph.Traverser$Traversal$3, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass3 extends AbstractIterator<Object> {
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                throw null;
            }
        }

        /* renamed from: com.google.common.graph.Traverser$Traversal$4, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass4 extends AbstractIterator<Object> {
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                throw null;
            }
        }
    }
}
