package androidx.core.provider;

import android.graphics.Typeface;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.provider.FontRequestWorker;
import androidx.core.provider.RequestExecutor;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CallbackWrapper {

    /* renamed from: a, reason: collision with root package name */
    public final TypefaceCompat.ResourcesCallbackAdapter f713a;
    public final Executor b;

    public CallbackWrapper(TypefaceCompat.ResourcesCallbackAdapter resourcesCallbackAdapter, Executor executor) {
        this.f713a = resourcesCallbackAdapter;
        this.b = executor;
    }

    public final void a(FontRequestWorker.TypefaceResult typefaceResult) {
        final int i = typefaceResult.b;
        Executor executor = this.b;
        final TypefaceCompat.ResourcesCallbackAdapter resourcesCallbackAdapter = this.f713a;
        if (i == 0) {
            final Typeface typeface = typefaceResult.f731a;
            ((RequestExecutor.HandlerExecutor) executor).execute(new Runnable() { // from class: androidx.core.provider.CallbackWrapper.1
                @Override // java.lang.Runnable
                public final void run() {
                    ResourcesCompat.FontCallback fontCallback = TypefaceCompat.ResourcesCallbackAdapter.this.f687a;
                    if (fontCallback != null) {
                        fontCallback.c(typeface);
                    }
                }
            });
        } else {
            ((RequestExecutor.HandlerExecutor) executor).execute(new Runnable() { // from class: androidx.core.provider.CallbackWrapper.2
                @Override // java.lang.Runnable
                public final void run() {
                    ResourcesCompat.FontCallback fontCallback = TypefaceCompat.ResourcesCallbackAdapter.this.f687a;
                    if (fontCallback != null) {
                        fontCallback.b(i);
                    }
                }
            });
        }
    }
}
