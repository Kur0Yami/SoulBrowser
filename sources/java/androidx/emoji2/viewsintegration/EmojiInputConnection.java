package androidx.emoji2.viewsintegration;

import android.text.Editable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;

@RequiresApi
@RestrictTo
/* loaded from: classes.dex */
final class EmojiInputConnection extends InputConnectionWrapper {

    /* renamed from: a, reason: collision with root package name */
    public final EditText f1047a;
    public final EmojiCompatDeleteHelper b;

    /* loaded from: classes.dex */
    public static class EmojiCompatDeleteHelper {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.emoji2.viewsintegration.EmojiInputConnection$EmojiCompatDeleteHelper] */
    public EmojiInputConnection(EditText editText, InputConnection inputConnection, EditorInfo editorInfo) {
        super(inputConnection, false);
        ?? obj = new Object();
        this.f1047a = editText;
        this.b = obj;
        if (EmojiCompat.k != null) {
            EmojiCompat.a().i(editorInfo);
        }
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i, int i2) {
        Editable editableText = this.f1047a.getEditableText();
        this.b.getClass();
        if (!EmojiCompat.c(this, editableText, i, i2, false) && !super.deleteSurroundingText(i, i2)) {
            return false;
        }
        return true;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i, int i2) {
        Editable editableText = this.f1047a.getEditableText();
        this.b.getClass();
        if (EmojiCompat.c(this, editableText, i, i2, true) || super.deleteSurroundingTextInCodePoints(i, i2)) {
            return true;
        }
        return false;
    }
}
