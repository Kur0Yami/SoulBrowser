package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.profileinstaller.ProfileInstallerInitializer;
import java.util.Random;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1488c;
    public final /* synthetic */ Context f;

    public /* synthetic */ a(Context context, int i) {
        this.f1488c = i;
        this.f = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        switch (this.f1488c) {
            case 0:
                if (Build.VERSION.SDK_INT >= 28) {
                    handler = ProfileInstallerInitializer.Handler28Impl.a(Looper.getMainLooper());
                } else {
                    handler = new Handler(Looper.getMainLooper());
                }
                int nextInt = new Random().nextInt(Math.max(1000, 1));
                handler.postDelayed(new a(this.f, 1), nextInt + 5000);
                return;
            case 1:
                new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new a(this.f, 2));
                return;
            default:
                ProfileInstaller.b(this.f, new androidx.arch.core.executor.a(1), ProfileInstaller.f1478a, false);
                return;
        }
    }

    public /* synthetic */ a(ProfileInstallerInitializer profileInstallerInitializer, Context context) {
        this.f1488c = 0;
        this.f = context;
    }
}
