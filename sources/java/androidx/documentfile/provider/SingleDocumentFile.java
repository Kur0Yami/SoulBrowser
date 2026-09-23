package androidx.documentfile.provider;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;

/* loaded from: classes.dex */
class SingleDocumentFile extends DocumentFile {

    /* renamed from: a, reason: collision with root package name */
    public Context f981a;
    public Uri b;

    @Override // androidx.documentfile.provider.DocumentFile
    public final boolean a() {
        Context context = this.f981a;
        Uri uri = this.b;
        if (context.checkCallingOrSelfUriPermission(uri, 1) == 0 && !TextUtils.isEmpty(DocumentsContractApi19.c(context, uri, "mime_type"))) {
            return true;
        }
        return false;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public final String c() {
        return DocumentsContractApi19.c(this.f981a, this.b, "_display_name");
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public final boolean d() {
        return "vnd.android.document/directory".equals(DocumentsContractApi19.c(this.f981a, this.b, "mime_type"));
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public final boolean e() {
        String c2 = DocumentsContractApi19.c(this.f981a, this.b, "mime_type");
        if (!"vnd.android.document/directory".equals(c2) && !TextUtils.isEmpty(c2)) {
            return true;
        }
        return false;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public final long f() {
        return DocumentsContractApi19.b(this.f981a, this.b, "last_modified");
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public final long g() {
        return DocumentsContractApi19.b(this.f981a, this.b, "_size");
    }
}
