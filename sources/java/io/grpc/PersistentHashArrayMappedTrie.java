package io.grpc;

import io.grpc.Context;
import java.util.Arrays;

/* loaded from: classes3.dex */
final class PersistentHashArrayMappedTrie {

    /* loaded from: classes3.dex */
    public static final class CollisionLeaf<K, V> implements Node<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object[] f21047a;
        public final Object[] b;

        public CollisionLeaf(Object[] objArr, Object[] objArr2) {
            this.f21047a = objArr;
            this.b = objArr2;
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public final Object a(Context.Key key, int i, int i2) {
            int i3 = 0;
            while (true) {
                Object[] objArr = this.f21047a;
                if (i3 < objArr.length) {
                    if (objArr[i3] == key) {
                        return this.b[i3];
                    }
                    i3++;
                } else {
                    return null;
                }
            }
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public final Node b(int i, int i2, Object obj, Object obj2) {
            Object[] objArr = this.f21047a;
            int i3 = 0;
            int hashCode = objArr[0].hashCode();
            if (hashCode != i) {
                return CompressedIndex.c(new Leaf(obj, obj2), i, this, hashCode, i2);
            }
            while (true) {
                if (i3 < objArr.length) {
                    if (objArr[i3] == obj) {
                        break;
                    }
                    i3++;
                } else {
                    i3 = -1;
                    break;
                }
            }
            Object[] objArr2 = this.b;
            if (i3 != -1) {
                Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
                Object[] copyOf2 = Arrays.copyOf(objArr2, objArr.length);
                copyOf[i3] = obj;
                copyOf2[i3] = obj2;
                return new CollisionLeaf(copyOf, copyOf2);
            }
            Object[] copyOf3 = Arrays.copyOf(objArr, objArr.length + 1);
            Object[] copyOf4 = Arrays.copyOf(objArr2, objArr.length + 1);
            copyOf3[objArr.length] = obj;
            copyOf4[objArr.length] = obj2;
            return new CollisionLeaf(copyOf3, copyOf4);
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public final int size() {
            return this.b.length;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("CollisionLeaf(");
            int i = 0;
            while (true) {
                Object[] objArr = this.b;
                if (i < objArr.length) {
                    sb.append("(key=");
                    sb.append(this.f21047a[i]);
                    sb.append(" value=");
                    sb.append(objArr[i]);
                    sb.append(") ");
                    i++;
                } else {
                    sb.append(")");
                    return sb.toString();
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class CompressedIndex<K, V> implements Node<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final int f21048a;
        public final Node[] b;

        /* renamed from: c, reason: collision with root package name */
        public final int f21049c;

        public CompressedIndex(int i, Node[] nodeArr, int i2) {
            this.f21048a = i;
            this.b = nodeArr;
            this.f21049c = i2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static CompressedIndex c(Leaf leaf, int i, Node node, int i2, int i3) {
            int i4 = (i >>> i3) & 31;
            int i5 = 1 << i4;
            int i6 = (i2 >>> i3) & 31;
            int i7 = 1 << i6;
            Leaf leaf2 = node;
            if (i5 == i7) {
                CompressedIndex c2 = c(leaf, i, node, i2, i3 + 5);
                return new CompressedIndex(i5, new Node[]{c2}, c2.f21049c);
            }
            if (i4 > i6) {
                leaf2 = leaf;
                leaf = node;
            }
            return new CompressedIndex(i5 | i7, new Node[]{leaf, leaf2}, leaf.size() + leaf2.size());
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public final Object a(Context.Key key, int i, int i2) {
            int i3 = 1 << ((i >>> i2) & 31);
            int i4 = this.f21048a;
            if ((i4 & i3) == 0) {
                return null;
            }
            return this.b[Integer.bitCount((i3 - 1) & i4)].a(key, i, i2 + 5);
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public final Node b(int i, int i2, Object obj, Object obj2) {
            int i3 = 1 << ((i >>> i2) & 31);
            int i4 = this.f21048a;
            int bitCount = Integer.bitCount((i3 - 1) & i4);
            int i5 = i4 & i3;
            int i6 = this.f21049c;
            Node[] nodeArr = this.b;
            if (i5 == 0) {
                int i7 = i4 | i3;
                Node[] nodeArr2 = new Node[nodeArr.length + 1];
                System.arraycopy(nodeArr, 0, nodeArr2, 0, bitCount);
                nodeArr2[bitCount] = new Leaf(obj, obj2);
                System.arraycopy(nodeArr, bitCount, nodeArr2, bitCount + 1, nodeArr.length - bitCount);
                return new CompressedIndex(i7, nodeArr2, i6 + 1);
            }
            Node[] nodeArr3 = (Node[]) Arrays.copyOf(nodeArr, nodeArr.length);
            Node b = nodeArr[bitCount].b(i, i2 + 5, obj, obj2);
            nodeArr3[bitCount] = b;
            return new CompressedIndex(i4, nodeArr3, (i6 + b.size()) - nodeArr[bitCount].size());
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public final int size() {
            return this.f21049c;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("CompressedIndex(");
            sb.append("bitmap=" + Integer.toBinaryString(this.f21048a) + " ");
            for (Node node : this.b) {
                sb.append(node);
                sb.append(" ");
            }
            sb.append(")");
            return sb.toString();
        }
    }

    /* loaded from: classes3.dex */
    public static final class Leaf<K, V> implements Node<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f21050a;
        public final Object b;

        public Leaf(Object obj, Object obj2) {
            this.f21050a = obj;
            this.b = obj2;
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public final Object a(Context.Key key, int i, int i2) {
            if (this.f21050a == key) {
                return this.b;
            }
            return null;
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public final Node b(int i, int i2, Object obj, Object obj2) {
            Object obj3 = this.f21050a;
            int hashCode = obj3.hashCode();
            if (hashCode != i) {
                return CompressedIndex.c(new Leaf(obj, obj2), i, this, hashCode, i2);
            }
            if (obj3 == obj) {
                return new Leaf(obj, obj2);
            }
            return new CollisionLeaf(new Object[]{obj3, obj}, new Object[]{this.b, obj2});
        }

        @Override // io.grpc.PersistentHashArrayMappedTrie.Node
        public final int size() {
            return 1;
        }

        public final String toString() {
            return String.format("Leaf(key=%s value=%s)", this.f21050a, this.b);
        }
    }

    /* loaded from: classes3.dex */
    public interface Node<K, V> {
        Object a(Context.Key key, int i, int i2);

        Node b(int i, int i2, Object obj, Object obj2);

        int size();
    }
}
