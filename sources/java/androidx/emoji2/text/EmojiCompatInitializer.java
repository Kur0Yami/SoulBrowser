package androidx.emoji2.text;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import androidx.annotation.RequiresApi;
import androidx.core.os.TraceCompat;
import androidx.emoji2.text.ConcurrencyHelpers;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.EmojiCompatInitializer;
import androidx.emoji2.text.FontRequestEmojiCompatConfig;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public class EmojiCompatInitializer implements Initializer<Boolean> {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class BackgroundDefaultConfig extends EmojiCompat.Config {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class BackgroundDefaultLoader implements EmojiCompat.MetadataRepoLoader {

        /* renamed from: a, reason: collision with root package name */
        public final Context f1009a;

        public BackgroundDefaultLoader(Context context) {
            this.f1009a = context.getApplicationContext();
        }

        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
        public final void a(final EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback) {
            final ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new a("EmojiCompatInitializer"));
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            threadPoolExecutor.execute(new Runnable() { // from class: androidx.emoji2.text.b
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiCompatInitializer.BackgroundDefaultLoader backgroundDefaultLoader = EmojiCompatInitializer.BackgroundDefaultLoader.this;
                    final EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback2 = metadataRepoLoaderCallback;
                    final ThreadPoolExecutor threadPoolExecutor2 = threadPoolExecutor;
                    try {
                        FontRequestEmojiCompatConfig a2 = DefaultEmojiCompatConfig.a(backgroundDefaultLoader.f1009a);
                        if (a2 != null) {
                            FontRequestEmojiCompatConfig.FontRequestMetadataLoader fontRequestMetadataLoader = (FontRequestEmojiCompatConfig.FontRequestMetadataLoader) a2.f1005a;
                            synchronized (fontRequestMetadataLoader.d) {
                                fontRequestMetadataLoader.f = threadPoolExecutor2;
                            }
                            a2.f1005a.a(new EmojiCompat.MetadataRepoLoaderCallback() { // from class: androidx.emoji2.text.EmojiCompatInitializer.BackgroundDefaultLoader.1
                                @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                                public final void a(Throwable th) {
                                    ThreadPoolExecutor threadPoolExecutor3 = threadPoolExecutor2;
                                    try {
                                        EmojiCompat.MetadataRepoLoaderCallback.this.a(th);
                                    } finally {
                                        threadPoolExecutor3.shutdown();
                                    }
                                }

                                @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                                public final void b(MetadataRepo metadataRepo) {
                                    ThreadPoolExecutor threadPoolExecutor3 = threadPoolExecutor2;
                                    try {
                                        EmojiCompat.MetadataRepoLoaderCallback.this.b(metadataRepo);
                                    } finally {
                                        threadPoolExecutor3.shutdown();
                                    }
                                }
                            });
                            return;
                        }
                        throw new RuntimeException("EmojiCompat font provider not available on this device.");
                    } catch (Throwable th) {
                        metadataRepoLoaderCallback2.a(th);
                        threadPoolExecutor2.shutdown();
                    }
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public static class LoadEmojiCompatRunnable implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            try {
                int i = TraceCompat.f712a;
                Trace.beginSection("EmojiCompat.EmojiCompatInitializer.run");
                if (EmojiCompat.k != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    EmojiCompat.a().e();
                }
                Trace.endSection();
            } catch (Throwable th) {
                int i2 = TraceCompat.f712a;
                Trace.endSection();
                throw th;
            }
        }
    }

    @Override // androidx.startup.Initializer
    public final List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // androidx.startup.Initializer
    public final Object b(Context context) {
        EmojiCompat.Config config = new EmojiCompat.Config(new BackgroundDefaultLoader(context));
        config.b = 1;
        if (EmojiCompat.k == null) {
            synchronized (EmojiCompat.j) {
                try {
                    if (EmojiCompat.k == null) {
                        EmojiCompat.k = new EmojiCompat(config);
                    }
                } finally {
                }
            }
        }
        c(context);
        return Boolean.TRUE;
    }

    public final void c(Context context) {
        Object obj;
        AppInitializer c2 = AppInitializer.c(context);
        c2.getClass();
        synchronized (AppInitializer.e) {
            try {
                obj = c2.f1664a.get(ProcessLifecycleInitializer.class);
                if (obj == null) {
                    obj = c2.b(ProcessLifecycleInitializer.class, new HashSet());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        final Lifecycle lifecycle = ((LifecycleOwner) obj).getLifecycle();
        lifecycle.a(new DefaultLifecycleObserver(this) { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void a(LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void d(LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void onDestroy(LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, java.lang.Runnable] */
            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void onResume() {
                Handler handler;
                if (Build.VERSION.SDK_INT >= 28) {
                    handler = ConcurrencyHelpers.Handler28Impl.a(Looper.getMainLooper());
                } else {
                    handler = new Handler(Looper.getMainLooper());
                }
                handler.postDelayed(new Object(), 500L);
                lifecycle.c(this);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void onStart(LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void onStop(LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
            }
        });
    }
}
