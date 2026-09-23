package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.graphics.Shader;
import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes.dex */
public final class ComplexColorCompat {

    /* renamed from: a, reason: collision with root package name */
    public final Shader f660a;
    public final ColorStateList b;

    /* renamed from: c, reason: collision with root package name */
    public int f661c;

    public ComplexColorCompat(Shader shader, ColorStateList colorStateList, int i) {
        this.f660a = shader;
        this.b = colorStateList;
        this.f661c = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x01e8, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r1.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.content.res.ComplexColorCompat a(int r27, android.content.res.Resources.Theme r28, android.content.res.Resources r29) {
        /*
            Method dump skipped, instructions count: 672
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.ComplexColorCompat.a(int, android.content.res.Resources$Theme, android.content.res.Resources):androidx.core.content.res.ComplexColorCompat");
    }

    public final boolean b() {
        ColorStateList colorStateList;
        if (this.f660a == null && (colorStateList = this.b) != null && colorStateList.isStateful()) {
            return true;
        }
        return false;
    }
}
