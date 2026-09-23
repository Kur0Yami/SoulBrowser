package androidx.loader.content;

import android.content.Context;
import android.database.ContentObserver;
import androidx.loader.app.LoaderManagerImpl;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class Loader<D> {

    /* renamed from: a, reason: collision with root package name */
    public LoaderManagerImpl.LoaderInfo f1246a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1247c;
    public boolean d;
    public boolean e;
    public boolean f;
    public boolean g;

    /* loaded from: classes.dex */
    public final class ForceLoadContentObserver extends ContentObserver {
        @Override // android.database.ContentObserver
        public final boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public interface OnLoadCanceledListener<D> {
    }

    /* loaded from: classes.dex */
    public interface OnLoadCompleteListener<D> {
    }

    public void a(Object obj) {
        LoaderManagerImpl.LoaderInfo loaderInfo = this.f1246a;
        if (loaderInfo != null) {
            loaderInfo.l(obj);
        }
    }

    public void b(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(0);
        printWriter.print(" mListener=");
        printWriter.println(this.f1246a);
        if (this.f1247c || this.f || this.g) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.f1247c);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.f);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.g);
        }
        if (!this.d && !this.e) {
            return;
        }
        printWriter.print(str);
        printWriter.print("mAbandoned=");
        printWriter.print(this.d);
        printWriter.print(" mReset=");
        printWriter.println(this.e);
    }

    public boolean c() {
        return false;
    }

    public void d() {
    }

    public void e() {
    }

    public void f() {
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        Class<?> cls = getClass();
        sb.append(cls.getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(cls)));
        sb.append(" id=0}");
        return sb.toString();
    }
}
