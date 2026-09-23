package androidx.emoji2.text;

import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.flatbuffer.MetadataItem;

@RequiresApi
/* loaded from: classes.dex */
public abstract class EmojiSpan extends ReplacementSpan {
    public final TypefaceEmojiRasterizer f;

    /* renamed from: c, reason: collision with root package name */
    public final Paint.FontMetricsInt f1017c = new Paint.FontMetricsInt();
    public short g = -1;
    public float h = 1.0f;

    public EmojiSpan(TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        Preconditions.c(typefaceEmojiRasterizer, "rasterizer cannot be null");
        this.f = typefaceEmojiRasterizer;
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        short s;
        Paint.FontMetricsInt fontMetricsInt2 = this.f1017c;
        paint.getFontMetricsInt(fontMetricsInt2);
        float abs = Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f;
        TypefaceEmojiRasterizer typefaceEmojiRasterizer = this.f;
        MetadataItem b = typefaceEmojiRasterizer.b();
        int a2 = b.a(14);
        short s2 = 0;
        if (a2 != 0) {
            s = b.b.getShort(a2 + b.f1039a);
        } else {
            s = 0;
        }
        this.h = abs / s;
        MetadataItem b2 = typefaceEmojiRasterizer.b();
        int a3 = b2.a(14);
        if (a3 != 0) {
            b2.b.getShort(a3 + b2.f1039a);
        }
        MetadataItem b3 = typefaceEmojiRasterizer.b();
        int a4 = b3.a(12);
        if (a4 != 0) {
            s2 = b3.b.getShort(a4 + b3.f1039a);
        }
        short s3 = (short) (s2 * this.h);
        this.g = s3;
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return s3;
    }
}
