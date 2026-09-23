package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.util.Comparator;

/* loaded from: classes.dex */
public class Table {

    /* renamed from: a, reason: collision with root package name */
    public int f1039a;
    public ByteBuffer b;

    /* renamed from: c, reason: collision with root package name */
    public int f1040c;
    public int d;

    /* renamed from: androidx.emoji2.text.flatbuffer.Table$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Comparator<Integer> {
        @Override // java.util.Comparator
        public final int compare(Integer num, Integer num2) {
            throw null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.emoji2.text.flatbuffer.Utf8Safe, java.lang.Object] */
    public Table() {
        if (Utf8.f1041a == null) {
            Utf8.f1041a = new Object();
        }
    }

    public final int a(int i) {
        if (i < this.d) {
            return this.b.getShort(this.f1040c + i);
        }
        return 0;
    }
}
