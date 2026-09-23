package androidx.work;

import android.util.Log;
import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes.dex */
public abstract class Logger {

    /* renamed from: a, reason: collision with root package name */
    public static LogcatLogger f1844a;

    /* loaded from: classes.dex */
    public static class LogcatLogger extends Logger {
        public final int b;

        public LogcatLogger(int i) {
            this.b = i;
        }

        @Override // androidx.work.Logger
        public final void a(String str, String str2, Throwable... thArr) {
            if (this.b <= 3) {
                if (thArr.length >= 1) {
                    Log.d(str, str2, thArr[0]);
                } else {
                    Log.d(str, str2);
                }
            }
        }

        @Override // androidx.work.Logger
        public final void b(String str, String str2, Throwable... thArr) {
            if (this.b <= 6) {
                if (thArr.length >= 1) {
                    Log.e(str, str2, thArr[0]);
                } else {
                    Log.e(str, str2);
                }
            }
        }

        @Override // androidx.work.Logger
        public final void d(String str, String str2, Throwable... thArr) {
            if (this.b <= 4) {
                if (thArr.length >= 1) {
                    Log.i(str, str2, thArr[0]);
                } else {
                    Log.i(str, str2);
                }
            }
        }

        @Override // androidx.work.Logger
        public final void f(String str, String str2, Throwable... thArr) {
            if (this.b <= 5) {
                if (thArr.length >= 1) {
                    Log.w(str, str2, thArr[0]);
                } else {
                    Log.w(str, str2);
                }
            }
        }
    }

    public static synchronized Logger c() {
        LogcatLogger logcatLogger;
        synchronized (Logger.class) {
            try {
                if (f1844a == null) {
                    f1844a = new LogcatLogger(3);
                }
                logcatLogger = f1844a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return logcatLogger;
    }

    public static String e(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        if (length >= 20) {
            sb.append(str.substring(0, 20));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    public abstract void a(String str, String str2, Throwable... thArr);

    public abstract void b(String str, String str2, Throwable... thArr);

    public abstract void d(String str, String str2, Throwable... thArr);

    public abstract void f(String str, String str2, Throwable... thArr);
}
