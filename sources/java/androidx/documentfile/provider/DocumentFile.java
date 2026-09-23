package androidx.documentfile.provider;

import android.content.Context;
import android.net.Uri;

/* loaded from: classes.dex */
public abstract class DocumentFile {
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.documentfile.provider.DocumentFile, java.lang.Object, androidx.documentfile.provider.SingleDocumentFile] */
    public static DocumentFile b(Context context, Uri uri) {
        ?? obj = new Object();
        obj.f981a = context;
        obj.b = uri;
        return obj;
    }

    public abstract boolean a();

    public abstract String c();

    public abstract boolean d();

    public abstract boolean e();

    public abstract long f();

    public abstract long g();
}
