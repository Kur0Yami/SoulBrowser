package androidx.browser.browseractions;

import android.os.AsyncTask;
import androidx.annotation.RestrictTo;
import androidx.core.content.FileProvider;
import java.util.concurrent.TimeUnit;

@RestrictTo
@Deprecated
/* loaded from: classes.dex */
public final class BrowserServiceFileProvider extends FileProvider {
    public static final Object k = new Object();

    /* renamed from: androidx.browser.browseractions.BrowserServiceFileProvider$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class FileCleanupTask extends AsyncTask<Void, Void, Void> {

        /* renamed from: a, reason: collision with root package name */
        public static final long f407a;
        public static final long b;

        /* renamed from: c, reason: collision with root package name */
        public static final long f408c;

        static {
            TimeUnit timeUnit = TimeUnit.DAYS;
            f407a = timeUnit.toMillis(7L);
            b = timeUnit.toMillis(7L);
            f408c = timeUnit.toMillis(1L);
        }

        @Override // android.os.AsyncTask
        public final Void doInBackground(Void[] voidArr) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class FileSaveTask extends AsyncTask<String, Void, Void> {
        @Override // android.os.AsyncTask
        public final Void doInBackground(String[] strArr) {
            throw null;
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Void r1) {
            new AsyncTask();
            throw null;
        }
    }
}
