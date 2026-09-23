package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.concurrent.futures.ResolvableFuture;
import j$.util.Objects;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class ProfileVerifier {

    /* renamed from: a, reason: collision with root package name */
    public static final ResolvableFuture f1480a = new Object();
    public static final Object b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static CompilationStatus f1481c = null;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api33Impl {
        @DoNotInline
        public static PackageInfo a(PackageManager packageManager, Context context) {
            return packageManager.getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public static class Cache {

        /* renamed from: a, reason: collision with root package name */
        public final int f1482a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final long f1483c;
        public final long d;

        public Cache(int i, int i2, long j, long j2) {
            this.f1482a = i;
            this.b = i2;
            this.f1483c = j;
            this.d = j2;
        }

        public static Cache a(File file) {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
            try {
                Cache cache = new Cache(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
                dataInputStream.close();
                return cache;
            } finally {
            }
        }

        public final void b(File file) {
            file.delete();
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
            try {
                dataOutputStream.writeInt(this.f1482a);
                dataOutputStream.writeInt(this.b);
                dataOutputStream.writeLong(this.f1483c);
                dataOutputStream.writeLong(this.d);
                dataOutputStream.close();
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && (obj instanceof Cache)) {
                Cache cache = (Cache) obj;
                if (this.b == cache.b && this.f1483c == cache.f1483c && this.f1482a == cache.f1482a && this.d == cache.d) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(Integer.valueOf(this.b), Long.valueOf(this.f1483c), Integer.valueOf(this.f1482a), Long.valueOf(this.d));
        }
    }

    /* loaded from: classes.dex */
    public static class CompilationStatus {

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes.dex */
        public @interface ResultCode {
        }
    }

    public static long a(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        if (Build.VERSION.SDK_INT >= 33) {
            return Api33Impl.a(packageManager, context).lastUpdateTime;
        }
        return packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.profileinstaller.ProfileVerifier$CompilationStatus] */
    public static CompilationStatus b() {
        ?? obj = new Object();
        f1481c = obj;
        f1480a.i(obj);
        return f1481c;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(21:14|(1:80)(1:18)|19|(1:79)(1:23)|24|25|26|(2:64|65)(1:28)|29|(9:36|(1:40)|(1:47)|48|(2:56|57)|52|53|54|55)|(1:63)|(1:40)|(3:42|45|47)|48|(1:50)|56|57|52|53|54|55) */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x009e, code lost:
    
        r6 = 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(android.content.Context r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.profileinstaller.ProfileVerifier.c(android.content.Context, boolean):void");
    }
}
