package com.mycompany.app.script;

import android.text.TextUtils;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class ScriptCache {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f17546a = new LinkedHashMap(64, 1.0f, true);
    public ScriptCriteria[] b;

    /* renamed from: com.mycompany.app.script.ScriptCache$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends LinkedHashMap<String, Script[]> {
        @Override // java.util.LinkedHashMap
        public final boolean removeEldestEntry(Map.Entry<String, Script[]> entry) {
            if (size() > 62) {
                return true;
            }
            return false;
        }
    }

    public final synchronized void a(String str, Script[] scriptArr) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        LinkedHashMap linkedHashMap = this.f17546a;
        if (linkedHashMap == null) {
            return;
        }
        try {
            linkedHashMap.put(str, scriptArr);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00cc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(android.content.Context r20) {
        /*
            r19 = this;
            r0 = r20
            com.mycompany.app.db.book.DbBookScript r1 = com.mycompany.app.db.book.DbBookScript.f12949c
            java.lang.String r1 = "_namespace"
            java.lang.String r2 = "_name"
            r3 = 0
            java.util.ArrayList r4 = new java.util.ArrayList     // Catch: java.lang.Exception -> Lc8
            r4.<init>()     // Catch: java.lang.Exception -> Lc8
            java.lang.String r5 = "1"
            r4.add(r5)     // Catch: java.lang.Exception -> Lc8
            java.lang.String r9 = "_enabled = ?"
            int r5 = r4.size()     // Catch: java.lang.Exception -> Lc8
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch: java.lang.Exception -> Lc8
            java.lang.Object[] r4 = r4.toArray(r5)     // Catch: java.lang.Exception -> Lc8
            r10 = r4
            java.lang.String[] r10 = (java.lang.String[]) r10     // Catch: java.lang.Exception -> Lc8
            java.lang.String r4 = "DbBookScript_table_exclude"
            java.util.HashMap r4 = com.mycompany.app.db.book.DbBookScript.f(r0, r4, r3, r3)     // Catch: java.lang.Exception -> Lc8
            java.lang.String r5 = "DbBookScript_table_include"
            java.util.HashMap r5 = com.mycompany.app.db.book.DbBookScript.f(r0, r5, r3, r3)     // Catch: java.lang.Exception -> Lc8
            java.lang.String r6 = "DbBookScript_table_match"
            java.util.HashMap r12 = com.mycompany.app.db.book.DbBookScript.f(r0, r6, r3, r3)     // Catch: java.lang.Exception -> Lc8
            java.lang.String[] r8 = new java.lang.String[]{r2, r1}     // Catch: java.lang.Exception -> Lc8
            com.mycompany.app.db.book.DbBookScript r0 = com.mycompany.app.db.book.DbBookScript.d(r0)     // Catch: java.lang.Exception -> Lc8
            android.database.sqlite.SQLiteDatabase r6 = r0.getWritableDatabase()     // Catch: java.lang.Exception -> Lc8
            java.lang.String r7 = "DbBookScript_table"
            r11 = 0
            android.database.Cursor r0 = com.mycompany.app.db.DbUtil.g(r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Exception -> Lc8
            int r6 = r0.getCount()     // Catch: java.lang.Exception -> Lc6
            com.mycompany.app.script.ScriptCriteria[] r6 = new com.mycompany.app.script.ScriptCriteria[r6]     // Catch: java.lang.Exception -> Lc6
            boolean r7 = r0.moveToFirst()     // Catch: java.lang.Exception -> Lc4
            if (r7 == 0) goto Lca
            int r2 = r0.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lc4
            int r1 = r0.getColumnIndex(r1)     // Catch: java.lang.Exception -> Lc4
            r7 = 0
        L5c:
            java.lang.String r14 = r0.getString(r2)     // Catch: java.lang.Exception -> Lc4
            java.lang.String r15 = r0.getString(r1)     // Catch: java.lang.Exception -> Lc4
            com.mycompany.app.script.ScriptId r8 = new com.mycompany.app.script.ScriptId     // Catch: java.lang.Exception -> Lc4
            r8.<init>(r14, r15)     // Catch: java.lang.Exception -> Lc4
            java.lang.Object r9 = r4.get(r8)     // Catch: java.lang.Exception -> Lc4
            java.util.List r9 = (java.util.List) r9     // Catch: java.lang.Exception -> Lc4
            if (r9 != 0) goto L74
            r16 = r3
            goto L82
        L74:
            int r10 = r9.size()     // Catch: java.lang.Exception -> Lc4
            java.lang.String[] r10 = new java.lang.String[r10]     // Catch: java.lang.Exception -> Lc4
            java.lang.Object[] r9 = r9.toArray(r10)     // Catch: java.lang.Exception -> Lc4
            java.lang.String[] r9 = (java.lang.String[]) r9     // Catch: java.lang.Exception -> Lc4
            r16 = r9
        L82:
            java.lang.Object r9 = r5.get(r8)     // Catch: java.lang.Exception -> Lc4
            java.util.List r9 = (java.util.List) r9     // Catch: java.lang.Exception -> Lc4
            if (r9 != 0) goto L8d
            r17 = r3
            goto L9b
        L8d:
            int r10 = r9.size()     // Catch: java.lang.Exception -> Lc4
            java.lang.String[] r10 = new java.lang.String[r10]     // Catch: java.lang.Exception -> Lc4
            java.lang.Object[] r9 = r9.toArray(r10)     // Catch: java.lang.Exception -> Lc4
            java.lang.String[] r9 = (java.lang.String[]) r9     // Catch: java.lang.Exception -> Lc4
            r17 = r9
        L9b:
            java.lang.Object r8 = r12.get(r8)     // Catch: java.lang.Exception -> Lc4
            java.util.List r8 = (java.util.List) r8     // Catch: java.lang.Exception -> Lc4
            if (r8 != 0) goto La6
            r18 = r3
            goto Lb4
        La6:
            int r9 = r8.size()     // Catch: java.lang.Exception -> Lc4
            java.lang.String[] r9 = new java.lang.String[r9]     // Catch: java.lang.Exception -> Lc4
            java.lang.Object[] r8 = r8.toArray(r9)     // Catch: java.lang.Exception -> Lc4
            java.lang.String[] r8 = (java.lang.String[]) r8     // Catch: java.lang.Exception -> Lc4
            r18 = r8
        Lb4:
            com.mycompany.app.script.ScriptCriteria r13 = new com.mycompany.app.script.ScriptCriteria     // Catch: java.lang.Exception -> Lc4
            r13.<init>(r14, r15, r16, r17, r18)     // Catch: java.lang.Exception -> Lc4
            r6[r7] = r13     // Catch: java.lang.Exception -> Lc4
            int r7 = r7 + 1
            boolean r8 = r0.moveToNext()     // Catch: java.lang.Exception -> Lc4
            if (r8 != 0) goto L5c
            goto Lca
        Lc4:
            r3 = r0
            goto Lc9
        Lc6:
            r6 = r3
            goto Lc4
        Lc8:
            r6 = r3
        Lc9:
            r0 = r3
        Lca:
            if (r0 == 0) goto Lcf
            r0.close()     // Catch: java.lang.Exception -> Lcf
        Lcf:
            r0 = r19
            r0.b = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.script.ScriptCache.b(android.content.Context):void");
    }
}
