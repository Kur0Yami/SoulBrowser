package androidx.emoji2.viewsintegration;

import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public final class EmojiEditTextHelper {

    /* renamed from: a, reason: collision with root package name */
    public final HelperInternal19 f1043a;

    /* loaded from: classes.dex */
    public static class HelperInternal {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class HelperInternal19 extends HelperInternal {

        /* renamed from: a, reason: collision with root package name */
        public final EditText f1044a;
        public final EmojiTextWatcher b;

        public HelperInternal19(EditText editText) {
            this.f1044a = editText;
            EmojiTextWatcher emojiTextWatcher = new EmojiTextWatcher(editText);
            this.b = emojiTextWatcher;
            editText.addTextChangedListener(emojiTextWatcher);
            if (EmojiEditableFactory.b == null) {
                synchronized (EmojiEditableFactory.f1045a) {
                    try {
                        if (EmojiEditableFactory.b == null) {
                            Editable.Factory factory = new Editable.Factory();
                            try {
                                EmojiEditableFactory.f1046c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, EmojiEditableFactory.class.getClassLoader());
                            } catch (Throwable unused) {
                            }
                            EmojiEditableFactory.b = factory;
                        }
                    } finally {
                    }
                }
            }
            editText.setEditableFactory(EmojiEditableFactory.b);
        }
    }

    public EmojiEditTextHelper(EditText editText) {
        this.f1043a = new HelperInternal19(editText);
    }

    public final KeyListener a(KeyListener keyListener) {
        this.f1043a.getClass();
        if (keyListener instanceof EmojiKeyListener) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        if (keyListener instanceof NumberKeyListener) {
            return keyListener;
        }
        return new EmojiKeyListener(keyListener);
    }

    public final InputConnection b(InputConnection inputConnection, EditorInfo editorInfo) {
        if (inputConnection == null) {
            return null;
        }
        HelperInternal19 helperInternal19 = this.f1043a;
        helperInternal19.getClass();
        if (inputConnection instanceof EmojiInputConnection) {
            return inputConnection;
        }
        return new EmojiInputConnection(helperInternal19.f1044a, inputConnection, editorInfo);
    }

    public final void c(boolean z) {
        EmojiTextWatcher emojiTextWatcher = this.f1043a.b;
        if (emojiTextWatcher.g != z) {
            if (emojiTextWatcher.f != null) {
                EmojiCompat a2 = EmojiCompat.a();
                EmojiCompat.InitCallback initCallback = emojiTextWatcher.f;
                a2.getClass();
                Preconditions.c(initCallback, "initCallback cannot be null");
                ReentrantReadWriteLock reentrantReadWriteLock = a2.f1000a;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    a2.b.remove(initCallback);
                } finally {
                    reentrantReadWriteLock.writeLock().unlock();
                }
            }
            emojiTextWatcher.g = z;
            if (z) {
                EmojiTextWatcher.a(emojiTextWatcher.f1055c, EmojiCompat.a().b());
            }
        }
    }
}
