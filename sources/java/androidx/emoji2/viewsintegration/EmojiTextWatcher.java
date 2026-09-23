package androidx.emoji2.viewsintegration;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.WeakReference;

@RequiresApi
@RestrictTo
/* loaded from: classes.dex */
final class EmojiTextWatcher implements TextWatcher {

    /* renamed from: c, reason: collision with root package name */
    public final EditText f1055c;
    public EmojiCompat.InitCallback f;
    public boolean g = true;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class InitCallbackImpl extends EmojiCompat.InitCallback {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f1056a;

        public InitCallbackImpl(EditText editText) {
            this.f1056a = new WeakReference(editText);
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public final void b() {
            EmojiTextWatcher.a((EditText) this.f1056a.get(), 1);
        }
    }

    public EmojiTextWatcher(EditText editText) {
        this.f1055c = editText;
    }

    public static void a(EditText editText, int i) {
        int length;
        if (i == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            EmojiCompat a2 = EmojiCompat.a();
            if (editableText == null) {
                length = 0;
            } else {
                a2.getClass();
                length = editableText.length();
            }
            a2.g(editableText, 0, length);
            if (selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionStart, selectionEnd);
            } else if (selectionStart >= 0) {
                Selection.setSelection(editableText, selectionStart);
            } else if (selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionEnd);
            }
        }
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        EditText editText = this.f1055c;
        if (!editText.isInEditMode() && this.g && EmojiCompat.k != null && i2 <= i3 && (charSequence instanceof Spannable)) {
            int b = EmojiCompat.a().b();
            if (b != 0) {
                if (b != 1) {
                    if (b != 3) {
                        return;
                    }
                } else {
                    EmojiCompat.a().g((Spannable) charSequence, i, i3 + i);
                    return;
                }
            }
            EmojiCompat a2 = EmojiCompat.a();
            if (this.f == null) {
                this.f = new InitCallbackImpl(editText);
            }
            a2.h(this.f);
        }
    }
}
