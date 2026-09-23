package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.startup.Initializer;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class ProfileInstallerInitializer implements Initializer<Result> {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Choreographer16Impl {
        @DoNotInline
        public static void a(final Runnable runnable) {
            Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: androidx.profileinstaller.b
                @Override // android.view.Choreographer.FrameCallback
                public final void doFrame(long j) {
                    runnable.run();
                }
            });
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Handler28Impl {
        @DoNotInline
        public static Handler a(Looper looper) {
            return Handler.createAsync(looper);
        }
    }

    /* loaded from: classes.dex */
    public static class Result {
    }

    @Override // androidx.startup.Initializer
    public final List a() {
        return Collections.EMPTY_LIST;
    }

    @Override // androidx.startup.Initializer
    public final Object b(Context context) {
        if (Build.VERSION.SDK_INT < 24) {
            return new Object();
        }
        Choreographer16Impl.a(new a(this, context.getApplicationContext()));
        return new Object();
    }
}
