package com.mycompany.app.data;

import android.content.ContentValues;
import android.content.Context;
import android.support.v4.media.a;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.db.DbAlbum;
import com.mycompany.app.db.DbCmp;
import com.mycompany.app.db.DbPdf;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookAlbum;
import com.mycompany.app.db.book.DbBookCmp;
import com.mycompany.app.db.book.DbBookPdf;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefSet;
import com.nostra13.universalimageloader.core.ImageLoader;

/* loaded from: classes3.dex */
public class DataUtil {
    public static void a(Context context, int i, MainUri.UriItem uriItem) {
        if (i != 0) {
            if (i == 1) {
                DataAlbum.m(context).a(context, uriItem);
                DbAlbum.b(context, uriItem);
            } else if (i == 2) {
                DataPdf.m(context).a(context, uriItem);
                DbPdf.d(context, uriItem);
            } else if (i == 3) {
                DataCmp.m(context).a(context, uriItem);
                DbCmp.d(context, uriItem);
            }
        }
    }

    public static void b(Context context, MainUri.UriItem uriItem) {
        int i = uriItem.f16985a;
        if (i == 1) {
            DbAlbum.b(context, uriItem);
        } else if (i == 2) {
            DbPdf.d(context, uriItem);
        } else if (i == 3) {
            DbCmp.d(context, uriItem);
        }
    }

    public static void c(Context context, int i, String str) {
        if (i == 1) {
            DataAlbum.m(context).c(str);
            DbAlbum.d(context, str);
            DbBookAlbum dbBookAlbum = DbBookAlbum.f12926c;
            if (context != null && !TextUtils.isEmpty(str)) {
                DbUtil.a(DbBookAlbum.a(context).getWritableDatabase(), "DbBookAlbum_table", "_path=?", new String[]{str});
                return;
            }
            return;
        }
        if (i == 2) {
            DataPdf.m(context).c(str);
            DbPdf.e(context, str);
            DbBookPdf dbBookPdf = DbBookPdf.f12943c;
            if (context != null && !TextUtils.isEmpty(str)) {
                DbUtil.a(DbBookPdf.a(context).getWritableDatabase(), "DbBookPdf_table", "_path=?", new String[]{str});
                return;
            }
            return;
        }
        if (i == 3) {
            DataCmp.m(context).c(str);
            DbCmp.e(context, str);
            DbBookCmp dbBookCmp = DbBookCmp.f12928c;
            if (context != null && !TextUtils.isEmpty(str)) {
                DbUtil.a(DbBookCmp.a(context).getWritableDatabase(), "DbBookCmp_table", "_path=?", new String[]{str});
            }
        }
    }

    public static int d(String str) {
        String W0 = MainUtil.W0(str);
        if (W0 != null) {
            if (Compress.w(W0)) {
                return 1;
            }
            if (Compress.G(W0)) {
                return 2;
            }
            if (Compress.z(W0)) {
                return 3;
            }
            return 0;
        }
        return 0;
    }

    public static void e(Context context, int i, int i2, String str, String str2, MainUri.UriItem uriItem) {
        String str3;
        String str4;
        if (!TextUtils.isEmpty(str)) {
            if (i == 1) {
                str3 = PrefPath.j;
            } else if (i == 2) {
                str3 = PrefPath.l;
            } else if (i == 3) {
                str3 = PrefPath.k;
            } else {
                str3 = null;
            }
            if (!TextUtils.isEmpty(str3)) {
                String str5 = str;
                while (str5.endsWith("/")) {
                    str5 = a.d(1, 0, str5);
                }
                if (!TextUtils.isEmpty(str5)) {
                    while (str3.endsWith("/")) {
                        str3 = a.d(1, 0, str3);
                    }
                    if (!TextUtils.isEmpty(str3) && str5.equals(str3)) {
                        if (i != i2) {
                            str4 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                        } else {
                            str4 = str2;
                        }
                        if (i == 1) {
                            PrefPath.j = str4;
                            PrefSet.c(6, context, "mAlbumPath", str4);
                        } else if (i == 2) {
                            PrefPath.l = str4;
                            PrefSet.c(6, context, "mPdfPath", str4);
                        } else if (i == 3) {
                            PrefPath.k = str4;
                            PrefSet.c(6, context, "mCmpPath", str4);
                        }
                    }
                }
            }
            if (i != i2) {
                c(context, i, str);
                a(context, i2, uriItem);
                return;
            }
            if (i2 == 1) {
                DataAlbum.m(context).l(i2, str, str2, uriItem.f);
                String str6 = uriItem.f;
                DbAlbum dbAlbum = DbAlbum.f12917c;
                if (context != null && !TextUtils.isEmpty(str)) {
                    ImageLoader.f().l(str);
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("_path", str2);
                    contentValues.put("_name", str6);
                    contentValues.put("_icon", MainUtil.p2(context, str2));
                    DbUtil.h(DbAlbum.a(context).getWritableDatabase(), "DbAlbum_table", contentValues, "_path=?", new String[]{str});
                }
                String str7 = uriItem.f;
                DbBookAlbum dbBookAlbum = DbBookAlbum.f12926c;
                if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                    DbUtil.h(DbBookAlbum.a(context).getWritableDatabase(), "DbBookAlbum_table", com.mycompany.app.dialog.a.e("_path", str2, "_name", str7), "_path=?", new String[]{str});
                    return;
                }
                return;
            }
            if (i2 == 2) {
                DataPdf.m(context).l(i2, str, str2, uriItem.f);
                String str8 = uriItem.f;
                DbPdf dbPdf = DbPdf.f12921c;
                if (context != null && !TextUtils.isEmpty(str)) {
                    ImageLoader.f().l(str);
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("_path", str2);
                    contentValues2.put("_name", str8);
                    contentValues2.put("_icon", MainUtil.p2(context, str2));
                    DbUtil.h(DbPdf.b(context).getWritableDatabase(), "DbPdf_table", contentValues2, "_path=?", new String[]{str});
                }
                String str9 = uriItem.f;
                DbBookPdf dbBookPdf = DbBookPdf.f12943c;
                if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                    DbUtil.h(DbBookPdf.a(context).getWritableDatabase(), "DbBookPdf_table", com.mycompany.app.dialog.a.e("_path", str2, "_name", str9), "_path=?", new String[]{str});
                    return;
                }
                return;
            }
            if (i2 == 3) {
                DataCmp.m(context).l(i2, str, str2, uriItem.f);
                String str10 = uriItem.f;
                DbCmp dbCmp = DbCmp.f12919c;
                if (context != null && !TextUtils.isEmpty(str)) {
                    ImageLoader.f().l(str);
                    ContentValues contentValues3 = new ContentValues();
                    contentValues3.put("_path", str2);
                    contentValues3.put("_name", str10);
                    DbUtil.h(DbCmp.b(context).getWritableDatabase(), "DbCmp_table", contentValues3, "_path=?", new String[]{str});
                }
                String str11 = uriItem.f;
                DbBookCmp dbBookCmp = DbBookCmp.f12928c;
                if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                    DbUtil.h(DbBookCmp.a(context).getWritableDatabase(), "DbBookCmp_table", com.mycompany.app.dialog.a.e("_path", str2, "_name", str11), "_path=?", new String[]{str});
                }
            }
        }
    }
}
