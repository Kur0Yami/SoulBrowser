package androidx.emoji2.viewsintegration;

import android.text.Editable;
import androidx.emoji2.text.SpannableBuilder;

/* loaded from: classes.dex */
final class EmojiEditableFactory extends Editable.Factory {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f1045a = new Object();
    public static volatile Editable.Factory b;

    /* renamed from: c, reason: collision with root package name */
    public static Class f1046c;

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = f1046c;
        if (cls != null) {
            return new SpannableBuilder(cls, charSequence);
        }
        return super.newEditable(charSequence);
    }
}
