package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.graphics.Typeface;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.LongSparseArray;

@RequiresApi
@SuppressLint({"SoonBlockedPrivateApi"})
@RestrictTo
/* loaded from: classes.dex */
final class WeightTypefaceApi21 {
    static {
        try {
            Typeface.class.getDeclaredField("native_instance");
            Class cls = Long.TYPE;
            Class cls2 = Integer.TYPE;
            try {
                Typeface.class.getDeclaredMethod("nativeCreateFromTypeface", cls, cls2).setAccessible(true);
                Typeface.class.getDeclaredMethod("nativeCreateWeightAlias", cls, cls2).setAccessible(true);
                Typeface.class.getDeclaredConstructor(cls).setAccessible(true);
            } catch (NoSuchMethodException e) {
                e = e;
                Log.e("WeightTypeface", e.getClass().getName(), e);
                new LongSparseArray(3);
            }
        } catch (NoSuchFieldException | NoSuchMethodException e2) {
            e = e2;
        }
        new LongSparseArray(3);
    }
}
