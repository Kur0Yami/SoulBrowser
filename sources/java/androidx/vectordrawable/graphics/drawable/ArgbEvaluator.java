package androidx.vectordrawable.graphics.drawable;

import android.animation.TypeEvaluator;
import android.support.v4.media.a;
import androidx.annotation.RestrictTo;
import kotlin.KotlinVersion;

@RestrictTo
/* loaded from: classes.dex */
public class ArgbEvaluator implements TypeEvaluator {

    /* renamed from: a, reason: collision with root package name */
    public static final ArgbEvaluator f1739a = new Object();

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f, Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        float f2 = ((intValue >> 24) & KotlinVersion.MAX_COMPONENT_VALUE) / 255.0f;
        float f3 = ((intValue >> 16) & KotlinVersion.MAX_COMPONENT_VALUE) / 255.0f;
        float f4 = ((intValue >> 8) & KotlinVersion.MAX_COMPONENT_VALUE) / 255.0f;
        int intValue2 = ((Integer) obj2).intValue();
        float f5 = ((intValue2 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE) / 255.0f;
        float f6 = ((intValue2 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE) / 255.0f;
        float f7 = ((intValue2 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE) / 255.0f;
        float pow = (float) Math.pow(f3, 2.2d);
        float pow2 = (float) Math.pow(f4, 2.2d);
        float pow3 = (float) Math.pow((intValue & KotlinVersion.MAX_COMPONENT_VALUE) / 255.0f, 2.2d);
        float pow4 = (float) Math.pow(f6, 2.2d);
        float pow5 = (float) Math.pow(f7, 2.2d);
        float pow6 = (float) Math.pow((intValue2 & KotlinVersion.MAX_COMPONENT_VALUE) / 255.0f, 2.2d);
        float a2 = a.a(f5, f2, f, f2);
        float a3 = a.a(pow4, pow, f, pow);
        float a4 = a.a(pow5, pow2, f, pow2);
        float a5 = a.a(pow6, pow3, f, pow3);
        float pow7 = ((float) Math.pow(a3, 0.45454545454545453d)) * 255.0f;
        float pow8 = ((float) Math.pow(a4, 0.45454545454545453d)) * 255.0f;
        return Integer.valueOf(Math.round(((float) Math.pow(a5, 0.45454545454545453d)) * 255.0f) | (Math.round(pow7) << 16) | (Math.round(a2 * 255.0f) << 24) | (Math.round(pow8) << 8));
    }
}
