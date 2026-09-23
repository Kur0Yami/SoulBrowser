package androidx.core.view.inputmethod;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import androidx.annotation.RequiresApi;

@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public final class EditorInfoCompat {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f846a = new String[0];

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api30Impl {
        public static void a(EditorInfo editorInfo, CharSequence charSequence) {
            editorInfo.setInitialSurroundingSubText(charSequence, 0);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api35Impl {
    }

    public static String[] a(EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 25) {
            String[] strArr = editorInfo.contentMimeTypes;
            if (strArr != null) {
                return strArr;
            }
        } else {
            Bundle bundle = editorInfo.extras;
            if (bundle != null) {
                String[] stringArray = bundle.getStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
                if (stringArray == null) {
                    stringArray = editorInfo.extras.getStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
                }
                if (stringArray != null) {
                    return stringArray;
                }
            }
        }
        return f846a;
    }

    public static void b(EditorInfo editorInfo, String[] strArr) {
        if (Build.VERSION.SDK_INT >= 25) {
            editorInfo.contentMimeTypes = strArr;
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", strArr);
        editorInfo.extras.putStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", strArr);
    }

    public static void c(EditorInfo editorInfo, CharSequence charSequence) {
        int i;
        int i2;
        CharSequence subSequence;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 30) {
            Api30Impl.a(editorInfo, charSequence);
            return;
        }
        charSequence.getClass();
        if (i3 >= 30) {
            Api30Impl.a(editorInfo, charSequence);
            return;
        }
        int i4 = editorInfo.initialSelStart;
        int i5 = editorInfo.initialSelEnd;
        if (i4 > i5) {
            i = i5;
        } else {
            i = i4;
        }
        if (i4 <= i5) {
            i4 = i5;
        }
        int length = charSequence.length();
        if (i >= 0 && i4 <= length) {
            int i6 = editorInfo.inputType & 4095;
            if (i6 != 129 && i6 != 225 && i6 != 18) {
                if (length <= 2048) {
                    d(editorInfo, charSequence, i, i4);
                    return;
                }
                int i7 = i4 - i;
                if (i7 > 1024) {
                    i2 = 0;
                } else {
                    i2 = i7;
                }
                int i8 = 2048 - i2;
                int min = Math.min(charSequence.length() - i4, i8 - Math.min(i, (int) (i8 * 0.8d)));
                int min2 = Math.min(i, i8 - min);
                int i9 = i - min2;
                if (Character.isLowSurrogate(charSequence.charAt(i9))) {
                    i9++;
                    min2--;
                }
                if (Character.isHighSurrogate(charSequence.charAt((i4 + min) - 1))) {
                    min--;
                }
                int i10 = min2 + i2;
                int i11 = i10 + min;
                if (i2 != i7) {
                    subSequence = TextUtils.concat(charSequence.subSequence(i9, i9 + min2), charSequence.subSequence(i4, min + i4));
                } else {
                    subSequence = charSequence.subSequence(i9, i11 + i9);
                }
                d(editorInfo, subSequence, min2, i10);
                return;
            }
            d(editorInfo, null, 0, 0);
            return;
        }
        d(editorInfo, null, 0, 0);
    }

    public static void d(EditorInfo editorInfo, CharSequence charSequence, int i, int i2) {
        SpannableStringBuilder spannableStringBuilder;
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        if (charSequence != null) {
            spannableStringBuilder = new SpannableStringBuilder(charSequence);
        } else {
            spannableStringBuilder = null;
        }
        editorInfo.extras.putCharSequence("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT", spannableStringBuilder);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD", i);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END", i2);
    }
}
