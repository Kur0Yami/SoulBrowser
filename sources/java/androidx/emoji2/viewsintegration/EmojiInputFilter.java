package androidx.emoji2.viewsintegration;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.WeakReference;

@RequiresApi
@RestrictTo
/* loaded from: classes.dex */
final class EmojiInputFilter implements InputFilter {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f1048a;
    public EmojiCompat.InitCallback b;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class InitCallbackImpl extends EmojiCompat.InitCallback {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f1049a;
        public final WeakReference b;

        public InitCallbackImpl(TextView textView, EmojiInputFilter emojiInputFilter) {
            this.f1049a = new WeakReference(textView);
            this.b = new WeakReference(emojiInputFilter);
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public final void b() {
            InputFilter[] filters;
            int length;
            TextView textView = (TextView) this.f1049a.get();
            InputFilter inputFilter = (InputFilter) this.b.get();
            if (inputFilter != null && textView != null && (filters = textView.getFilters()) != null) {
                for (InputFilter inputFilter2 : filters) {
                    if (inputFilter2 == inputFilter) {
                        if (textView.isAttachedToWindow()) {
                            CharSequence text = textView.getText();
                            EmojiCompat a2 = EmojiCompat.a();
                            if (text == null) {
                                length = 0;
                            } else {
                                a2.getClass();
                                length = text.length();
                            }
                            CharSequence g = a2.g(text, 0, length);
                            if (text != g) {
                                int selectionStart = Selection.getSelectionStart(g);
                                int selectionEnd = Selection.getSelectionEnd(g);
                                textView.setText(g);
                                if (g instanceof Spannable) {
                                    Spannable spannable = (Spannable) g;
                                    if (selectionStart >= 0 && selectionEnd >= 0) {
                                        Selection.setSelection(spannable, selectionStart, selectionEnd);
                                        return;
                                    } else if (selectionStart >= 0) {
                                        Selection.setSelection(spannable, selectionStart);
                                        return;
                                    } else {
                                        if (selectionEnd >= 0) {
                                            Selection.setSelection(spannable, selectionEnd);
                                            return;
                                        }
                                        return;
                                    }
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
            }
        }
    }

    public EmojiInputFilter(TextView textView) {
        this.f1048a = textView;
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        TextView textView = this.f1048a;
        if (!textView.isInEditMode()) {
            int b = EmojiCompat.a().b();
            if (b != 0) {
                if (b != 1) {
                    if (b != 3) {
                        return charSequence;
                    }
                } else {
                    if ((i4 != 0 || i3 != 0 || spanned.length() != 0 || charSequence != textView.getText()) && charSequence != null) {
                        if (i != 0 || i2 != charSequence.length()) {
                            charSequence = charSequence.subSequence(i, i2);
                        }
                        return EmojiCompat.a().g(charSequence, 0, charSequence.length());
                    }
                    return charSequence;
                }
            }
            EmojiCompat a2 = EmojiCompat.a();
            if (this.b == null) {
                this.b = new InitCallbackImpl(textView, this);
            }
            a2.h(this.b);
            return charSequence;
        }
        return charSequence;
    }
}
