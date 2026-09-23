package com.mycompany.app.db.book;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;

/* loaded from: classes3.dex */
public class DbBookSearch extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookSearch f12950c;
    public static int f;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00aa, code lost:
    
        r7.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00af A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r12v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File a(android.content.Context r17, java.lang.String r18) {
        /*
            r0 = r18
            java.lang.String r1 = "_color"
            java.lang.String r2 = "_icon"
            java.lang.String r3 = "_text"
            java.lang.String r4 = "_title"
            if (r17 == 0) goto L12
            boolean r6 = android.text.TextUtils.isEmpty(r0)
            if (r6 == 0) goto L16
        L12:
            r16 = 0
            goto Lce
        L16:
            r6 = 0
            com.mycompany.app.db.book.DbBookSearch r7 = f(r17)     // Catch: java.lang.Exception -> La2
            android.database.sqlite.SQLiteDatabase r8 = r7.getWritableDatabase()     // Catch: java.lang.Exception -> La2
            java.lang.String r9 = "DbBookSearch_table"
            r12 = 0
            r13 = 0
            r10 = 0
            r11 = 0
            android.database.Cursor r7 = com.mycompany.app.db.DbUtil.g(r8, r9, r10, r11, r12, r13)     // Catch: java.lang.Exception -> La2
            if (r7 == 0) goto L9c
            boolean r8 = r7.moveToFirst()     // Catch: java.lang.Exception -> L9c
            if (r8 == 0) goto L9c
            int r8 = r7.getColumnIndex(r4)     // Catch: java.lang.Exception -> L9c
            int r9 = r7.getColumnIndex(r3)     // Catch: java.lang.Exception -> L9c
            int r10 = r7.getColumnIndex(r2)     // Catch: java.lang.Exception -> L9c
            int r11 = r7.getColumnIndex(r1)     // Catch: java.lang.Exception -> L9c
            r12 = 0
            r13 = 0
        L43:
            if (r12 != 0) goto L5e
            java.io.OutputStream r13 = com.mycompany.app.main.MainUtil.c1(r0, r6)     // Catch: java.lang.Exception -> L59
            java.io.BufferedWriter r14 = new java.io.BufferedWriter     // Catch: java.lang.Exception -> L59
            java.io.OutputStreamWriter r15 = new java.io.OutputStreamWriter     // Catch: java.lang.Exception -> L59
            r16 = 0
            java.nio.charset.Charset r5 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Exception -> L5b
            r15.<init>(r13, r5)     // Catch: java.lang.Exception -> L5b
            r14.<init>(r15)     // Catch: java.lang.Exception -> L5b
            r12 = r14
            goto L5b
        L59:
            r16 = 0
        L5b:
            if (r12 != 0) goto L60
            goto La8
        L5e:
            r16 = 0
        L60:
            boolean r5 = com.mycompany.app.main.MainUtil.a0(r12)     // Catch: java.lang.Exception -> La8
            if (r5 != 0) goto L67
            goto La8
        L67:
            java.lang.String r5 = r7.getString(r8)     // Catch: java.lang.Exception -> La8
            boolean r5 = com.mycompany.app.main.MainUtil.c0(r12, r4, r5)     // Catch: java.lang.Exception -> La8
            if (r5 != 0) goto L72
            goto La8
        L72:
            java.lang.String r5 = r7.getString(r9)     // Catch: java.lang.Exception -> La8
            boolean r5 = com.mycompany.app.main.MainUtil.c0(r12, r3, r5)     // Catch: java.lang.Exception -> La8
            if (r5 != 0) goto L7d
            goto La8
        L7d:
            byte[] r5 = r7.getBlob(r10)     // Catch: java.lang.Exception -> La8
            boolean r5 = com.mycompany.app.main.MainUtil.Y(r12, r2, r5)     // Catch: java.lang.Exception -> La8
            if (r5 != 0) goto L88
            goto La8
        L88:
            int r5 = r7.getInt(r11)     // Catch: java.lang.Exception -> La8
            boolean r5 = com.mycompany.app.main.MainUtil.Z(r12, r1, r5)     // Catch: java.lang.Exception -> La8
            if (r5 != 0) goto L93
            goto La8
        L93:
            r5 = 1
            boolean r14 = r7.moveToNext()     // Catch: java.lang.Exception -> L9a
            if (r14 != 0) goto L43
        L9a:
            r6 = r5
            goto La8
        L9c:
            r16 = 0
            r12 = r16
        La0:
            r13 = r12
            goto La8
        La2:
            r16 = 0
            r7 = r16
            r12 = r7
            goto La0
        La8:
            if (r7 == 0) goto Lad
            r7.close()
        Lad:
            if (r12 == 0) goto Lb2
            r12.close()     // Catch: java.lang.Exception -> Lb2
        Lb2:
            if (r13 == 0) goto Lb7
            r13.close()     // Catch: java.lang.Exception -> Lb7
        Lb7:
            if (r6 != 0) goto Lc8
            java.io.File r1 = new java.io.File
            r1.<init>(r0)
            boolean r0 = r1.exists()
            if (r0 == 0) goto Lc7
            r1.delete()
        Lc7:
            return r16
        Lc8:
            java.io.File r1 = new java.io.File
            r1.<init>(r0)
            return r1
        Lce:
            return r16
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookSearch.a(android.content.Context, java.lang.String):java.io.File");
    }

    public static Bitmap b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return ImageLoader.f().g().a(MemoryCacheUtils.a(2, str));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap d(android.content.Context r4, long r5) {
        /*
            r0 = 0
            if (r4 == 0) goto L42
            r1 = 0
            int r1 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r1 > 0) goto La
            goto L42
        La:
            java.lang.String r1 = "_icon"
            java.lang.String[] r2 = new java.lang.String[]{r1}
            com.mycompany.app.db.book.DbBookSearch r4 = f(r4)     // Catch: java.lang.Exception -> L2f
            android.database.sqlite.SQLiteDatabase r4 = r4.getWritableDatabase()     // Catch: java.lang.Exception -> L2f
            java.lang.String r3 = "DbBookSearch_table"
            android.database.Cursor r4 = com.mycompany.app.db.DbUtil.f(r4, r3, r2, r5)     // Catch: java.lang.Exception -> L2f
            if (r4 == 0) goto L30
            boolean r5 = r4.moveToFirst()     // Catch: java.lang.Exception -> L30
            if (r5 == 0) goto L30
            int r5 = r4.getColumnIndex(r1)     // Catch: java.lang.Exception -> L30
            byte[] r5 = r4.getBlob(r5)     // Catch: java.lang.Exception -> L30
            goto L31
        L2f:
            r4 = r0
        L30:
            r5 = r0
        L31:
            if (r4 == 0) goto L36
            r4.close()
        L36:
            if (r5 == 0) goto L42
            int r4 = r5.length
            r6 = 1
            if (r4 <= r6) goto L42
            int r4 = r5.length
            android.graphics.Bitmap r4 = com.mycompany.app.main.BitmapUtil.a(r5, r4)
            return r4
        L42:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookSearch.d(android.content.Context, long):android.graphics.Bitmap");
    }

    public static int e(int i) {
        int length = MainConst.b0.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i == MainConst.b0[i2]) {
                if (i == -16777216 && MainApp.K1) {
                    return R.drawable.baseline_search_15_dark_24;
                }
                return MainConst.d0[i2];
            }
        }
        return MainConst.d0[0];
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookSearch] */
    public static DbBookSearch f(Context context) {
        if (f12950c == null) {
            synchronized (DbBookSearch.class) {
                try {
                    if (f12950c == null) {
                        ?? sQLiteOpenHelper = new SQLiteOpenHelper(MainUtil.R(context), "DbBookSearch.db", (SQLiteDatabase.CursorFactory) null, 1);
                        if (f == 0) {
                            f = MainUtil.L6(0, MainConst.b0.length);
                        }
                        f12950c = sQLiteOpenHelper;
                    }
                } finally {
                }
            }
        }
        return f12950c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c2  */
    /* JADX WARN: Type inference failed for: r10v1, types: [com.mycompany.app.web.WebSearch$WebSchItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List i(android.content.Context r17) {
        /*
            r0 = 0
            if (r17 != 0) goto L4
            return r0
        L4:
            com.mycompany.app.web.WebSearch r1 = com.mycompany.app.web.WebSearch.a()
            java.util.ArrayList r1 = r1.f19406a
            if (r1 == 0) goto L13
            int r2 = r1.size()
            if (r2 <= 0) goto L13
            return r1
        L13:
            r1 = 4
            r2 = 0
            com.mycompany.app.db.book.DbBookSearch r3 = f(r17)     // Catch: java.lang.Exception -> L98
            android.database.sqlite.SQLiteDatabase r4 = r3.getWritableDatabase()     // Catch: java.lang.Exception -> L98
            java.lang.String r5 = "DbBookSearch_table"
            r8 = 0
            r9 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r3 = com.mycompany.app.db.DbUtil.g(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L98
            if (r3 == 0) goto L96
            boolean r4 = r3.moveToFirst()     // Catch: java.lang.Exception -> L92
            if (r4 == 0) goto L96
            java.lang.String r4 = "_id"
            int r4 = r3.getColumnIndex(r4)     // Catch: java.lang.Exception -> L92
            java.lang.String r5 = "_title"
            int r5 = r3.getColumnIndex(r5)     // Catch: java.lang.Exception -> L92
            java.lang.String r6 = "_text"
            int r6 = r3.getColumnIndex(r6)     // Catch: java.lang.Exception -> L92
            java.lang.String r7 = "_color"
            int r7 = r3.getColumnIndex(r7)     // Catch: java.lang.Exception -> L92
            java.util.ArrayList r8 = new java.util.ArrayList     // Catch: java.lang.Exception -> L92
            r8.<init>()     // Catch: java.lang.Exception -> L92
        L4c:
            java.lang.String r9 = r3.getString(r6)     // Catch: java.lang.Exception -> L90
            boolean r10 = android.text.TextUtils.isEmpty(r9)     // Catch: java.lang.Exception -> L90
            if (r10 == 0) goto L57
            goto L89
        L57:
            com.mycompany.app.web.WebSearch$WebSchItem r10 = new com.mycompany.app.web.WebSearch$WebSchItem     // Catch: java.lang.Exception -> L90
            r10.<init>()     // Catch: java.lang.Exception -> L90
            long r11 = r3.getLong(r4)     // Catch: java.lang.Exception -> L90
            r10.f19407a = r11     // Catch: java.lang.Exception -> L90
            java.lang.String r11 = r3.getString(r5)     // Catch: java.lang.Exception -> L90
            r10.b = r11     // Catch: java.lang.Exception -> L90
            r10.f19408c = r9     // Catch: java.lang.Exception -> L90
            int r9 = r3.getInt(r7)     // Catch: java.lang.Exception -> L90
            r10.d = r9     // Catch: java.lang.Exception -> L90
            r8.add(r10)     // Catch: java.lang.Exception -> L90
            int r9 = com.mycompany.app.pref.PrefZtwo.j     // Catch: java.lang.Exception -> L90
            long r11 = (long) r9     // Catch: java.lang.Exception -> L90
            long r13 = r10.f19407a     // Catch: java.lang.Exception -> L90
            r15 = 100
            long r13 = r13 + r15
            int r11 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r11 != 0) goto L89
            java.lang.String r0 = r10.f19408c     // Catch: java.lang.Exception -> L86
            int r1 = r10.d     // Catch: java.lang.Exception -> L86
            r2 = r1
            r1 = r9
            goto L89
        L86:
            r1 = r0
        L87:
            r0 = r3
            goto L9b
        L89:
            boolean r9 = r3.moveToNext()     // Catch: java.lang.Exception -> L90
            if (r9 != 0) goto L4c
            goto L9e
        L90:
            r9 = r1
            goto L86
        L92:
            r8 = r0
            r9 = r1
            r1 = r8
            goto L87
        L96:
            r8 = r0
            goto L9e
        L98:
            r8 = r0
            r9 = r1
            r1 = r8
        L9b:
            r3 = r0
            r0 = r1
            r1 = r9
        L9e:
            if (r3 == 0) goto La3
            r3.close()
        La3:
            int r3 = com.mycompany.app.pref.PrefZtwo.j
            r4 = 10
            if (r3 < r4) goto Lc0
            if (r3 != r1) goto Lb7
            int r3 = com.mycompany.app.pref.PrefZtwo.m
            if (r3 != r2) goto Lb7
            java.lang.String r3 = com.mycompany.app.pref.PrefZtwo.k
            boolean r3 = com.mycompany.app.main.MainUtil.q5(r3, r0)
            if (r3 != 0) goto Lc0
        Lb7:
            com.mycompany.app.pref.PrefZtwo.j = r1
            com.mycompany.app.pref.PrefZtwo.k = r0
            com.mycompany.app.pref.PrefZtwo.m = r2
            com.mycompany.app.pref.PrefZtwo.v(r17)
        Lc0:
            if (r8 == 0) goto Lc8
            com.mycompany.app.web.WebSearch r0 = com.mycompany.app.web.WebSearch.a()
            r0.f19406a = r8
        Lc8:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookSearch.i(android.content.Context):java.util.List");
    }

    public static void j(String str, Bitmap bitmap) {
        if (!TextUtils.isEmpty(str) && MainUtil.f6(bitmap)) {
            ImageLoader.f().g().b(MemoryCacheUtils.a(2, str), bitmap);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookSearch_table (_id INTEGER PRIMARY KEY, _title TEXT, _text TEXT, _icon BLOB, _color INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookSearch_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookSearch_table (_id INTEGER PRIMARY KEY, _title TEXT, _text TEXT, _icon BLOB, _color INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
