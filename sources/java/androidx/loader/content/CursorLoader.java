package androidx.loader.content;

import android.content.ContentResolver;
import android.database.Cursor;
import androidx.core.os.CancellationSignal;
import androidx.core.os.OperationCanceledException;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

/* loaded from: classes.dex */
public class CursorLoader extends AsyncTaskLoader<Cursor> {
    public Cursor k;
    public CancellationSignal l;

    @Override // androidx.loader.content.AsyncTaskLoader, androidx.loader.content.Loader
    public final void b(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.b(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("mUri=");
        printWriter.println((Object) null);
        printWriter.print(str);
        printWriter.print("mProjection=");
        printWriter.println(Arrays.toString((Object[]) null));
        printWriter.print(str);
        printWriter.print("mSelection=");
        printWriter.println((String) null);
        printWriter.print(str);
        printWriter.print("mSelectionArgs=");
        printWriter.println(Arrays.toString((Object[]) null));
        printWriter.print(str);
        printWriter.print("mSortOrder=");
        printWriter.println((String) null);
        printWriter.print(str);
        printWriter.print("mCursor=");
        printWriter.println(this.k);
    }

    @Override // androidx.loader.content.Loader
    public final void d() {
        c();
        Cursor cursor = this.k;
        if (cursor != null && !cursor.isClosed()) {
            this.k.close();
        }
        this.k = null;
    }

    @Override // androidx.loader.content.Loader
    public final void e() {
        Cursor cursor = this.k;
        if (cursor != null) {
            a(cursor);
        }
        boolean z = this.f;
        this.f = false;
        this.g |= z;
        if (!z && this.k != null) {
            return;
        }
        k();
    }

    @Override // androidx.loader.content.Loader
    public final void f() {
        c();
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public final void g() {
        synchronized (this) {
            try {
                CancellationSignal cancellationSignal = this.l;
                if (cancellationSignal != null) {
                    cancellationSignal.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.core.os.CancellationSignal, java.lang.Object] */
    @Override // androidx.loader.content.AsyncTaskLoader
    public final Object i() {
        android.os.CancellationSignal cancellationSignal;
        synchronized (this) {
            if (this.j == null) {
                this.l = new Object();
            } else {
                throw new OperationCanceledException();
            }
        }
        try {
            ContentResolver contentResolver = this.b.getContentResolver();
            CancellationSignal cancellationSignal2 = this.l;
            if (cancellationSignal2 != null) {
                cancellationSignal = (android.os.CancellationSignal) cancellationSignal2.b();
            } else {
                cancellationSignal = null;
            }
            try {
                Cursor query = contentResolver.query(null, null, null, null, null, cancellationSignal);
                if (query != null) {
                    try {
                        query.getCount();
                        query.registerContentObserver(null);
                    } catch (RuntimeException e) {
                        query.close();
                        throw e;
                    }
                }
                synchronized (this) {
                    this.l = null;
                }
                return query;
            } catch (Exception e2) {
                if (e2 instanceof android.os.OperationCanceledException) {
                    throw new OperationCanceledException();
                }
                throw e2;
            }
        } catch (Throwable th) {
            synchronized (this) {
                this.l = null;
                throw th;
            }
        }
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public final void j(Object obj) {
        Cursor cursor = (Cursor) obj;
        if (cursor != null && !cursor.isClosed()) {
            cursor.close();
        }
    }

    @Override // androidx.loader.content.Loader
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public final void a(Cursor cursor) {
        if (this.e) {
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        Cursor cursor2 = this.k;
        this.k = cursor;
        if (this.f1247c) {
            super.a(cursor);
        }
        if (cursor2 != null && cursor2 != cursor && !cursor2.isClosed()) {
            cursor2.close();
        }
    }
}
