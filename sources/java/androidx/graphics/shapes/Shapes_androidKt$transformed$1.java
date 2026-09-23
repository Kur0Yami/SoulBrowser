package androidx.graphics.shapes;

import android.graphics.Matrix;
import androidx.collection.FloatFloatPair;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\u0010\u0000\u001a\u00060\u0001j\u0002`\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "Landroidx/collection/FloatFloatPair;", "Landroidx/graphics/shapes/TransformResult;", "x", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "y", "transform-XgqJiTY", "(FF)J"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class Shapes_androidKt$transformed$1 implements PointTransformer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ float[] f1181a;
    public final /* synthetic */ Matrix b;

    public Shapes_androidKt$transformed$1(float[] fArr, Matrix matrix) {
        this.f1181a = fArr;
        this.b = matrix;
    }

    public final long a(float f, float f2) {
        float[] fArr = this.f1181a;
        fArr[0] = f;
        fArr[1] = f2;
        this.b.mapPoints(fArr);
        return FloatFloatPair.a(fArr[0], fArr[1]);
    }
}
