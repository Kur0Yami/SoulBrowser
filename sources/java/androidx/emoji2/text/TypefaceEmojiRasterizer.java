package androidx.emoji2.text;

import androidx.annotation.AnyThread;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import androidx.emoji2.text.flatbuffer.MetadataList;
import androidx.emoji2.text.flatbuffer.Table;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;

@AnyThread
@RequiresApi
/* loaded from: classes.dex */
public class TypefaceEmojiRasterizer {
    public static final ThreadLocal d = new ThreadLocal();

    /* renamed from: a, reason: collision with root package name */
    public final int f1026a;
    public final MetadataRepo b;

    /* renamed from: c, reason: collision with root package name */
    public volatile int f1027c = 0;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface HasGlyph {
    }

    public TypefaceEmojiRasterizer(MetadataRepo metadataRepo, int i) {
        this.b = metadataRepo;
        this.f1026a = i;
    }

    public final int a(int i) {
        MetadataItem b = b();
        int a2 = b.a(16);
        if (a2 != 0) {
            ByteBuffer byteBuffer = b.b;
            int i2 = a2 + b.f1039a;
            return byteBuffer.getInt((i * 4) + byteBuffer.getInt(i2) + i2 + 4);
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.emoji2.text.flatbuffer.Table, java.lang.Object] */
    public final MetadataItem b() {
        ThreadLocal threadLocal = d;
        MetadataItem metadataItem = (MetadataItem) threadLocal.get();
        MetadataItem metadataItem2 = metadataItem;
        if (metadataItem == null) {
            ?? table = new Table();
            threadLocal.set(table);
            metadataItem2 = table;
        }
        MetadataList metadataList = this.b.f1021a;
        int a2 = metadataList.a(6);
        if (a2 != 0) {
            int i = a2 + metadataList.f1039a;
            int i2 = (this.f1026a * 4) + metadataList.b.getInt(i) + i + 4;
            int i3 = metadataList.b.getInt(i2) + i2;
            ByteBuffer byteBuffer = metadataList.b;
            metadataItem2.b = byteBuffer;
            if (byteBuffer != null) {
                metadataItem2.f1039a = i3;
                int i4 = i3 - byteBuffer.getInt(i3);
                metadataItem2.f1040c = i4;
                metadataItem2.d = metadataItem2.b.getShort(i4);
                return metadataItem2;
            }
            metadataItem2.f1039a = 0;
            metadataItem2.f1040c = 0;
            metadataItem2.d = 0;
        }
        return metadataItem2;
    }

    public final String toString() {
        int i;
        int i2;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        MetadataItem b = b();
        int a2 = b.a(4);
        if (a2 != 0) {
            i = b.b.getInt(a2 + b.f1039a);
        } else {
            i = 0;
        }
        sb.append(Integer.toHexString(i));
        sb.append(", codepoints:");
        MetadataItem b2 = b();
        int a3 = b2.a(16);
        if (a3 != 0) {
            int i3 = a3 + b2.f1039a;
            i2 = b2.b.getInt(b2.b.getInt(i3) + i3);
        } else {
            i2 = 0;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            sb.append(Integer.toHexString(a(i4)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
