package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.os.Trace;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.os.TraceCompat;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.FontRequestEmojiCompatConfig;
import java.nio.MappedByteBuffer;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class FontRequestEmojiCompatConfig extends EmojiCompat.Config {
    public static final FontProviderHelper d = new Object();

    /* loaded from: classes.dex */
    public static class ExponentialBackoffRetryPolicy extends RetryPolicy {
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public static class FontProviderHelper {
    }

    /* loaded from: classes.dex */
    public static class FontRequestMetadataLoader implements EmojiCompat.MetadataRepoLoader {

        /* renamed from: a, reason: collision with root package name */
        public final Context f1018a;
        public final FontRequest b;

        /* renamed from: c, reason: collision with root package name */
        public final FontProviderHelper f1019c;
        public final Object d = new Object();
        public Handler e;
        public ThreadPoolExecutor f;
        public ThreadPoolExecutor g;
        public EmojiCompat.MetadataRepoLoaderCallback h;
        public ContentObserver i;

        /* renamed from: androidx.emoji2.text.FontRequestEmojiCompatConfig$FontRequestMetadataLoader$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 extends ContentObserver {
            @Override // android.database.ContentObserver
            public final void onChange(boolean z, Uri uri) {
                throw null;
            }
        }

        public FontRequestMetadataLoader(Context context, FontRequest fontRequest) {
            Preconditions.c(context, "Context cannot be null");
            this.f1018a = context.getApplicationContext();
            this.b = fontRequest;
            this.f1019c = FontRequestEmojiCompatConfig.d;
        }

        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
        public final void a(EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback) {
            synchronized (this.d) {
                this.h = metadataRepoLoaderCallback;
            }
            c();
        }

        public final void b() {
            synchronized (this.d) {
                try {
                    this.h = null;
                    ContentObserver contentObserver = this.i;
                    if (contentObserver != null) {
                        FontProviderHelper fontProviderHelper = this.f1019c;
                        Context context = this.f1018a;
                        fontProviderHelper.getClass();
                        context.getContentResolver().unregisterContentObserver(contentObserver);
                        this.i = null;
                    }
                    Handler handler = this.e;
                    if (handler != null) {
                        handler.removeCallbacks(null);
                    }
                    this.e = null;
                    ThreadPoolExecutor threadPoolExecutor = this.g;
                    if (threadPoolExecutor != null) {
                        threadPoolExecutor.shutdown();
                    }
                    this.f = null;
                    this.g = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void c() {
            synchronized (this.d) {
                try {
                    if (this.h == null) {
                        return;
                    }
                    if (this.f == null) {
                        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new a("emojiCompat"));
                        threadPoolExecutor.allowCoreThreadTimeOut(true);
                        this.g = threadPoolExecutor;
                        this.f = threadPoolExecutor;
                    }
                    this.f.execute(new Runnable() { // from class: androidx.emoji2.text.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            FontRequestEmojiCompatConfig.FontRequestMetadataLoader fontRequestMetadataLoader = FontRequestEmojiCompatConfig.FontRequestMetadataLoader.this;
                            synchronized (fontRequestMetadataLoader.d) {
                                try {
                                    if (fontRequestMetadataLoader.h == null) {
                                        return;
                                    }
                                    try {
                                        FontsContractCompat.FontInfo d = fontRequestMetadataLoader.d();
                                        int i = d.e;
                                        if (i == 2) {
                                            synchronized (fontRequestMetadataLoader.d) {
                                            }
                                        }
                                        if (i == 0) {
                                            try {
                                                int i2 = TraceCompat.f712a;
                                                Trace.beginSection("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                                                FontRequestEmojiCompatConfig.FontProviderHelper fontProviderHelper = fontRequestMetadataLoader.f1019c;
                                                Context context = fontRequestMetadataLoader.f1018a;
                                                fontProviderHelper.getClass();
                                                Typeface a2 = TypefaceCompat.a(context, new FontsContractCompat.FontInfo[]{d}, 0);
                                                MappedByteBuffer e = TypefaceCompatUtil.e(fontRequestMetadataLoader.f1018a, d.f733a);
                                                if (e != null && a2 != null) {
                                                    try {
                                                        Trace.beginSection("EmojiCompat.MetadataRepo.create");
                                                        MetadataRepo metadataRepo = new MetadataRepo(a2, MetadataListReader.a(e));
                                                        Trace.endSection();
                                                        Trace.endSection();
                                                        synchronized (fontRequestMetadataLoader.d) {
                                                            try {
                                                                EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback = fontRequestMetadataLoader.h;
                                                                if (metadataRepoLoaderCallback != null) {
                                                                    metadataRepoLoaderCallback.b(metadataRepo);
                                                                }
                                                            } finally {
                                                            }
                                                        }
                                                        fontRequestMetadataLoader.b();
                                                        return;
                                                    } finally {
                                                        int i3 = TraceCompat.f712a;
                                                        Trace.endSection();
                                                    }
                                                }
                                                throw new RuntimeException("Unable to open file.");
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        throw new RuntimeException("fetchFonts result is not OK. (" + i + ")");
                                    } catch (Throwable th2) {
                                        synchronized (fontRequestMetadataLoader.d) {
                                            try {
                                                EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback2 = fontRequestMetadataLoader.h;
                                                if (metadataRepoLoaderCallback2 != null) {
                                                    metadataRepoLoaderCallback2.a(th2);
                                                }
                                                fontRequestMetadataLoader.b();
                                            } finally {
                                            }
                                        }
                                    }
                                } finally {
                                }
                            }
                        }
                    });
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final FontsContractCompat.FontInfo d() {
            try {
                FontProviderHelper fontProviderHelper = this.f1019c;
                Context context = this.f1018a;
                FontRequest fontRequest = this.b;
                fontProviderHelper.getClass();
                FontsContractCompat.FontFamilyResult a2 = FontsContractCompat.a(context, fontRequest);
                int i = a2.f732a;
                if (i == 0) {
                    FontsContractCompat.FontInfo[] fontInfoArr = (FontsContractCompat.FontInfo[]) a2.b.get(0);
                    if (fontInfoArr != null && fontInfoArr.length != 0) {
                        return fontInfoArr[0];
                    }
                    throw new RuntimeException("fetchFonts failed (empty result)");
                }
                throw new RuntimeException(android.support.v4.media.a.f(i, "fetchFonts failed (", ")"));
            } catch (PackageManager.NameNotFoundException e) {
                throw new RuntimeException("provider not found", e);
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class RetryPolicy {
    }
}
