package com.mycompany.app.db.book;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class DbBookAlbum extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookAlbum f12926c;

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookAlbum] */
    public static DbBookAlbum a(Context context) {
        if (f12926c == null) {
            synchronized (DbBookAlbum.class) {
                try {
                    if (f12926c == null) {
                        f12926c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookAlbum.db", (SQLiteDatabase.CursorFactory) null, 2);
                    }
                } finally {
                }
            }
        }
        return f12926c;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:5|(1:9)|10|(2:11|12)|(3:50|51|(14:53|54|(2:58|(1:60))|62|(1:16)|(3:(2:21|22)|25|(1:27)(1:28))|29|30|31|(3:42|43|(4:45|(1:35)|36|(1:38)(2:40|41)))|33|(0)|36|(0)(0)))|14|(0)|(0)|29|30|31|(0)|33|(0)|36|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x010b, code lost:
    
        r9 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0116 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mycompany.app.main.MainItem.ChildItem b(android.content.Context r23, java.lang.String r24, java.lang.String r25, int r26, int r27, int r28, android.graphics.Bitmap r29) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookAlbum.b(android.content.Context, java.lang.String, java.lang.String, int, int, int, android.graphics.Bitmap):com.mycompany.app.main.MainItem$ChildItem");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookAlbum_table (_id INTEGER PRIMARY KEY, _path TEXT, _name TEXT, _count INTEGER, _index INTEGER, _page INTEGER, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookAlbum_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookAlbum_table (_id INTEGER PRIMARY KEY, _path TEXT, _name TEXT, _count INTEGER, _index INTEGER, _page INTEGER, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
