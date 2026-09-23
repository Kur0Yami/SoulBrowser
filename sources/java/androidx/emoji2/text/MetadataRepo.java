package androidx.emoji2.text;

import android.graphics.Typeface;
import android.util.SparseArray;
import androidx.annotation.AnyThread;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import androidx.emoji2.text.flatbuffer.MetadataList;

@AnyThread
@RequiresApi
/* loaded from: classes.dex */
public final class MetadataRepo {

    /* renamed from: a, reason: collision with root package name */
    public final MetadataList f1021a;
    public final char[] b;

    /* renamed from: c, reason: collision with root package name */
    public final Node f1022c = new Node(1024);
    public final Typeface d;

    @RestrictTo
    /* loaded from: classes.dex */
    public static class Node {

        /* renamed from: a, reason: collision with root package name */
        public final SparseArray f1023a;
        public TypefaceEmojiRasterizer b;

        public Node(int i) {
            this.f1023a = new SparseArray(i);
        }

        public final void a(TypefaceEmojiRasterizer typefaceEmojiRasterizer, int i, int i2) {
            Node node;
            int a2 = typefaceEmojiRasterizer.a(i);
            SparseArray sparseArray = this.f1023a;
            if (sparseArray == null) {
                node = null;
            } else {
                node = (Node) sparseArray.get(a2);
            }
            if (node == null) {
                node = new Node(1);
                sparseArray.put(typefaceEmojiRasterizer.a(i), node);
            }
            if (i2 > i) {
                node.a(typefaceEmojiRasterizer, i + 1, i2);
            } else {
                node.b = typefaceEmojiRasterizer;
            }
        }
    }

    public MetadataRepo(Typeface typeface, MetadataList metadataList) {
        int i;
        int i2;
        int i3;
        int i4;
        boolean z;
        int i5;
        this.d = typeface;
        this.f1021a = metadataList;
        int a2 = metadataList.a(6);
        if (a2 != 0) {
            int i6 = a2 + metadataList.f1039a;
            i = metadataList.b.getInt(metadataList.b.getInt(i6) + i6);
        } else {
            i = 0;
        }
        this.b = new char[i * 2];
        int a3 = metadataList.a(6);
        if (a3 != 0) {
            int i7 = a3 + metadataList.f1039a;
            i2 = metadataList.b.getInt(metadataList.b.getInt(i7) + i7);
        } else {
            i2 = 0;
        }
        for (int i8 = 0; i8 < i2; i8++) {
            TypefaceEmojiRasterizer typefaceEmojiRasterizer = new TypefaceEmojiRasterizer(this, i8);
            MetadataItem b = typefaceEmojiRasterizer.b();
            int a4 = b.a(4);
            if (a4 != 0) {
                i3 = b.b.getInt(a4 + b.f1039a);
            } else {
                i3 = 0;
            }
            Character.toChars(i3, this.b, i8 * 2);
            MetadataItem b2 = typefaceEmojiRasterizer.b();
            int a5 = b2.a(16);
            if (a5 != 0) {
                int i9 = a5 + b2.f1039a;
                i4 = b2.b.getInt(b2.b.getInt(i9) + i9);
            } else {
                i4 = 0;
            }
            if (i4 > 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.a("invalid metadata codepoint length", z);
            Node node = this.f1022c;
            MetadataItem b3 = typefaceEmojiRasterizer.b();
            int a6 = b3.a(16);
            if (a6 != 0) {
                int i10 = a6 + b3.f1039a;
                i5 = b3.b.getInt(b3.b.getInt(i10) + i10);
            } else {
                i5 = 0;
            }
            node.a(typefaceEmojiRasterizer, 0, i5 - 1);
        }
    }
}
