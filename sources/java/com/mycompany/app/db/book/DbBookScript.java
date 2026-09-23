package com.mycompany.app.db.book;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import androidx.work.impl.workers.a;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.script.Script;
import com.mycompany.app.script.ScriptId;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DbBookScript extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookScript f12949c;

    public static void a(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            DbUtil.a(d(context).getWritableDatabase(), "DbBookScript_table", "_name=? AND _namespace=?", new String[]{str, str2});
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.io.BufferedWriter, java.io.Writer] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File b(android.content.Context r12, java.lang.String r13) {
        /*
            java.lang.String r0 = "\n"
            r1 = 0
            if (r12 == 0) goto Lc2
            boolean r2 = android.text.TextUtils.isEmpty(r13)
            if (r2 == 0) goto Ld
            goto Lc2
        Ld:
            r2 = 0
            com.mycompany.app.db.book.DbBookScript r12 = d(r12)     // Catch: java.lang.Exception -> L99
            android.database.sqlite.SQLiteDatabase r3 = r12.getWritableDatabase()     // Catch: java.lang.Exception -> L99
            java.lang.String r4 = "DbBookScript_table"
            r7 = 0
            r8 = 0
            r5 = 0
            r6 = 0
            android.database.Cursor r12 = com.mycompany.app.db.DbUtil.g(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L99
            if (r12 == 0) goto L96
            boolean r3 = r12.moveToFirst()     // Catch: java.lang.Exception -> L96
            if (r3 == 0) goto L96
            java.lang.String r3 = "_downurl"
            int r3 = r12.getColumnIndex(r3)     // Catch: java.lang.Exception -> L96
            java.lang.String r4 = "_name"
            int r4 = r12.getColumnIndex(r4)     // Catch: java.lang.Exception -> L96
            java.lang.String r5 = "_content"
            int r5 = r12.getColumnIndex(r5)     // Catch: java.lang.Exception -> L96
            r6 = r1
            r7 = r6
        L3c:
            if (r6 != 0) goto L52
            java.io.OutputStream r7 = com.mycompany.app.main.MainUtil.c1(r13, r2)     // Catch: java.lang.Exception -> L4f
            java.io.BufferedWriter r8 = new java.io.BufferedWriter     // Catch: java.lang.Exception -> L4f
            java.io.OutputStreamWriter r9 = new java.io.OutputStreamWriter     // Catch: java.lang.Exception -> L4f
            java.nio.charset.Charset r10 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Exception -> L4f
            r9.<init>(r7, r10)     // Catch: java.lang.Exception -> L4f
            r8.<init>(r9)     // Catch: java.lang.Exception -> L4f
            r6 = r8
        L4f:
            if (r6 != 0) goto L52
            goto L9c
        L52:
            java.lang.String r8 = r12.getString(r3)     // Catch: java.lang.Exception -> L9c
            boolean r9 = android.text.TextUtils.isEmpty(r8)     // Catch: java.lang.Exception -> L9c
            if (r9 == 0) goto L5d
            goto L72
        L5d:
            java.lang.String r9 = r12.getString(r4)     // Catch: java.lang.Exception -> L9c
            boolean r10 = android.text.TextUtils.isEmpty(r9)     // Catch: java.lang.Exception -> L9c
            if (r10 == 0) goto L68
            goto L72
        L68:
            java.lang.String r10 = r12.getString(r5)     // Catch: java.lang.Exception -> L9c
            boolean r11 = android.text.TextUtils.isEmpty(r10)     // Catch: java.lang.Exception -> L9c
            if (r11 == 0) goto L74
        L72:
            r8 = r2
            goto L8e
        L74:
            boolean r11 = com.mycompany.app.main.MainUtil.a0(r6)     // Catch: java.lang.Exception -> L9c
            if (r11 != 0) goto L7b
            goto L9c
        L7b:
            r6.write(r8)     // Catch: java.lang.Exception -> L9c
            r6.write(r0)     // Catch: java.lang.Exception -> L9c
            r6.write(r9)     // Catch: java.lang.Exception -> L9c
            r6.write(r0)     // Catch: java.lang.Exception -> L9c
            r6.write(r10)     // Catch: java.lang.Exception -> L9c
            r6.write(r0)     // Catch: java.lang.Exception -> L9c
            r8 = 1
        L8e:
            boolean r9 = r12.moveToNext()     // Catch: java.lang.Exception -> L94
            if (r9 != 0) goto L3c
        L94:
            r2 = r8
            goto L9c
        L96:
            r6 = r1
        L97:
            r7 = r6
            goto L9c
        L99:
            r12 = r1
            r6 = r12
            goto L97
        L9c:
            if (r12 == 0) goto La1
            r12.close()
        La1:
            if (r6 == 0) goto La6
            r6.close()     // Catch: java.lang.Exception -> La6
        La6:
            if (r7 == 0) goto Lab
            r7.close()     // Catch: java.lang.Exception -> Lab
        Lab:
            if (r2 != 0) goto Lbc
            java.io.File r12 = new java.io.File
            r12.<init>(r13)
            boolean r13 = r12.exists()
            if (r13 == 0) goto Lbb
            r12.delete()
        Lbb:
            return r1
        Lbc:
            java.io.File r12 = new java.io.File
            r12.<init>(r13)
            return r12
        Lc2:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookScript.b(android.content.Context, java.lang.String):java.io.File");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookScript] */
    public static DbBookScript d(Context context) {
        if (f12949c == null) {
            synchronized (DbBookScript.class) {
                try {
                    if (f12949c == null) {
                        f12949c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookScript.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12949c;
    }

    public static String[] e(Context context, String str, String str2) {
        Cursor cursor;
        String[] strArr = null;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                cursor = DbUtil.g(d(context).getWritableDatabase(), "DbBookScript_table_value", new String[]{"_key"}, "_name=? AND _namespace=?", new String[]{str, str2}, null);
                try {
                    ArrayList arrayList = new ArrayList();
                    if (cursor != null && cursor.moveToFirst()) {
                        int columnIndex = cursor.getColumnIndex("_key");
                        do {
                            arrayList.add(cursor.getString(columnIndex));
                        } while (cursor.moveToNext());
                    }
                    strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                cursor = null;
            }
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (Exception unused3) {
                }
            }
        }
        return strArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap f(android.content.Context r10, java.lang.String r11, java.lang.String r12, java.lang.String[] r13) {
        /*
            java.lang.String r0 = "_namespace"
            java.lang.String r1 = "_name"
            r2 = 0
            java.lang.String r3 = "_pattern"
            java.lang.String[] r6 = new java.lang.String[]{r1, r0, r3}     // Catch: java.lang.Exception -> L61
            com.mycompany.app.db.book.DbBookScript r10 = d(r10)     // Catch: java.lang.Exception -> L61
            android.database.sqlite.SQLiteDatabase r4 = r10.getWritableDatabase()     // Catch: java.lang.Exception -> L61
            r9 = 0
            r5 = r11
            r7 = r12
            r8 = r13
            android.database.Cursor r10 = com.mycompany.app.db.DbUtil.g(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L61
            java.util.HashMap r11 = new java.util.HashMap     // Catch: java.lang.Exception -> L5f
            r11.<init>()     // Catch: java.lang.Exception -> L5f
            if (r10 == 0) goto L63
            boolean r12 = r10.moveToFirst()     // Catch: java.lang.Exception -> L4e
            if (r12 == 0) goto L63
            int r12 = r10.getColumnIndex(r1)     // Catch: java.lang.Exception -> L4e
            int r13 = r10.getColumnIndex(r0)     // Catch: java.lang.Exception -> L4e
        L30:
            com.mycompany.app.script.ScriptId r0 = new com.mycompany.app.script.ScriptId     // Catch: java.lang.Exception -> L4e
            java.lang.String r1 = r10.getString(r12)     // Catch: java.lang.Exception -> L4e
            java.lang.String r2 = r10.getString(r13)     // Catch: java.lang.Exception -> L4e
            r0.<init>(r1, r2)     // Catch: java.lang.Exception -> L4e
            java.lang.Object r1 = r11.get(r0)     // Catch: java.lang.Exception -> L4e
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Exception -> L4e
            if (r1 != 0) goto L50
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Exception -> L4e
            r1.<init>()     // Catch: java.lang.Exception -> L4e
            r11.put(r0, r1)     // Catch: java.lang.Exception -> L4e
            goto L50
        L4e:
            r2 = r10
            goto L62
        L50:
            r0 = 2
            java.lang.String r0 = r10.getString(r0)     // Catch: java.lang.Exception -> L4e
            r1.add(r0)     // Catch: java.lang.Exception -> L4e
            boolean r0 = r10.moveToNext()     // Catch: java.lang.Exception -> L4e
            if (r0 != 0) goto L30
            goto L63
        L5f:
            r11 = r2
            goto L4e
        L61:
            r11 = r2
        L62:
            r10 = r2
        L63:
            if (r10 == 0) goto L68
            r10.close()     // Catch: java.lang.Exception -> L68
        L68:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookScript.f(android.content.Context, java.lang.String, java.lang.String, java.lang.String[]):java.util.HashMap");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0078 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap i(android.content.Context r11, java.lang.String r12, java.lang.String[] r13) {
        /*
            java.lang.String r1 = "DbBookScript_table_require"
            java.lang.String r6 = "_content"
            java.lang.String r7 = "_downurl"
            java.lang.String r8 = "_namespace"
            java.lang.String r9 = "_name"
            r10 = 0
            java.lang.String[] r2 = new java.lang.String[]{r9, r8, r7, r6}     // Catch: java.lang.Exception -> L74
            com.mycompany.app.db.book.DbBookScript r11 = d(r11)     // Catch: java.lang.Exception -> L74
            android.database.sqlite.SQLiteDatabase r0 = r11.getWritableDatabase()     // Catch: java.lang.Exception -> L74
            r5 = 0
            r3 = r12
            r4 = r13
            android.database.Cursor r11 = com.mycompany.app.db.DbUtil.g(r0, r1, r2, r3, r4, r5)     // Catch: java.lang.Exception -> L74
            java.util.HashMap r12 = new java.util.HashMap     // Catch: java.lang.Exception -> L72
            r12.<init>()     // Catch: java.lang.Exception -> L72
            if (r11 == 0) goto L76
            boolean r13 = r11.moveToFirst()     // Catch: java.lang.Exception -> L59
            if (r13 == 0) goto L76
            int r13 = r11.getColumnIndex(r9)     // Catch: java.lang.Exception -> L59
            int r0 = r11.getColumnIndex(r8)     // Catch: java.lang.Exception -> L59
            int r1 = r11.getColumnIndex(r7)     // Catch: java.lang.Exception -> L59
            int r2 = r11.getColumnIndex(r6)     // Catch: java.lang.Exception -> L59
        L3b:
            com.mycompany.app.script.ScriptId r3 = new com.mycompany.app.script.ScriptId     // Catch: java.lang.Exception -> L59
            java.lang.String r4 = r11.getString(r13)     // Catch: java.lang.Exception -> L59
            java.lang.String r5 = r11.getString(r0)     // Catch: java.lang.Exception -> L59
            r3.<init>(r4, r5)     // Catch: java.lang.Exception -> L59
            java.lang.Object r4 = r12.get(r3)     // Catch: java.lang.Exception -> L59
            java.util.List r4 = (java.util.List) r4     // Catch: java.lang.Exception -> L59
            if (r4 != 0) goto L5b
            java.util.ArrayList r4 = new java.util.ArrayList     // Catch: java.lang.Exception -> L59
            r4.<init>()     // Catch: java.lang.Exception -> L59
            r12.put(r3, r4)     // Catch: java.lang.Exception -> L59
            goto L5b
        L59:
            r10 = r11
            goto L75
        L5b:
            java.lang.String r3 = r11.getString(r1)     // Catch: java.lang.Exception -> L59
            java.lang.String r5 = r11.getString(r2)     // Catch: java.lang.Exception -> L59
            com.mycompany.app.script.ScriptRequire r6 = new com.mycompany.app.script.ScriptRequire     // Catch: java.lang.Exception -> L59
            r6.<init>(r3, r5)     // Catch: java.lang.Exception -> L59
            r4.add(r6)     // Catch: java.lang.Exception -> L59
            boolean r3 = r11.moveToNext()     // Catch: java.lang.Exception -> L59
            if (r3 != 0) goto L3b
            goto L76
        L72:
            r12 = r10
            goto L59
        L74:
            r12 = r10
        L75:
            r11 = r10
        L76:
            if (r11 == 0) goto L7b
            r11.close()     // Catch: java.lang.Exception -> L7b
        L7b:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookScript.i(android.content.Context, java.lang.String, java.lang.String[]):java.util.HashMap");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0082 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap j(android.content.Context r12, java.lang.String r13, java.lang.String[] r14) {
        /*
            java.lang.String r1 = "DbBookScript_table_resource"
            java.lang.String r6 = "_data"
            java.lang.String r7 = "_resname"
            java.lang.String r8 = "_downurl"
            java.lang.String r9 = "_namespace"
            java.lang.String r10 = "_name"
            r11 = 0
            java.lang.String[] r2 = new java.lang.String[]{r10, r9, r8, r7, r6}     // Catch: java.lang.Exception -> L7e
            com.mycompany.app.db.book.DbBookScript r12 = d(r12)     // Catch: java.lang.Exception -> L7e
            android.database.sqlite.SQLiteDatabase r0 = r12.getWritableDatabase()     // Catch: java.lang.Exception -> L7e
            r5 = 0
            r3 = r13
            r4 = r14
            android.database.Cursor r12 = com.mycompany.app.db.DbUtil.g(r0, r1, r2, r3, r4, r5)     // Catch: java.lang.Exception -> L7e
            java.util.HashMap r13 = new java.util.HashMap     // Catch: java.lang.Exception -> L7c
            r13.<init>()     // Catch: java.lang.Exception -> L7c
            if (r12 == 0) goto L80
            boolean r14 = r12.moveToFirst()     // Catch: java.lang.Exception -> L5f
            if (r14 == 0) goto L80
            int r14 = r12.getColumnIndex(r10)     // Catch: java.lang.Exception -> L5f
            int r0 = r12.getColumnIndex(r9)     // Catch: java.lang.Exception -> L5f
            int r1 = r12.getColumnIndex(r8)     // Catch: java.lang.Exception -> L5f
            int r2 = r12.getColumnIndex(r7)     // Catch: java.lang.Exception -> L5f
            int r3 = r12.getColumnIndex(r6)     // Catch: java.lang.Exception -> L5f
        L41:
            com.mycompany.app.script.ScriptId r4 = new com.mycompany.app.script.ScriptId     // Catch: java.lang.Exception -> L5f
            java.lang.String r5 = r12.getString(r14)     // Catch: java.lang.Exception -> L5f
            java.lang.String r6 = r12.getString(r0)     // Catch: java.lang.Exception -> L5f
            r4.<init>(r5, r6)     // Catch: java.lang.Exception -> L5f
            java.lang.Object r5 = r13.get(r4)     // Catch: java.lang.Exception -> L5f
            java.util.List r5 = (java.util.List) r5     // Catch: java.lang.Exception -> L5f
            if (r5 != 0) goto L61
            java.util.ArrayList r5 = new java.util.ArrayList     // Catch: java.lang.Exception -> L5f
            r5.<init>()     // Catch: java.lang.Exception -> L5f
            r13.put(r4, r5)     // Catch: java.lang.Exception -> L5f
            goto L61
        L5f:
            r11 = r12
            goto L7f
        L61:
            java.lang.String r4 = r12.getString(r1)     // Catch: java.lang.Exception -> L5f
            java.lang.String r6 = r12.getString(r2)     // Catch: java.lang.Exception -> L5f
            byte[] r7 = r12.getBlob(r3)     // Catch: java.lang.Exception -> L5f
            com.mycompany.app.script.ScriptResource r8 = new com.mycompany.app.script.ScriptResource     // Catch: java.lang.Exception -> L5f
            r8.<init>(r7, r6, r4)     // Catch: java.lang.Exception -> L5f
            r5.add(r8)     // Catch: java.lang.Exception -> L5f
            boolean r4 = r12.moveToNext()     // Catch: java.lang.Exception -> L5f
            if (r4 != 0) goto L41
            goto L80
        L7c:
            r13 = r11
            goto L5f
        L7e:
            r13 = r11
        L7f:
            r12 = r11
        L80:
            if (r12 == 0) goto L85
            r12.close()     // Catch: java.lang.Exception -> L85
        L85:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookScript.j(android.content.Context, java.lang.String, java.lang.String[]):java.util.HashMap");
    }

    public static Script k(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                Script[] l = l(context, new ScriptId[]{new ScriptId(str, str2)}, null);
                if (l != null && l.length != 0) {
                    return l[0];
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0297 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mycompany.app.script.Script[] l(android.content.Context r50, com.mycompany.app.script.ScriptId[] r51, java.lang.Boolean r52) {
        /*
            Method dump skipped, instructions count: 667
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookScript.l(android.content.Context, com.mycompany.app.script.ScriptId[], java.lang.Boolean):com.mycompany.app.script.Script[]");
    }

    public static String m(Context context, String str, String str2, String str3) {
        Cursor cursor;
        String str4 = null;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            try {
                cursor = DbUtil.g(d(context).getWritableDatabase(), "DbBookScript_table_value", new String[]{"_value"}, "_name=? AND _namespace=? AND _key=?", new String[]{str, str2, str3}, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            str4 = cursor.getString(cursor.getColumnIndex("_value"));
                        }
                    } catch (Exception unused) {
                    }
                }
            } catch (Exception unused2) {
                cursor = null;
            }
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (Exception unused3) {
                }
            }
        }
        return str4;
    }

    public static void n(ScriptId[] scriptIdArr, StringBuilder sb, ArrayList arrayList) {
        try {
            for (ScriptId scriptId : scriptIdArr) {
                sb.append(" OR (");
                sb.append("_name");
                sb.append("=? AND ");
                sb.append("_namespace");
                sb.append("=?)");
                arrayList.add(scriptId.f17548a);
                arrayList.add(scriptId.b);
            }
            sb.delete(0, 4);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(28:1|(1:176)(1:7)|8|(2:10|(2:173|174)(9:14|15|16|(3:136|137|(16:139|140|141|142|143|144|145|146|147|148|149|150|151|(1:153)(1:158)|154|155))|18|19|20|(1:22)|23))(1:175)|24|(2:26|(19:28|29|(3:31|(1:33)|34)|35|(3:37|(1:39)|40)|41|(3:43|(1:45)|46)|47|(3:49|(1:51)|52)|53|(3:55|(1:57)|58)|59|(1:134)(1:63)|64|65|66|(1:68)(2:92|(1:(2:94|(2:97|98)(1:96))(1:99)))|69|(6:79|(1:81)(1:91)|82|(1:88)|89|90)(1:71)))|135|29|(0)|35|(0)|41|(0)|47|(0)|53|(0)|59|(1:61)|134|64|65|66|(0)(0)|69|(9:73|75|77|79|(0)(0)|82|(2:84|88)|89|90)|71|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x02c5, code lost:
    
        r4 = r0.size();
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x02ca, code lost:
    
        if (r5 >= r4) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x02cc, code lost:
    
        r13 = r0.get(r5);
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x02dc, code lost:
    
        if (com.mycompany.app.db.DbUtil.e(r2, "DbBookScript_table_include", (android.content.ContentValues) r13) != 0) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x02df, code lost:
    
        r0 = r30.size();
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x02e4, code lost:
    
        if (r4 >= r0) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x02e6, code lost:
    
        r5 = r30;
        r13 = r5.get(r4);
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x02f8, code lost:
    
        if (com.mycompany.app.db.DbUtil.e(r2, "DbBookScript_table_match", (android.content.ContentValues) r13) != 0) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02fb, code lost:
    
        r30 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02fe, code lost:
    
        r0 = r29.size();
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0303, code lost:
    
        if (r4 >= r0) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0305, code lost:
    
        r5 = r29;
        r13 = r5.get(r4);
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0317, code lost:
    
        if (com.mycompany.app.db.DbUtil.e(r2, "DbBookScript_table_require", (android.content.ContentValues) r13) != 0) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x031a, code lost:
    
        r29 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x031d, code lost:
    
        r0 = r7.size();
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0322, code lost:
    
        if (r4 >= r0) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0324, code lost:
    
        r5 = r7.get(r4);
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0334, code lost:
    
        if (com.mycompany.app.db.DbUtil.e(r2, "DbBookScript_table_resource", (android.content.ContentValues) r5) != 0) goto L182;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02a5 A[Catch: Exception -> 0x0336, TryCatch #6 {Exception -> 0x0336, blocks: (B:66:0x0299, B:92:0x02a5, B:94:0x02ac, B:100:0x02c5, B:102:0x02cc, B:108:0x02df, B:110:0x02e6, B:116:0x02fe, B:118:0x0305, B:124:0x031d, B:126:0x0324), top: B:65:0x0299 }] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [int] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mycompany.app.main.MainItem.ChildItem o(android.content.Context r31, com.mycompany.app.script.Script r32, com.mycompany.app.main.MainItem.ChildItem r33, java.lang.String r34, java.lang.String r35) {
        /*
            Method dump skipped, instructions count: 942
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookScript.o(android.content.Context, com.mycompany.app.script.Script, com.mycompany.app.main.MainItem$ChildItem, java.lang.String, java.lang.String):com.mycompany.app.main.MainItem$ChildItem");
    }

    public static void u(Context context, String str, String str2, String str3, String str4) {
        String[] strArr;
        SQLiteDatabase writableDatabase;
        int d;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3) && (d = DbUtil.d((writableDatabase = d(context).getWritableDatabase()), "DbBookScript_table_value", new String[]{"_value"}, "_name=? AND _namespace=? AND _key=?", (strArr = new String[]{str, str2, str3}))) != 0) {
            ContentValues f = a.f("_value", str4);
            if (d == 1) {
                DbUtil.h(writableDatabase, "DbBookScript_table_value", f, "_name=? AND _namespace=? AND _key=?", strArr);
                return;
            }
            f.put("_name", str);
            f.put("_namespace", str2);
            f.put("_key", str3);
            DbUtil.e(writableDatabase, "DbBookScript_table_value", f);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookScript_table (_name TEXT NOT NULL, _namespace TEXT NOT NULL, _descript TEXT, _downurl TEXT, _updateurl TEXT, _insturl TEXT, _icon TEXT, _runat TEXT, _flags INTEGER, _version TEXT, _content TEXT NOT NULL, _enabled INTEGER NOT NULL DEFAULT 1, _id INTEGER, _time INTEGER, _loccode TEXT, _locname TEXT, _locdesc TEXT, _author TEXT, _rsv01 TEXT, _rsv02 TEXT, _rsv03 TEXT, _rsv04 TEXT, _rsv05 TEXT, _rsv06 TEXT, _rsv07 TEXT, _rsv08 TEXT, _rsv09 TEXT, _rsv10 TEXT, _rsv11 INTEGER, _rsv12 INTEGER, _rsv13 INTEGER, _rsv14 INTEGER, _rsv15 INTEGER, _rsv16 INTEGER, _rsv17 INTEGER, _rsv18 INTEGER, _rsv19 INTEGER, _rsv20 INTEGER, PRIMARY KEY (_name, _namespace));");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookScript_table_exclude (_name TEXT NOT NULL, _namespace TEXT NOT NULL, _pattern TEXT NOT NULL, PRIMARY KEY (_name, _namespace, _pattern), FOREIGN KEY (_name, _namespace) REFERENCES DbBookScript_table (_name, _namespace) ON UPDATE CASCADE ON DELETE CASCADE);");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookScript_table_include (_name TEXT NOT NULL, _namespace TEXT NOT NULL, _pattern TEXT NOT NULL, PRIMARY KEY (_name, _namespace, _pattern), FOREIGN KEY (_name, _namespace) REFERENCES DbBookScript_table (_name, _namespace) ON UPDATE CASCADE ON DELETE CASCADE);");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookScript_table_match (_name TEXT NOT NULL, _namespace TEXT NOT NULL, _pattern TEXT NOT NULL, PRIMARY KEY (_name, _namespace, _pattern), FOREIGN KEY (_name, _namespace) REFERENCES DbBookScript_table (_name, _namespace) ON UPDATE CASCADE ON DELETE CASCADE);");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookScript_table_value (_name TEXT NOT NULL, _namespace TEXT NOT NULL, _key TEXT NOT NULL, _value TEXT NOT NULL, PRIMARY KEY (_name, _namespace, _key), FOREIGN KEY (_name, _namespace) REFERENCES DbBookScript_table (_name, _namespace) ON UPDATE CASCADE ON DELETE CASCADE);");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookScript_table_require (_name TEXT NOT NULL, _namespace TEXT NOT NULL, _downurl TEXT NOT NULL, _content TEXT NOT NULL, PRIMARY KEY (_name, _namespace, _downurl), FOREIGN KEY (_name, _namespace) REFERENCES DbBookScript_table (_name, _namespace) ON UPDATE CASCADE ON DELETE CASCADE);");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookScript_table_resource (_name TEXT NOT NULL, _namespace TEXT NOT NULL, _resname TEXT NOT NULL, _downurl TEXT NOT NULL, _data BLOB NOT NULL, PRIMARY KEY (_name, _namespace, _resname), FOREIGN KEY (_name, _namespace) REFERENCES DbBookScript_table (_name, _namespace) ON UPDATE CASCADE ON DELETE CASCADE);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookScript_table");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookScript_table_exclude");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookScript_table_include");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookScript_table_match");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookScript_table_value");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookScript_table_require");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookScript_table_resource");
        onCreate(sQLiteDatabase);
    }
}
