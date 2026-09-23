package androidx.emoji2.text;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import androidx.annotation.AnyThread;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArraySet;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiExclusions;
import androidx.emoji2.text.flatbuffer.MetadataList;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReentrantReadWriteLock;

@AnyThread
/* loaded from: classes.dex */
public class EmojiCompat {
    public static final Object j = new Object();
    public static volatile EmojiCompat k;

    /* renamed from: a, reason: collision with root package name */
    public final ReentrantReadWriteLock f1000a;
    public final ArraySet b;

    /* renamed from: c, reason: collision with root package name */
    public volatile int f1001c;
    public final Handler d;
    public final CompatInternal19 e;
    public final MetadataRepoLoader f;
    public final DefaultSpanFactory g;
    public final int h;
    public final GlyphChecker i;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface CodepointSequenceMatchResult {
    }

    /* loaded from: classes.dex */
    public static class CompatInternal {

        /* renamed from: a, reason: collision with root package name */
        public final EmojiCompat f1002a;

        public CompatInternal(EmojiCompat emojiCompat) {
            this.f1002a = emojiCompat;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class CompatInternal19 extends CompatInternal {
        public volatile EmojiProcessor b;

        /* renamed from: c, reason: collision with root package name */
        public volatile MetadataRepo f1003c;

        /* renamed from: androidx.emoji2.text.EmojiCompat$CompatInternal19$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 extends MetadataRepoLoaderCallback {
            public AnonymousClass1() {
            }

            @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
            public final void a(Throwable th) {
                CompatInternal19.this.f1002a.f(th);
            }

            @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
            public final void b(MetadataRepo metadataRepo) {
                Set<int[]> a2;
                CompatInternal19 compatInternal19 = CompatInternal19.this;
                compatInternal19.f1003c = metadataRepo;
                MetadataRepo metadataRepo2 = compatInternal19.f1003c;
                EmojiCompat emojiCompat = compatInternal19.f1002a;
                DefaultSpanFactory defaultSpanFactory = emojiCompat.g;
                GlyphChecker glyphChecker = emojiCompat.i;
                if (Build.VERSION.SDK_INT >= 34) {
                    a2 = EmojiExclusions.EmojiExclusions_Api34.a();
                } else {
                    a2 = EmojiExclusions.EmojiExclusions_Reflections.a();
                }
                compatInternal19.b = new EmojiProcessor(metadataRepo2, defaultSpanFactory, glyphChecker, a2);
                EmojiCompat emojiCompat2 = compatInternal19.f1002a;
                emojiCompat2.getClass();
                ArrayList arrayList = new ArrayList();
                emojiCompat2.f1000a.writeLock().lock();
                try {
                    emojiCompat2.f1001c = 1;
                    arrayList.addAll(emojiCompat2.b);
                    emojiCompat2.b.clear();
                    emojiCompat2.f1000a.writeLock().unlock();
                    emojiCompat2.d.post(new ListenerDispatcher(arrayList, emojiCompat2.f1001c, null));
                } catch (Throwable th) {
                    emojiCompat2.f1000a.writeLock().unlock();
                    throw th;
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Config {

        /* renamed from: a, reason: collision with root package name */
        public final MetadataRepoLoader f1005a;
        public int b = 0;

        /* renamed from: c, reason: collision with root package name */
        public final GlyphChecker f1006c = new DefaultGlyphChecker();

        public Config(MetadataRepoLoader metadataRepoLoader) {
            this.f1005a = metadataRepoLoader;
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public static class DefaultSpanFactory implements SpanFactory {
        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.emoji2.text.EmojiSpan, androidx.emoji2.text.TypefaceEmojiSpan] */
        @Override // androidx.emoji2.text.EmojiCompat.SpanFactory
        public final TypefaceEmojiSpan a(TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            return new EmojiSpan(typefaceEmojiRasterizer);
        }
    }

    /* loaded from: classes.dex */
    public interface GlyphChecker {
        boolean a(CharSequence charSequence, int i, int i2);
    }

    /* loaded from: classes.dex */
    public static class ListenerDispatcher implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList f1007c;
        public final int f;

        public ListenerDispatcher(List list, int i, Throwable th) {
            Preconditions.c(list, "initCallbacks cannot be null");
            this.f1007c = new ArrayList(list);
            this.f = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ArrayList arrayList = this.f1007c;
            int size = arrayList.size();
            int i = 0;
            if (this.f != 1) {
                while (i < size) {
                    ((InitCallback) arrayList.get(i)).a();
                    i++;
                }
            } else {
                while (i < size) {
                    ((InitCallback) arrayList.get(i)).b();
                    i++;
                }
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface LoadStrategy {
    }

    /* loaded from: classes.dex */
    public interface MetadataRepoLoader {
        void a(MetadataRepoLoaderCallback metadataRepoLoaderCallback);
    }

    /* loaded from: classes.dex */
    public static abstract class MetadataRepoLoaderCallback {
        public abstract void a(Throwable th);

        public abstract void b(MetadataRepo metadataRepo);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ReplaceStrategy {
    }

    /* loaded from: classes.dex */
    public interface SpanFactory {
        TypefaceEmojiSpan a(TypefaceEmojiRasterizer typefaceEmojiRasterizer);
    }

    /* JADX WARN: Type inference failed for: r6v4, types: [androidx.emoji2.text.EmojiCompat$DefaultSpanFactory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v5, types: [androidx.emoji2.text.EmojiCompat$CompatInternal, androidx.emoji2.text.EmojiCompat$CompatInternal19] */
    public EmojiCompat(Config config) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f1000a = reentrantReadWriteLock;
        this.f1001c = 3;
        MetadataRepoLoader metadataRepoLoader = config.f1005a;
        this.f = metadataRepoLoader;
        int i = config.b;
        this.h = i;
        this.i = config.f1006c;
        this.d = new Handler(Looper.getMainLooper());
        this.b = new ArraySet(0);
        this.g = new Object();
        ?? compatInternal = new CompatInternal(this);
        this.e = compatInternal;
        reentrantReadWriteLock.writeLock().lock();
        if (i == 0) {
            try {
                this.f1001c = 0;
            } catch (Throwable th) {
                this.f1000a.writeLock().unlock();
                throw th;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (b() == 0) {
            try {
                metadataRepoLoader.a(new CompatInternal19.AnonymousClass1());
            } catch (Throwable th2) {
                f(th2);
            }
        }
    }

    public static EmojiCompat a() {
        EmojiCompat emojiCompat;
        boolean z;
        synchronized (j) {
            try {
                emojiCompat = k;
                if (emojiCompat != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    throw new IllegalStateException("EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
                }
            } finally {
            }
        }
        return emojiCompat;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0045, code lost:
    
        if (java.lang.Character.isHighSurrogate(r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0082, code lost:
    
        if (java.lang.Character.isLowSurrogate(r5) != false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0075, code lost:
    
        if (r11 != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00a2, code lost:
    
        if (r10 != (-1)) goto L70;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean c(android.view.inputmethod.InputConnection r7, android.text.Editable r8, int r9, int r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.EmojiCompat.c(android.view.inputmethod.InputConnection, android.text.Editable, int, int, boolean):boolean");
    }

    public static boolean d(Editable editable, int i, KeyEvent keyEvent) {
        boolean a2;
        if (i != 67) {
            if (i != 112) {
                a2 = false;
            } else {
                a2 = EmojiProcessor.a(editable, keyEvent, true);
            }
        } else {
            a2 = EmojiProcessor.a(editable, keyEvent, false);
        }
        if (!a2) {
            return false;
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    public final int b() {
        this.f1000a.readLock().lock();
        try {
            return this.f1001c;
        } finally {
            this.f1000a.readLock().unlock();
        }
    }

    public final void e() {
        boolean z;
        if (this.h == 1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (b() == 1) {
                return;
            }
            this.f1000a.writeLock().lock();
            try {
                if (this.f1001c == 0) {
                    return;
                }
                this.f1001c = 0;
                this.f1000a.writeLock().unlock();
                CompatInternal19 compatInternal19 = this.e;
                EmojiCompat emojiCompat = compatInternal19.f1002a;
                try {
                    emojiCompat.f.a(new CompatInternal19.AnonymousClass1());
                    return;
                } catch (Throwable th) {
                    emojiCompat.f(th);
                    return;
                }
            } finally {
                this.f1000a.writeLock().unlock();
            }
        }
        throw new IllegalStateException("Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
    }

    public final void f(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f1000a.writeLock().lock();
        try {
            this.f1001c = 2;
            arrayList.addAll(this.b);
            this.b.clear();
            this.f1000a.writeLock().unlock();
            this.d.post(new ListenerDispatcher(arrayList, this.f1001c, th));
        } catch (Throwable th2) {
            this.f1000a.writeLock().unlock();
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x009f A[Catch: all -> 0x0082, TryCatch #0 {all -> 0x0082, blocks: (B:28:0x005a, B:31:0x005f, B:33:0x0063, B:35:0x0070, B:37:0x008f, B:39:0x0099, B:41:0x009c, B:43:0x009f, B:45:0x00af, B:46:0x00b2), top: B:27:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.Object, androidx.emoji2.text.UnprecomputeTextOnModificationSpannable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.CharSequence g(java.lang.CharSequence r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.EmojiCompat.g(java.lang.CharSequence, int, int):java.lang.CharSequence");
    }

    public final void h(InitCallback initCallback) {
        Preconditions.c(initCallback, "initCallback cannot be null");
        this.f1000a.writeLock().lock();
        try {
            if (this.f1001c != 1 && this.f1001c != 2) {
                this.b.add(initCallback);
                this.f1000a.writeLock().unlock();
            }
            this.d.post(new ListenerDispatcher(Arrays.asList(initCallback), this.f1001c, null));
            this.f1000a.writeLock().unlock();
        } catch (Throwable th) {
            this.f1000a.writeLock().unlock();
            throw th;
        }
    }

    public final void i(EditorInfo editorInfo) {
        int i;
        if (b() != 1 || editorInfo == null) {
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        CompatInternal19 compatInternal19 = this.e;
        compatInternal19.getClass();
        Bundle bundle = editorInfo.extras;
        MetadataList metadataList = compatInternal19.f1003c.f1021a;
        int a2 = metadataList.a(4);
        if (a2 != 0) {
            i = metadataList.b.getInt(a2 + metadataList.f1039a);
        } else {
            i = 0;
        }
        bundle.putInt("android.support.text.emoji.emojiCompat_metadataVersion", i);
        editorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
    }

    /* loaded from: classes.dex */
    public static abstract class InitCallback {
        public void b() {
        }

        public void a() {
        }
    }
}
