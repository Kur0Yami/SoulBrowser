package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.primitives.Ints;
import j$.util.Objects;
import java.io.Serializable;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

@GwtCompatible
/* loaded from: classes3.dex */
public final class TreeMultiset<E> extends AbstractSortedMultiset<E> implements Serializable {
    public static final /* synthetic */ int l = 0;
    public final transient Reference i;
    public final transient GeneralRange j;
    public final transient AvlNode k;

    /* renamed from: com.google.common.collect.TreeMultiset$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends Multisets.AbstractEntry<Object> {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ AvlNode f12409c;
        public final /* synthetic */ TreeMultiset f;

        public AnonymousClass1(TreeMultiset treeMultiset, AvlNode avlNode) {
            this.f12409c = avlNode;
            this.f = treeMultiset;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public final Object a() {
            return this.f12409c.f12414a;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public final int getCount() {
            AvlNode avlNode = this.f12409c;
            int i = avlNode.b;
            if (i == 0) {
                return this.f.Q(avlNode.f12414a);
            }
            return i;
        }
    }

    /* renamed from: com.google.common.collect.TreeMultiset$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Iterator<Multiset.Entry<Object>> {

        /* renamed from: c, reason: collision with root package name */
        public AvlNode f12410c;
        public Multiset.Entry f;

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
        
            if (r2.a(r7.f12414a) != false) goto L20;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public AnonymousClass2() {
            /*
                r6 = this;
                r6.<init>()
                com.google.common.collect.TreeMultiset.this = r7
                com.google.common.collect.TreeMultiset$AvlNode r0 = r7.k
                java.util.Comparator r1 = r7.g
                com.google.common.collect.GeneralRange r2 = r7.j
                com.google.common.collect.TreeMultiset$Reference r7 = r7.i
                java.lang.Object r7 = r7.f12416a
                com.google.common.collect.TreeMultiset$AvlNode r7 = (com.google.common.collect.TreeMultiset.AvlNode) r7
                if (r7 != 0) goto L14
                goto L44
            L14:
                boolean r3 = r2.f
                if (r3 == 0) goto L35
                java.lang.Object r3 = r2.g
                com.google.common.collect.TreeMultiset$AvlNode r7 = r7.c(r1, r3)
                if (r7 != 0) goto L21
                goto L44
            L21:
                com.google.common.collect.BoundType r4 = r2.h
                com.google.common.collect.BoundType r5 = com.google.common.collect.BoundType.f12251c
                if (r4 != r5) goto L3a
                java.lang.Object r4 = r7.f12414a
                int r1 = r1.compare(r3, r4)
                if (r1 != 0) goto L3a
                com.google.common.collect.TreeMultiset$AvlNode r7 = r7.i
                j$.util.Objects.requireNonNull(r7)
                goto L3a
            L35:
                com.google.common.collect.TreeMultiset$AvlNode r7 = r0.i
                j$.util.Objects.requireNonNull(r7)
            L3a:
                if (r7 == r0) goto L44
                java.lang.Object r0 = r7.f12414a
                boolean r0 = r2.a(r0)
                if (r0 != 0) goto L45
            L44:
                r7 = 0
            L45:
                r6.f12410c = r7
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.TreeMultiset.AnonymousClass2.<init>(com.google.common.collect.TreeMultiset):void");
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            AvlNode avlNode = this.f12410c;
            if (avlNode == null) {
                return false;
            }
            if (TreeMultiset.this.j.c(avlNode.f12414a)) {
                this.f12410c = null;
                return false;
            }
            return true;
        }

        @Override // java.util.Iterator
        public final Multiset.Entry<Object> next() {
            if (hasNext()) {
                AvlNode avlNode = this.f12410c;
                Objects.requireNonNull(avlNode);
                int i = TreeMultiset.l;
                TreeMultiset treeMultiset = TreeMultiset.this;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(treeMultiset, avlNode);
                this.f = anonymousClass1;
                AvlNode avlNode2 = this.f12410c.i;
                Objects.requireNonNull(avlNode2);
                if (avlNode2 == treeMultiset.k) {
                    this.f12410c = null;
                    return anonymousClass1;
                }
                AvlNode avlNode3 = this.f12410c.i;
                Objects.requireNonNull(avlNode3);
                this.f12410c = avlNode3;
                return anonymousClass1;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            boolean z;
            if (this.f != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.m(z, "no calls to next() since the last call to remove()");
            TreeMultiset.this.G0(((AnonymousClass1) this.f).f12409c.f12414a);
            this.f = null;
        }
    }

    /* renamed from: com.google.common.collect.TreeMultiset$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements Iterator<Multiset.Entry<Object>> {

        /* renamed from: c, reason: collision with root package name */
        public AvlNode f12411c;
        public Multiset.Entry f;

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0043, code lost:
        
            if (r2.a(r8.f12414a) != false) goto L20;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public AnonymousClass3() {
            /*
                r7 = this;
                r7.<init>()
                com.google.common.collect.TreeMultiset.this = r8
                com.google.common.collect.TreeMultiset$AvlNode r0 = r8.k
                java.util.Comparator r1 = r8.g
                com.google.common.collect.GeneralRange r2 = r8.j
                com.google.common.collect.TreeMultiset$Reference r8 = r8.i
                java.lang.Object r8 = r8.f12416a
                com.google.common.collect.TreeMultiset$AvlNode r8 = (com.google.common.collect.TreeMultiset.AvlNode) r8
                r3 = 0
                if (r8 != 0) goto L15
                goto L45
            L15:
                boolean r4 = r2.i
                if (r4 == 0) goto L36
                java.lang.Object r4 = r2.j
                com.google.common.collect.TreeMultiset$AvlNode r8 = r8.f(r1, r4)
                if (r8 != 0) goto L22
                goto L45
            L22:
                com.google.common.collect.BoundType r5 = r2.k
                com.google.common.collect.BoundType r6 = com.google.common.collect.BoundType.f12251c
                if (r5 != r6) goto L3b
                java.lang.Object r5 = r8.f12414a
                int r1 = r1.compare(r4, r5)
                if (r1 != 0) goto L3b
                com.google.common.collect.TreeMultiset$AvlNode r8 = r8.h
                j$.util.Objects.requireNonNull(r8)
                goto L3b
            L36:
                com.google.common.collect.TreeMultiset$AvlNode r8 = r0.h
                j$.util.Objects.requireNonNull(r8)
            L3b:
                if (r8 == r0) goto L45
                java.lang.Object r0 = r8.f12414a
                boolean r0 = r2.a(r0)
                if (r0 != 0) goto L46
            L45:
                r8 = r3
            L46:
                r7.f12411c = r8
                r7.f = r3
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.TreeMultiset.AnonymousClass3.<init>(com.google.common.collect.TreeMultiset):void");
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            AvlNode avlNode = this.f12411c;
            if (avlNode == null) {
                return false;
            }
            if (TreeMultiset.this.j.d(avlNode.f12414a)) {
                this.f12411c = null;
                return false;
            }
            return true;
        }

        @Override // java.util.Iterator
        public final Multiset.Entry<Object> next() {
            if (hasNext()) {
                Objects.requireNonNull(this.f12411c);
                AvlNode avlNode = this.f12411c;
                int i = TreeMultiset.l;
                TreeMultiset treeMultiset = TreeMultiset.this;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(treeMultiset, avlNode);
                this.f = anonymousClass1;
                AvlNode avlNode2 = avlNode.h;
                Objects.requireNonNull(avlNode2);
                if (avlNode2 == treeMultiset.k) {
                    this.f12411c = null;
                    return anonymousClass1;
                }
                AvlNode avlNode3 = this.f12411c.h;
                Objects.requireNonNull(avlNode3);
                this.f12411c = avlNode3;
                return anonymousClass1;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            boolean z;
            if (this.f != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.m(z, "no calls to next() since the last call to remove()");
            TreeMultiset.this.G0(((AnonymousClass1) this.f).f12409c.f12414a);
            this.f = null;
        }
    }

    /* renamed from: com.google.common.collect.TreeMultiset$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12412a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f12412a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12412a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class Aggregate {

        /* renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f12413c;
        public static final AnonymousClass2 f;
        public static final /* synthetic */ Aggregate[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.TreeMultiset$Aggregate$1] */
        /* JADX WARN: Type inference failed for: r1v0, types: [com.google.common.collect.TreeMultiset$Aggregate$2] */
        static {
            ?? r0 = new Aggregate() { // from class: com.google.common.collect.TreeMultiset.Aggregate.1
                @Override // com.google.common.collect.TreeMultiset.Aggregate
                public final int a(AvlNode avlNode) {
                    return avlNode.b;
                }

                @Override // com.google.common.collect.TreeMultiset.Aggregate
                public final long b(AvlNode avlNode) {
                    if (avlNode == null) {
                        return 0L;
                    }
                    return avlNode.d;
                }
            };
            f12413c = r0;
            ?? r1 = new Aggregate() { // from class: com.google.common.collect.TreeMultiset.Aggregate.2
                @Override // com.google.common.collect.TreeMultiset.Aggregate
                public final int a(AvlNode avlNode) {
                    return 1;
                }

                @Override // com.google.common.collect.TreeMultiset.Aggregate
                public final long b(AvlNode avlNode) {
                    if (avlNode == null) {
                        return 0L;
                    }
                    return avlNode.f12415c;
                }
            };
            f = r1;
            g = new Aggregate[]{r0, r1};
        }

        public static Aggregate valueOf(String str) {
            return (Aggregate) Enum.valueOf(Aggregate.class, str);
        }

        public static Aggregate[] values() {
            return (Aggregate[]) g.clone();
        }

        public abstract int a(AvlNode avlNode);

        public abstract long b(AvlNode avlNode);
    }

    /* loaded from: classes3.dex */
    public static final class AvlNode<E> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f12414a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f12415c;
        public long d;
        public int e;
        public AvlNode f;
        public AvlNode g;
        public AvlNode h;
        public AvlNode i;

        public AvlNode(int i, Object obj) {
            boolean z;
            if (i > 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.d(z);
            this.f12414a = obj;
            this.b = i;
            this.d = i;
            this.f12415c = 1;
            this.e = 1;
            this.f = null;
            this.g = null;
        }

        public final AvlNode a(Comparator comparator, Object obj, int i, int[] iArr) {
            int compare = comparator.compare(obj, this.f12414a);
            boolean z = true;
            if (compare < 0) {
                AvlNode avlNode = this.f;
                if (avlNode == null) {
                    iArr[0] = 0;
                    this.f = new AvlNode(i, obj);
                    AvlNode avlNode2 = this.h;
                    Objects.requireNonNull(avlNode2);
                    AvlNode avlNode3 = this.f;
                    int i2 = TreeMultiset.l;
                    avlNode2.i = avlNode3;
                    avlNode3.h = avlNode2;
                    avlNode3.i = this;
                    this.h = avlNode3;
                    this.e = Math.max(2, this.e);
                    this.f12415c++;
                    this.d += i;
                    return this;
                }
                int i3 = avlNode.e;
                AvlNode a2 = avlNode.a(comparator, obj, i, iArr);
                this.f = a2;
                if (iArr[0] == 0) {
                    this.f12415c++;
                }
                this.d += i;
                if (a2.e != i3) {
                    return g();
                }
            } else if (compare > 0) {
                AvlNode avlNode4 = this.g;
                if (avlNode4 == null) {
                    iArr[0] = 0;
                    AvlNode avlNode5 = new AvlNode(i, obj);
                    this.g = avlNode5;
                    AvlNode avlNode6 = this.i;
                    Objects.requireNonNull(avlNode6);
                    int i4 = TreeMultiset.l;
                    this.i = avlNode5;
                    avlNode5.h = this;
                    avlNode5.i = avlNode6;
                    avlNode6.h = avlNode5;
                    this.e = Math.max(2, this.e);
                    this.f12415c++;
                    this.d += i;
                    return this;
                }
                int i5 = avlNode4.e;
                AvlNode a3 = avlNode4.a(comparator, obj, i, iArr);
                this.g = a3;
                if (iArr[0] == 0) {
                    this.f12415c++;
                }
                this.d += i;
                if (a3.e != i5) {
                    return g();
                }
            } else {
                int i6 = this.b;
                iArr[0] = i6;
                long j = i;
                if (i6 + j > 2147483647L) {
                    z = false;
                }
                Preconditions.d(z);
                this.b += i;
                this.d += j;
                return this;
            }
            return this;
        }

        public final int b() {
            int i;
            AvlNode avlNode = this.f;
            int i2 = 0;
            if (avlNode == null) {
                i = 0;
            } else {
                i = avlNode.e;
            }
            AvlNode avlNode2 = this.g;
            if (avlNode2 != null) {
                i2 = avlNode2.e;
            }
            return i - i2;
        }

        public final AvlNode c(Comparator comparator, Object obj) {
            int compare = comparator.compare(obj, this.f12414a);
            if (compare < 0) {
                AvlNode avlNode = this.f;
                if (avlNode != null) {
                    return (AvlNode) MoreObjects.a(avlNode.c(comparator, obj), this);
                }
            } else if (compare != 0) {
                AvlNode avlNode2 = this.g;
                if (avlNode2 == null) {
                    return null;
                }
                return avlNode2.c(comparator, obj);
            }
            return this;
        }

        public final int d(Comparator comparator, Object obj) {
            int compare = comparator.compare(obj, this.f12414a);
            if (compare < 0) {
                AvlNode avlNode = this.f;
                if (avlNode != null) {
                    return avlNode.d(comparator, obj);
                }
                return 0;
            }
            if (compare > 0) {
                AvlNode avlNode2 = this.g;
                if (avlNode2 == null) {
                    return 0;
                }
                return avlNode2.d(comparator, obj);
            }
            return this.b;
        }

        public final AvlNode e() {
            int i = this.b;
            this.b = 0;
            AvlNode avlNode = this.h;
            Objects.requireNonNull(avlNode);
            AvlNode avlNode2 = this.i;
            Objects.requireNonNull(avlNode2);
            int i2 = TreeMultiset.l;
            avlNode.i = avlNode2;
            avlNode2.h = avlNode;
            AvlNode avlNode3 = this.f;
            if (avlNode3 == null) {
                return this.g;
            }
            AvlNode avlNode4 = this.g;
            if (avlNode4 == null) {
                return avlNode3;
            }
            if (avlNode3.e >= avlNode4.e) {
                AvlNode avlNode5 = this.h;
                Objects.requireNonNull(avlNode5);
                avlNode5.f = this.f.k(avlNode5);
                avlNode5.g = this.g;
                avlNode5.f12415c = this.f12415c - 1;
                avlNode5.d = this.d - i;
                return avlNode5.g();
            }
            AvlNode avlNode6 = this.i;
            Objects.requireNonNull(avlNode6);
            avlNode6.g = this.g.l(avlNode6);
            avlNode6.f = this.f;
            avlNode6.f12415c = this.f12415c - 1;
            avlNode6.d = this.d - i;
            return avlNode6.g();
        }

        public final AvlNode f(Comparator comparator, Object obj) {
            int compare = comparator.compare(obj, this.f12414a);
            if (compare > 0) {
                AvlNode avlNode = this.g;
                if (avlNode != null) {
                    return (AvlNode) MoreObjects.a(avlNode.f(comparator, obj), this);
                }
            } else if (compare != 0) {
                AvlNode avlNode2 = this.f;
                if (avlNode2 == null) {
                    return null;
                }
                return avlNode2.f(comparator, obj);
            }
            return this;
        }

        public final AvlNode g() {
            int b = b();
            if (b != -2) {
                if (b != 2) {
                    i();
                    return this;
                }
                Objects.requireNonNull(this.f);
                if (this.f.b() < 0) {
                    this.f = this.f.m();
                }
                return n();
            }
            Objects.requireNonNull(this.g);
            if (this.g.b() > 0) {
                this.g = this.g.n();
            }
            return m();
        }

        public final void h() {
            int i;
            long j;
            AvlNode avlNode = this.f;
            int i2 = TreeMultiset.l;
            int i3 = 0;
            if (avlNode == null) {
                i = 0;
            } else {
                i = avlNode.f12415c;
            }
            int i4 = i + 1;
            AvlNode avlNode2 = this.g;
            if (avlNode2 != null) {
                i3 = avlNode2.f12415c;
            }
            this.f12415c = i4 + i3;
            long j2 = this.b;
            long j3 = 0;
            if (avlNode == null) {
                j = 0;
            } else {
                j = avlNode.d;
            }
            long j4 = j2 + j;
            if (avlNode2 != null) {
                j3 = avlNode2.d;
            }
            this.d = j4 + j3;
            i();
        }

        public final void i() {
            int i;
            AvlNode avlNode = this.f;
            int i2 = 0;
            if (avlNode == null) {
                i = 0;
            } else {
                i = avlNode.e;
            }
            AvlNode avlNode2 = this.g;
            if (avlNode2 != null) {
                i2 = avlNode2.e;
            }
            this.e = Math.max(i, i2) + 1;
        }

        public final AvlNode j(Comparator comparator, Object obj, int i, int[] iArr) {
            int compare = comparator.compare(obj, this.f12414a);
            if (compare < 0) {
                AvlNode avlNode = this.f;
                if (avlNode == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f = avlNode.j(comparator, obj, i, iArr);
                int i2 = iArr[0];
                if (i2 > 0) {
                    if (i >= i2) {
                        this.f12415c--;
                        this.d -= i2;
                    } else {
                        this.d -= i;
                    }
                }
                if (i2 == 0) {
                    return this;
                }
                return g();
            }
            if (compare > 0) {
                AvlNode avlNode2 = this.g;
                if (avlNode2 == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.g = avlNode2.j(comparator, obj, i, iArr);
                int i3 = iArr[0];
                if (i3 > 0) {
                    if (i >= i3) {
                        this.f12415c--;
                        this.d -= i3;
                    } else {
                        this.d -= i;
                    }
                }
                return g();
            }
            int i4 = this.b;
            iArr[0] = i4;
            if (i >= i4) {
                return e();
            }
            this.b = i4 - i;
            this.d -= i;
            return this;
        }

        public final AvlNode k(AvlNode avlNode) {
            AvlNode avlNode2 = this.g;
            if (avlNode2 == null) {
                return this.f;
            }
            this.g = avlNode2.k(avlNode);
            this.f12415c--;
            this.d -= avlNode.b;
            return g();
        }

        public final AvlNode l(AvlNode avlNode) {
            AvlNode avlNode2 = this.f;
            if (avlNode2 == null) {
                return this.g;
            }
            this.f = avlNode2.l(avlNode);
            this.f12415c--;
            this.d -= avlNode.b;
            return g();
        }

        public final AvlNode m() {
            boolean z;
            if (this.g != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.l(z);
            AvlNode avlNode = this.g;
            this.g = avlNode.f;
            avlNode.f = this;
            avlNode.d = this.d;
            avlNode.f12415c = this.f12415c;
            h();
            avlNode.i();
            return avlNode;
        }

        public final AvlNode n() {
            boolean z;
            if (this.f != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.l(z);
            AvlNode avlNode = this.f;
            this.f = avlNode.g;
            avlNode.g = this;
            avlNode.d = this.d;
            avlNode.f12415c = this.f12415c;
            h();
            avlNode.i();
            return avlNode;
        }

        public final AvlNode o(Comparator comparator, Object obj, int i, int[] iArr) {
            int compare = comparator.compare(obj, this.f12414a);
            if (compare < 0) {
                AvlNode avlNode = this.f;
                if (avlNode == null) {
                    iArr[0] = 0;
                } else {
                    this.f = avlNode.o(comparator, obj, i, iArr);
                    int i2 = iArr[0];
                    if (i2 == i) {
                        if (i2 != 0) {
                            this.f12415c--;
                        }
                        this.d += 0 - i2;
                    }
                    return g();
                }
            } else if (compare > 0) {
                AvlNode avlNode2 = this.g;
                if (avlNode2 == null) {
                    iArr[0] = 0;
                } else {
                    this.g = avlNode2.o(comparator, obj, i, iArr);
                    int i3 = iArr[0];
                    if (i3 == i) {
                        if (i3 != 0) {
                            this.f12415c--;
                        }
                        this.d += 0 - i3;
                    }
                    return g();
                }
            } else {
                int i4 = this.b;
                iArr[0] = i4;
                if (i == i4) {
                    return e();
                }
            }
            return this;
        }

        public final AvlNode p(Comparator comparator, Object obj, int[] iArr) {
            int compare = comparator.compare(obj, this.f12414a);
            if (compare < 0) {
                AvlNode avlNode = this.f;
                if (avlNode == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f = avlNode.p(comparator, obj, iArr);
                if (iArr[0] != 0) {
                    this.f12415c--;
                }
                this.d += 0 - r3;
                return g();
            }
            if (compare > 0) {
                AvlNode avlNode2 = this.g;
                if (avlNode2 == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.g = avlNode2.p(comparator, obj, iArr);
                if (iArr[0] != 0) {
                    this.f12415c--;
                }
                this.d += 0 - r3;
                return g();
            }
            iArr[0] = this.b;
            return e();
        }

        public final String toString() {
            return new Multisets.ImmutableEntry(this.b, this.f12414a).toString();
        }
    }

    /* loaded from: classes3.dex */
    public static final class Reference<T> {

        /* renamed from: a, reason: collision with root package name */
        public Object f12416a;

        public final void a(Object obj, Object obj2) {
            if (this.f12416a == obj) {
                this.f12416a = obj2;
                return;
            }
            throw new ConcurrentModificationException();
        }
    }

    public TreeMultiset(Reference reference, GeneralRange generalRange, AvlNode avlNode) {
        super(generalRange.f12280c);
        this.i = reference;
        this.j = generalRange;
        this.k = avlNode;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0030 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x002f A[RETURN] */
    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A(int r7, java.lang.Object r8) {
        /*
            r6 = this;
            java.lang.String r0 = "newCount"
            r1 = 0
            com.google.common.collect.CollectPreconditions.b(r1, r0)
            java.lang.String r0 = "oldCount"
            com.google.common.collect.CollectPreconditions.b(r7, r0)
            com.google.common.collect.GeneralRange r0 = r6.j
            boolean r0 = r0.a(r8)
            com.google.common.base.Preconditions.d(r0)
            com.google.common.collect.TreeMultiset$Reference r0 = r6.i
            java.lang.Object r2 = r0.f12416a
            com.google.common.collect.TreeMultiset$AvlNode r2 = (com.google.common.collect.TreeMultiset.AvlNode) r2
            r3 = 1
            if (r2 != 0) goto L20
            if (r7 != 0) goto L30
            goto L2f
        L20:
            int[] r4 = new int[r3]
            java.util.Comparator r5 = r6.g
            com.google.common.collect.TreeMultiset$AvlNode r8 = r2.o(r5, r8, r7, r4)
            r0.a(r2, r8)
            r8 = r4[r1]
            if (r8 != r7) goto L30
        L2f:
            return r3
        L30:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.TreeMultiset.A(int, java.lang.Object):boolean");
    }

    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.SortedMultiset
    public final SortedMultiset F0(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        return ((TreeMultiset) a0(obj, boundType)).L(obj2, boundType2);
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public final int G0(Object obj) {
        CollectPreconditions.b(0, "count");
        if (!this.j.a(obj)) {
            return 0;
        }
        Reference reference = this.i;
        AvlNode avlNode = (AvlNode) reference.f12416a;
        if (avlNode == null) {
            return 0;
        }
        int[] iArr = new int[1];
        reference.a(avlNode, avlNode.p(this.g, obj, iArr));
        return iArr[0];
    }

    @Override // com.google.common.collect.SortedMultiset
    public final SortedMultiset L(Object obj, BoundType boundType) {
        return new TreeMultiset(this.i, this.j.b(new GeneralRange(this.g, false, null, BoundType.f12251c, true, obj, boundType)), this.k);
    }

    @Override // com.google.common.collect.Multiset
    public final int Q(Object obj) {
        try {
            AvlNode avlNode = (AvlNode) this.i.f12416a;
            if (this.j.a(obj) && avlNode != null) {
                return avlNode.d(this.g, obj);
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public final int T(int i, Object obj) {
        CollectPreconditions.b(i, "occurrences");
        if (i == 0) {
            return Q(obj);
        }
        Reference reference = this.i;
        AvlNode avlNode = (AvlNode) reference.f12416a;
        int[] iArr = new int[1];
        try {
            if (this.j.a(obj) && avlNode != null) {
                reference.a(avlNode, avlNode.j(this.g, obj, i, iArr));
                return iArr[0];
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // com.google.common.collect.SortedMultiset
    public final SortedMultiset a0(Object obj, BoundType boundType) {
        return new TreeMultiset(this.i, this.j.b(new GeneralRange(this.g, true, obj, boundType, false, null, BoundType.f12251c)), this.k);
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public final int add(int i, Object obj) {
        CollectPreconditions.b(i, "occurrences");
        if (i == 0) {
            return Q(obj);
        }
        Preconditions.d(this.j.a(obj));
        Reference reference = this.i;
        AvlNode avlNode = (AvlNode) reference.f12416a;
        Comparator comparator = this.g;
        if (avlNode == null) {
            comparator.compare(obj, obj);
            AvlNode avlNode2 = new AvlNode(i, obj);
            AvlNode avlNode3 = this.k;
            avlNode3.i = avlNode2;
            avlNode2.h = avlNode3;
            avlNode2.i = avlNode3;
            avlNode3.h = avlNode2;
            reference.a(avlNode, avlNode2);
            return 0;
        }
        int[] iArr = new int[1];
        reference.a(avlNode, avlNode.a(comparator, obj, i, iArr));
        return iArr[0];
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        GeneralRange generalRange = this.j;
        if (!generalRange.f && !generalRange.i) {
            AvlNode avlNode = this.k;
            AvlNode avlNode2 = avlNode.i;
            Objects.requireNonNull(avlNode2);
            while (avlNode2 != avlNode) {
                AvlNode avlNode3 = avlNode2.i;
                Objects.requireNonNull(avlNode3);
                avlNode2.b = 0;
                avlNode2.f = null;
                avlNode2.g = null;
                avlNode2.h = null;
                avlNode2.i = null;
                avlNode2 = avlNode3;
            }
            avlNode.i = avlNode;
            avlNode.h = avlNode;
            this.i.f12416a = null;
            return;
        }
        Iterators.b(new AnonymousClass2(this));
    }

    @Override // com.google.common.collect.AbstractSortedMultiset, com.google.common.collect.SortedMultiset, com.google.common.collect.SortedIterable
    public final Comparator comparator() {
        return this.g;
    }

    @Override // com.google.common.collect.AbstractMultiset
    public final int g() {
        return Ints.c(r(Aggregate.f));
    }

    @Override // com.google.common.collect.AbstractMultiset
    public final Iterator i() {
        return new TransformedIterator(new AnonymousClass2(this));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return Multisets.b(this);
    }

    @Override // com.google.common.collect.AbstractMultiset
    public final Iterator k() {
        return new AnonymousClass2(this);
    }

    @Override // com.google.common.collect.AbstractSortedMultiset
    public final Iterator m() {
        return new AnonymousClass3(this);
    }

    public final long p(Aggregate aggregate, AvlNode avlNode) {
        if (avlNode == null) {
            return 0L;
        }
        GeneralRange generalRange = this.j;
        int compare = this.g.compare(generalRange.j, avlNode.f12414a);
        if (compare > 0) {
            return p(aggregate, avlNode.g);
        }
        if (compare == 0) {
            int ordinal = generalRange.k.ordinal();
            if (ordinal != 0) {
                if (ordinal == 1) {
                    return aggregate.b(avlNode.g);
                }
                throw new AssertionError();
            }
            return aggregate.a(avlNode) + aggregate.b(avlNode.g);
        }
        return p(aggregate, avlNode.f) + aggregate.b(avlNode.g) + aggregate.a(avlNode);
    }

    public final long q(Aggregate aggregate, AvlNode avlNode) {
        if (avlNode == null) {
            return 0L;
        }
        GeneralRange generalRange = this.j;
        int compare = this.g.compare(generalRange.g, avlNode.f12414a);
        if (compare < 0) {
            return q(aggregate, avlNode.f);
        }
        if (compare == 0) {
            int ordinal = generalRange.h.ordinal();
            if (ordinal != 0) {
                if (ordinal == 1) {
                    return aggregate.b(avlNode.f);
                }
                throw new AssertionError();
            }
            return aggregate.a(avlNode) + aggregate.b(avlNode.f);
        }
        return q(aggregate, avlNode.g) + aggregate.b(avlNode.f) + aggregate.a(avlNode);
    }

    public final long r(Aggregate aggregate) {
        AvlNode avlNode = (AvlNode) this.i.f12416a;
        long b = aggregate.b(avlNode);
        GeneralRange generalRange = this.j;
        if (generalRange.f) {
            b -= q(aggregate, avlNode);
        }
        if (generalRange.i) {
            return b - p(aggregate, avlNode);
        }
        return b;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return Ints.c(r(Aggregate.f12413c));
    }
}
