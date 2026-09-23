package androidx.appcompat.text;

import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes.dex */
public class AllCapsTransformationMethod implements TransformationMethod {
    @Override // android.text.method.TransformationMethod
    public final CharSequence getTransformation(CharSequence charSequence, View view) {
        if (charSequence == null) {
            return null;
        }
        return charSequence.toString().toUpperCase(null);
    }

    @Override // android.text.method.TransformationMethod
    public final void onFocusChanged(View view, CharSequence charSequence, boolean z, int i, Rect rect) {
    }
}
