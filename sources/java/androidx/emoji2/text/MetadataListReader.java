package androidx.emoji2.text;

import androidx.annotation.AnyThread;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.flatbuffer.MetadataList;
import androidx.emoji2.text.flatbuffer.Table;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import kotlin.UShort;

@AnyThread
@RequiresApi
@RestrictTo
/* loaded from: classes.dex */
class MetadataListReader {

    /* loaded from: classes.dex */
    public static class ByteBufferReader implements OpenTypeReader {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f1020a;

        public ByteBufferReader(ByteBuffer byteBuffer) {
            this.f1020a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        public final void a(int i) {
            ByteBuffer byteBuffer = this.f1020a;
            byteBuffer.position(byteBuffer.position() + i);
        }
    }

    /* loaded from: classes.dex */
    public static class InputStreamOpenTypeReader implements OpenTypeReader {
    }

    /* loaded from: classes.dex */
    public static class OffsetInfo {
    }

    /* loaded from: classes.dex */
    public interface OpenTypeReader {
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.emoji2.text.flatbuffer.MetadataList, androidx.emoji2.text.flatbuffer.Table] */
    public static MetadataList a(MappedByteBuffer mappedByteBuffer) {
        ByteBuffer byteBuffer;
        long j;
        ByteBuffer duplicate = mappedByteBuffer.duplicate();
        ByteBufferReader byteBufferReader = new ByteBufferReader(duplicate);
        byteBufferReader.a(4);
        int i = duplicate.getShort() & UShort.MAX_VALUE;
        if (i <= 100) {
            byteBufferReader.a(6);
            int i2 = 0;
            while (true) {
                byteBuffer = byteBufferReader.f1020a;
                if (i2 < i) {
                    int i3 = byteBuffer.getInt();
                    byteBufferReader.a(4);
                    j = byteBuffer.getInt() & 4294967295L;
                    byteBufferReader.a(4);
                    if (1835365473 == i3) {
                        break;
                    }
                    i2++;
                } else {
                    j = -1;
                    break;
                }
            }
            if (j != -1) {
                byteBufferReader.a((int) (j - byteBuffer.position()));
                byteBufferReader.a(12);
                long j2 = byteBuffer.getInt() & 4294967295L;
                for (int i4 = 0; i4 < j2; i4++) {
                    int i5 = byteBuffer.getInt();
                    long j3 = byteBuffer.getInt() & 4294967295L;
                    byteBuffer.getInt();
                    if (1164798569 == i5 || 1701669481 == i5) {
                        duplicate.position((int) (j3 + j));
                        ?? table = new Table();
                        duplicate.order(ByteOrder.LITTLE_ENDIAN);
                        int position = duplicate.position() + duplicate.getInt(duplicate.position());
                        table.b = duplicate;
                        table.f1039a = position;
                        int i6 = position - duplicate.getInt(position);
                        table.f1040c = i6;
                        table.d = table.b.getShort(i6);
                        return table;
                    }
                }
            }
            throw new IOException("Cannot read metadata.");
        }
        throw new IOException("Cannot read metadata.");
    }
}
