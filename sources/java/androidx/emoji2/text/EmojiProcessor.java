package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.KeyEvent;
import androidx.annotation.AnyThread;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.MetadataRepo;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
@AnyThread
@RequiresApi
@RestrictTo
/* loaded from: classes.dex */
public final class EmojiProcessor {

    /* renamed from: a, reason: collision with root package name */
    public final EmojiCompat.SpanFactory f1011a;
    public final MetadataRepo b;

    /* renamed from: c, reason: collision with root package name */
    public final EmojiCompat.GlyphChecker f1012c;

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class CodepointIndexFinder {
    }

    /* loaded from: classes.dex */
    public static class EmojiProcessAddSpanCallback implements EmojiProcessCallback<UnprecomputeTextOnModificationSpannable> {

        /* renamed from: a, reason: collision with root package name */
        public UnprecomputeTextOnModificationSpannable f1013a;
        public final EmojiCompat.SpanFactory b;

        public EmojiProcessAddSpanCallback(UnprecomputeTextOnModificationSpannable unprecomputeTextOnModificationSpannable, EmojiCompat.SpanFactory spanFactory) {
            this.f1013a = unprecomputeTextOnModificationSpannable;
            this.b = spanFactory;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final boolean a(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            Spannable spannableString;
            if ((typefaceEmojiRasterizer.f1027c & 4) > 0) {
                return true;
            }
            if (this.f1013a == null) {
                if (charSequence instanceof Spannable) {
                    spannableString = (Spannable) charSequence;
                } else {
                    spannableString = new SpannableString(charSequence);
                }
                this.f1013a = new UnprecomputeTextOnModificationSpannable(spannableString);
            }
            this.f1013a.setSpan(this.b.a(typefaceEmojiRasterizer), i, i2, 33);
            return true;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final Object getResult() {
            return this.f1013a;
        }
    }

    /* loaded from: classes.dex */
    public interface EmojiProcessCallback<T> {
        boolean a(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer);

        Object getResult();
    }

    /* loaded from: classes.dex */
    public static class EmojiProcessLookupCallback implements EmojiProcessCallback<EmojiProcessLookupCallback> {
        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final boolean a(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            return (i > 0 || i2 <= 0) && i2 <= 0;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final Object getResult() {
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static class MarkExclusionCallback implements EmojiProcessCallback<MarkExclusionCallback> {

        /* renamed from: a, reason: collision with root package name */
        public final String f1014a;

        public MarkExclusionCallback(String str) {
            this.f1014a = str;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final boolean a(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            if (TextUtils.equals(charSequence.subSequence(i, i2), this.f1014a)) {
                typefaceEmojiRasterizer.f1027c = (typefaceEmojiRasterizer.f1027c & 3) | 4;
                return false;
            }
            return true;
        }

        @Override // androidx.emoji2.text.EmojiProcessor.EmojiProcessCallback
        public final Object getResult() {
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static final class ProcessorSm {

        /* renamed from: a, reason: collision with root package name */
        public int f1015a = 1;
        public final MetadataRepo.Node b;

        /* renamed from: c, reason: collision with root package name */
        public MetadataRepo.Node f1016c;
        public MetadataRepo.Node d;
        public int e;
        public int f;

        public ProcessorSm(MetadataRepo.Node node) {
            this.b = node;
            this.f1016c = node;
        }

        public final void a() {
            this.f1015a = 1;
            this.f1016c = this.b;
            this.f = 0;
        }

        public final boolean b() {
            MetadataItem b = this.f1016c.b.b();
            int a2 = b.a(6);
            if ((a2 != 0 && b.b.get(a2 + b.f1039a) != 0) || this.e == 65039) {
                return true;
            }
            return false;
        }
    }

    public EmojiProcessor(MetadataRepo metadataRepo, EmojiCompat.DefaultSpanFactory defaultSpanFactory, EmojiCompat.GlyphChecker glyphChecker, Set set) {
        this.f1011a = defaultSpanFactory;
        this.b = metadataRepo;
        this.f1012c = glyphChecker;
        if (!set.isEmpty()) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                int[] iArr = (int[]) it.next();
                String str = new String(iArr, 0, iArr.length);
                c(str, 0, str.length(), 1, true, new MarkExclusionCallback(str));
            }
        }
    }

    public static boolean a(Editable editable, KeyEvent keyEvent, boolean z) {
        EmojiSpan[] emojiSpanArr;
        if (KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (emojiSpanArr = (EmojiSpan[]) editable.getSpans(selectionStart, selectionEnd, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
                for (EmojiSpan emojiSpan : emojiSpanArr) {
                    int spanStart = editable.getSpanStart(emojiSpan);
                    int spanEnd = editable.getSpanEnd(emojiSpan);
                    if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                        editable.delete(spanStart, spanEnd);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean b(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        int i3;
        if ((typefaceEmojiRasterizer.f1027c & 3) == 0) {
            EmojiCompat.GlyphChecker glyphChecker = this.f1012c;
            MetadataItem b = typefaceEmojiRasterizer.b();
            int a2 = b.a(8);
            if (a2 != 0) {
                b.b.getShort(a2 + b.f1039a);
            }
            boolean a3 = glyphChecker.a(charSequence, i, i2);
            int i4 = typefaceEmojiRasterizer.f1027c & 4;
            if (a3) {
                i3 = i4 | 2;
            } else {
                i3 = i4 | 1;
            }
            typefaceEmojiRasterizer.f1027c = i3;
        }
        if ((typefaceEmojiRasterizer.f1027c & 3) == 2) {
            return true;
        }
        return false;
    }

    public final Object c(CharSequence charSequence, int i, int i2, int i3, boolean z, EmojiProcessCallback emojiProcessCallback) {
        int i4;
        MetadataRepo.Node node;
        char c2;
        ProcessorSm processorSm = new ProcessorSm(this.b.f1022c);
        int codePointAt = Character.codePointAt(charSequence, i);
        int i5 = 0;
        boolean z2 = true;
        int i6 = i;
        loop0: while (true) {
            i4 = i6;
            while (i6 < i2 && i5 < i3 && z2) {
                SparseArray sparseArray = processorSm.f1016c.f1023a;
                if (sparseArray == null) {
                    node = null;
                } else {
                    node = (MetadataRepo.Node) sparseArray.get(codePointAt);
                }
                if (processorSm.f1015a != 2) {
                    if (node == null) {
                        processorSm.a();
                        c2 = 1;
                    } else {
                        processorSm.f1015a = 2;
                        processorSm.f1016c = node;
                        processorSm.f = 1;
                        c2 = 2;
                    }
                } else {
                    if (node != null) {
                        processorSm.f1016c = node;
                        processorSm.f++;
                    } else {
                        if (codePointAt == 65038) {
                            processorSm.a();
                        } else if (codePointAt != 65039) {
                            MetadataRepo.Node node2 = processorSm.f1016c;
                            if (node2.b != null) {
                                if (processorSm.f == 1) {
                                    if (processorSm.b()) {
                                        processorSm.d = processorSm.f1016c;
                                        processorSm.a();
                                    } else {
                                        processorSm.a();
                                    }
                                } else {
                                    processorSm.d = node2;
                                    processorSm.a();
                                }
                                c2 = 3;
                            } else {
                                processorSm.a();
                            }
                        }
                        c2 = 1;
                    }
                    c2 = 2;
                }
                processorSm.e = codePointAt;
                if (c2 != 1) {
                    if (c2 != 2) {
                        if (c2 == 3) {
                            if (z || !b(charSequence, i4, i6, processorSm.d.b)) {
                                z2 = emojiProcessCallback.a(charSequence, i4, i6, processorSm.d.b);
                                i5++;
                            }
                        }
                    } else {
                        int charCount = Character.charCount(codePointAt) + i6;
                        if (charCount < i2) {
                            codePointAt = Character.codePointAt(charSequence, charCount);
                        }
                        i6 = charCount;
                    }
                } else {
                    i6 = Character.charCount(Character.codePointAt(charSequence, i4)) + i4;
                    if (i6 < i2) {
                        codePointAt = Character.codePointAt(charSequence, i6);
                    }
                }
            }
        }
        if (processorSm.f1015a == 2 && processorSm.f1016c.b != null && ((processorSm.f > 1 || processorSm.b()) && i5 < i3 && z2 && (z || !b(charSequence, i4, i6, processorSm.f1016c.b)))) {
            emojiProcessCallback.a(charSequence, i4, i6, processorSm.f1016c.b);
        }
        return emojiProcessCallback.getResult();
    }
}
