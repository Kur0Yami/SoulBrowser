package androidx.core.provider;

import android.content.ContentProviderClient;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.collection.LruCache;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import androidx.tracing.Trace;
import com.google.api.client.http.HttpStatusCodes;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FontProvider {

    /* renamed from: a, reason: collision with root package name */
    public static final LruCache f716a = new LruCache(2);
    public static final a b = new Object();

    /* loaded from: classes.dex */
    public interface ContentQueryWrapper {
        Cursor a(Uri uri, String[] strArr, String[] strArr2);

        void close();
    }

    /* loaded from: classes.dex */
    public static class ContentQueryWrapperApi16Impl implements ContentQueryWrapper {

        /* renamed from: a, reason: collision with root package name */
        public final ContentProviderClient f717a;

        public ContentQueryWrapperApi16Impl(Context context, Uri uri) {
            this.f717a = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }

        @Override // androidx.core.provider.FontProvider.ContentQueryWrapper
        public final Cursor a(Uri uri, String[] strArr, String[] strArr2) {
            ContentProviderClient contentProviderClient = this.f717a;
            if (contentProviderClient == null) {
                return null;
            }
            try {
                return contentProviderClient.query(uri, strArr, "query = ?", strArr2, null, null);
            } catch (RemoteException e) {
                Log.w("FontsProvider", "Unable to query the content provider", e);
                return null;
            }
        }

        @Override // androidx.core.provider.FontProvider.ContentQueryWrapper
        public final void close() {
            ContentProviderClient contentProviderClient = this.f717a;
            if (contentProviderClient != null) {
                contentProviderClient.release();
            }
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class ContentQueryWrapperApi24Impl implements ContentQueryWrapper {

        /* renamed from: a, reason: collision with root package name */
        public final ContentProviderClient f718a;

        public ContentQueryWrapperApi24Impl(Context context, Uri uri) {
            this.f718a = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }

        @Override // androidx.core.provider.FontProvider.ContentQueryWrapper
        public final Cursor a(Uri uri, String[] strArr, String[] strArr2) {
            ContentProviderClient contentProviderClient = this.f718a;
            if (contentProviderClient == null) {
                return null;
            }
            try {
                return contentProviderClient.query(uri, strArr, "query = ?", strArr2, null, null);
            } catch (RemoteException e) {
                Log.w("FontsProvider", "Unable to query the content provider", e);
                return null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.core.provider.FontProvider.ContentQueryWrapper
        public final void close() {
            ContentProviderClient contentProviderClient = this.f718a;
            if (contentProviderClient != 0) {
                if (contentProviderClient instanceof AutoCloseable) {
                    contentProviderClient.close();
                } else if (contentProviderClient instanceof ExecutorService) {
                    b.f((ExecutorService) contentProviderClient);
                } else {
                    contentProviderClient.release();
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static class ProviderCacheKey {

        /* renamed from: a, reason: collision with root package name */
        public String f719a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public List f720c;

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProviderCacheKey)) {
                return false;
            }
            ProviderCacheKey providerCacheKey = (ProviderCacheKey) obj;
            if (Objects.equals(this.f719a, providerCacheKey.f719a) && Objects.equals(this.b, providerCacheKey.b) && Objects.equals(this.f720c, providerCacheKey.f720c)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.f719a, this.b, this.f720c);
        }
    }

    public static FontsContractCompat.FontFamilyResult a(Context context, List list) {
        Trace.a("FontProvider.getFontFamilyResult");
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                FontRequest fontRequest = (FontRequest) list.get(i);
                ProviderInfo b2 = b(context.getPackageManager(), fontRequest, context.getResources());
                if (b2 == null) {
                    return new FontsContractCompat.FontFamilyResult();
                }
                arrayList.add(c(context, fontRequest, b2.authority));
            }
            return new FontsContractCompat.FontFamilyResult(arrayList);
        } finally {
            android.os.Trace.endSection();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1, types: [androidx.core.provider.FontProvider$ProviderCacheKey, java.lang.Object] */
    public static ProviderInfo b(PackageManager packageManager, FontRequest fontRequest, Resources resources) {
        a aVar = b;
        LruCache lruCache = f716a;
        Trace.a("FontProvider.getProvider");
        try {
            List list = fontRequest.d;
            String str = fontRequest.f721a;
            String str2 = fontRequest.b;
            if (list == null) {
                list = FontResourcesParserCompat.b(resources, 0);
            }
            ?? obj = new Object();
            obj.f719a = str;
            obj.b = str2;
            obj.f720c = list;
            ProviderInfo providerInfo = (ProviderInfo) lruCache.c(obj);
            if (providerInfo != null) {
                return providerInfo;
            }
            ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(str, 0);
            if (resolveContentProvider != null) {
                if (resolveContentProvider.packageName.equals(str2)) {
                    Signature[] signatureArr = packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures;
                    ArrayList arrayList = new ArrayList();
                    for (Signature signature : signatureArr) {
                        arrayList.add(signature.toByteArray());
                    }
                    Collections.sort(arrayList, aVar);
                    for (int i = 0; i < list.size(); i++) {
                        ArrayList arrayList2 = new ArrayList((Collection) list.get(i));
                        Collections.sort(arrayList2, aVar);
                        if (arrayList.size() == arrayList2.size()) {
                            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                                if (!Arrays.equals((byte[]) arrayList.get(i2), (byte[]) arrayList2.get(i2))) {
                                    break;
                                }
                            }
                            lruCache.d(obj, resolveContentProvider);
                            return resolveContentProvider;
                        }
                    }
                    android.os.Trace.endSection();
                    return null;
                }
                throw new PackageManager.NameNotFoundException("Found content provider " + str + ", but package was not " + str2);
            }
            throw new PackageManager.NameNotFoundException("No package found for authority: " + str);
        } finally {
            android.os.Trace.endSection();
        }
    }

    public static FontsContractCompat.FontInfo[] c(Context context, FontRequest fontRequest, String str) {
        ContentQueryWrapper contentQueryWrapperApi24Impl;
        int i;
        int i2;
        Uri withAppendedId;
        int i3;
        boolean z;
        Trace.a("FontProvider.query");
        try {
            ArrayList arrayList = new ArrayList();
            Uri build = new Uri.Builder().scheme("content").authority(str).build();
            Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
            if (Build.VERSION.SDK_INT < 24) {
                contentQueryWrapperApi24Impl = new ContentQueryWrapperApi16Impl(context, build);
            } else {
                contentQueryWrapperApi24Impl = new ContentQueryWrapperApi24Impl(context, build);
            }
            Cursor cursor = null;
            try {
                String[] strArr = {"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"};
                Trace.a("ContentQueryWrapper.query");
                try {
                    cursor = contentQueryWrapperApi24Impl.a(build, strArr, new String[]{fontRequest.f722c});
                    android.os.Trace.endSection();
                    if (cursor != null && cursor.getCount() > 0) {
                        int columnIndex = cursor.getColumnIndex("result_code");
                        ArrayList arrayList2 = new ArrayList();
                        int columnIndex2 = cursor.getColumnIndex("_id");
                        int columnIndex3 = cursor.getColumnIndex("file_id");
                        int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                        int columnIndex5 = cursor.getColumnIndex("font_weight");
                        int columnIndex6 = cursor.getColumnIndex("font_italic");
                        while (cursor.moveToNext()) {
                            if (columnIndex != -1) {
                                i = cursor.getInt(columnIndex);
                            } else {
                                i = 0;
                            }
                            if (columnIndex4 != -1) {
                                i2 = cursor.getInt(columnIndex4);
                            } else {
                                i2 = 0;
                            }
                            if (columnIndex3 == -1) {
                                withAppendedId = ContentUris.withAppendedId(build, cursor.getLong(columnIndex2));
                            } else {
                                withAppendedId = ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3));
                            }
                            Uri uri = withAppendedId;
                            if (columnIndex5 != -1) {
                                i3 = cursor.getInt(columnIndex5);
                            } else {
                                i3 = HttpStatusCodes.STATUS_CODE_BAD_REQUEST;
                            }
                            if (columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1) {
                                z = true;
                            } else {
                                z = false;
                            }
                            arrayList2.add(new FontsContractCompat.FontInfo(uri, i2, i3, z, i));
                        }
                        arrayList = arrayList2;
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    contentQueryWrapperApi24Impl.close();
                    return (FontsContractCompat.FontInfo[]) arrayList.toArray(new FontsContractCompat.FontInfo[0]);
                } finally {
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                contentQueryWrapperApi24Impl.close();
                throw th;
            }
        } finally {
        }
    }
}
