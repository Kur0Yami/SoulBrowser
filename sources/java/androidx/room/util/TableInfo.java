package androidx.room.util;

import android.database.Cursor;
import android.support.v4.media.a;
import androidx.annotation.RestrictTo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

@RestrictTo
/* loaded from: classes.dex */
public class TableInfo {

    /* renamed from: a, reason: collision with root package name */
    public final String f1637a;
    public final Map b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f1638c;
    public final Set d;

    /* loaded from: classes.dex */
    public static class Column {

        /* renamed from: a, reason: collision with root package name */
        public final String f1639a;
        public final String b;

        /* renamed from: c, reason: collision with root package name */
        public final int f1640c;
        public final boolean d;
        public final int e;
        public final String f;
        public final int g;

        public Column(String str, int i, int i2, String str2, boolean z, String str3) {
            this.f1639a = str;
            this.b = str2;
            this.d = z;
            this.e = i;
            int i3 = 5;
            if (str2 != null) {
                String upperCase = str2.toUpperCase(Locale.US);
                if (upperCase.contains("INT")) {
                    i3 = 3;
                } else if (!upperCase.contains("CHAR") && !upperCase.contains("CLOB") && !upperCase.contains("TEXT")) {
                    if (!upperCase.contains("BLOB")) {
                        i3 = (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
                    }
                } else {
                    i3 = 2;
                }
            }
            this.f1640c = i3;
            this.f = str3;
            this.g = i2;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj != null && getClass() == obj.getClass()) {
                    Column column = (Column) obj;
                    int i = column.g;
                    String str = column.f;
                    if (this.e == column.e && this.f1639a.equals(column.f1639a) && this.d == column.d) {
                        String str2 = this.f;
                        int i2 = this.g;
                        if (i2 != 1 || i != 2 || str2 == null || str2.equals(str)) {
                            if (i2 != 2 || i != 1 || str == null || str.equals(str2)) {
                                if (i2 != 0 && i2 == i) {
                                    if (str2 != null) {
                                        if (!str2.equals(str)) {
                                            return false;
                                        }
                                    } else if (str != null) {
                                        return false;
                                    }
                                }
                                if (this.f1640c != column.f1640c) {
                                    return false;
                                }
                            } else {
                                return false;
                            }
                        } else {
                            return false;
                        }
                    } else {
                        return false;
                    }
                } else {
                    return false;
                }
            }
            return true;
        }

        public final int hashCode() {
            int i;
            int hashCode = ((this.f1639a.hashCode() * 31) + this.f1640c) * 31;
            if (this.d) {
                i = 1231;
            } else {
                i = 1237;
            }
            return ((hashCode + i) * 31) + this.e;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Column{name='");
            sb.append(this.f1639a);
            sb.append("', type='");
            sb.append(this.b);
            sb.append("', affinity='");
            sb.append(this.f1640c);
            sb.append("', notNull=");
            sb.append(this.d);
            sb.append(", primaryKeyPosition=");
            sb.append(this.e);
            sb.append(", defaultValue='");
            return a.p(sb, this.f, "'}");
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public static class ForeignKey {

        /* renamed from: a, reason: collision with root package name */
        public final String f1641a;
        public final String b;

        /* renamed from: c, reason: collision with root package name */
        public final String f1642c;
        public final List d;
        public final List e;

        public ForeignKey(String str, String str2, String str3, List list, List list2) {
            this.f1641a = str;
            this.b = str2;
            this.f1642c = str3;
            this.d = DesugarCollections.unmodifiableList(list);
            this.e = DesugarCollections.unmodifiableList(list2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            ForeignKey foreignKey = (ForeignKey) obj;
            if (!this.f1641a.equals(foreignKey.f1641a) || !this.b.equals(foreignKey.b) || !this.f1642c.equals(foreignKey.f1642c) || !this.d.equals(foreignKey.d)) {
                return false;
            }
            return this.e.equals(foreignKey.e);
        }

        public final int hashCode() {
            return this.e.hashCode() + ((this.d.hashCode() + ((this.f1642c.hashCode() + ((this.b.hashCode() + (this.f1641a.hashCode() * 31)) * 31)) * 31)) * 31);
        }

        public final String toString() {
            return "ForeignKey{referenceTable='" + this.f1641a + "', onDelete='" + this.b + "', onUpdate='" + this.f1642c + "', columnNames=" + this.d + ", referenceColumnNames=" + this.e + '}';
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public static class ForeignKeyWithSequence implements Comparable<ForeignKeyWithSequence> {

        /* renamed from: c, reason: collision with root package name */
        public final int f1643c;
        public final int f;
        public final String g;
        public final String h;

        public ForeignKeyWithSequence(String str, int i, int i2, String str2) {
            this.f1643c = i;
            this.f = i2;
            this.g = str;
            this.h = str2;
        }

        @Override // java.lang.Comparable
        public final int compareTo(ForeignKeyWithSequence foreignKeyWithSequence) {
            ForeignKeyWithSequence foreignKeyWithSequence2 = foreignKeyWithSequence;
            int i = this.f1643c - foreignKeyWithSequence2.f1643c;
            if (i == 0) {
                return this.f - foreignKeyWithSequence2.f;
            }
            return i;
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public static class Index {

        /* renamed from: a, reason: collision with root package name */
        public final String f1644a;
        public final boolean b;

        /* renamed from: c, reason: collision with root package name */
        public final List f1645c;

        public Index(String str, boolean z, List list) {
            this.f1644a = str;
            this.b = z;
            this.f1645c = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Index index = (Index) obj;
            String str = index.f1644a;
            if (this.b != index.b || !this.f1645c.equals(index.f1645c)) {
                return false;
            }
            String str2 = this.f1644a;
            if (str2.startsWith("index_")) {
                return str.startsWith("index_");
            }
            return str2.equals(str);
        }

        public final int hashCode() {
            int hashCode;
            String str = this.f1644a;
            if (str.startsWith("index_")) {
                hashCode = -1184239155;
            } else {
                hashCode = str.hashCode();
            }
            return this.f1645c.hashCode() + (((hashCode * 31) + (this.b ? 1 : 0)) * 31);
        }

        public final String toString() {
            return "Index{name='" + this.f1644a + "', unique=" + this.b + ", columns=" + this.f1645c + '}';
        }
    }

    public TableInfo(String str, HashMap hashMap, HashSet hashSet, HashSet hashSet2) {
        Set unmodifiableSet;
        this.f1637a = str;
        this.b = DesugarCollections.unmodifiableMap(hashMap);
        this.f1638c = DesugarCollections.unmodifiableSet(hashSet);
        if (hashSet2 == null) {
            unmodifiableSet = null;
        } else {
            unmodifiableSet = DesugarCollections.unmodifiableSet(hashSet2);
        }
        this.d = unmodifiableSet;
    }

    public static TableInfo a(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        ArrayList arrayList;
        boolean z2;
        Cursor P = supportSQLiteDatabase.P("PRAGMA table_info(`" + str + "`)");
        HashMap hashMap = new HashMap();
        try {
            if (P.getColumnCount() > 0) {
                int columnIndex = P.getColumnIndex("name");
                int columnIndex2 = P.getColumnIndex("type");
                int columnIndex3 = P.getColumnIndex("notnull");
                int columnIndex4 = P.getColumnIndex("pk");
                int columnIndex5 = P.getColumnIndex("dflt_value");
                while (P.moveToNext()) {
                    String string = P.getString(columnIndex);
                    String string2 = P.getString(columnIndex2);
                    if (P.getInt(columnIndex3) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    hashMap.put(string, new Column(string, P.getInt(columnIndex4), 2, string2, z2, P.getString(columnIndex5)));
                }
            }
            P.close();
            HashSet hashSet = new HashSet();
            P = supportSQLiteDatabase.P("PRAGMA foreign_key_list(`" + str + "`)");
            try {
                int columnIndex6 = P.getColumnIndex("id");
                int columnIndex7 = P.getColumnIndex("seq");
                int columnIndex8 = P.getColumnIndex("table");
                int columnIndex9 = P.getColumnIndex("on_delete");
                int columnIndex10 = P.getColumnIndex("on_update");
                ArrayList b = b(P);
                int count = P.getCount();
                int i5 = 0;
                while (i5 < count) {
                    P.moveToPosition(i5);
                    if (P.getInt(columnIndex7) != 0) {
                        i = i5;
                        i2 = columnIndex6;
                        i3 = columnIndex7;
                        arrayList = b;
                        i4 = count;
                    } else {
                        int i6 = P.getInt(columnIndex6);
                        i = i5;
                        ArrayList arrayList2 = new ArrayList();
                        i2 = columnIndex6;
                        ArrayList arrayList3 = new ArrayList();
                        i3 = columnIndex7;
                        int size = b.size();
                        i4 = count;
                        int i7 = 0;
                        while (i7 < size) {
                            Object obj = b.get(i7);
                            i7++;
                            int i8 = size;
                            ForeignKeyWithSequence foreignKeyWithSequence = (ForeignKeyWithSequence) obj;
                            ArrayList arrayList4 = b;
                            if (foreignKeyWithSequence.f1643c == i6) {
                                arrayList2.add(foreignKeyWithSequence.g);
                                arrayList3.add(foreignKeyWithSequence.h);
                            }
                            size = i8;
                            b = arrayList4;
                        }
                        arrayList = b;
                        hashSet.add(new ForeignKey(P.getString(columnIndex8), P.getString(columnIndex9), P.getString(columnIndex10), arrayList2, arrayList3));
                    }
                    i5 = i + 1;
                    columnIndex6 = i2;
                    columnIndex7 = i3;
                    count = i4;
                    b = arrayList;
                }
                P.close();
                P = supportSQLiteDatabase.P("PRAGMA index_list(`" + str + "`)");
                try {
                    int columnIndex11 = P.getColumnIndex("name");
                    int columnIndex12 = P.getColumnIndex("origin");
                    int columnIndex13 = P.getColumnIndex("unique");
                    HashSet hashSet2 = null;
                    if (columnIndex11 != -1 && columnIndex12 != -1 && columnIndex13 != -1) {
                        HashSet hashSet3 = new HashSet();
                        while (P.moveToNext()) {
                            if ("c".equals(P.getString(columnIndex12))) {
                                String string3 = P.getString(columnIndex11);
                                if (P.getInt(columnIndex13) == 1) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                Index c2 = c(supportSQLiteDatabase, string3, z);
                                if (c2 != null) {
                                    hashSet3.add(c2);
                                }
                            }
                        }
                        P.close();
                        hashSet2 = hashSet3;
                        return new TableInfo(str, hashMap, hashSet, hashSet2);
                    }
                    return new TableInfo(str, hashMap, hashSet, hashSet2);
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    public static ArrayList b(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < count; i++) {
            cursor.moveToPosition(i);
            arrayList.add(new ForeignKeyWithSequence(cursor.getString(columnIndex3), cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* JADX WARN: Finally extract failed */
    public static Index c(SupportSQLiteDatabase supportSQLiteDatabase, String str, boolean z) {
        Cursor P = supportSQLiteDatabase.P("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = P.getColumnIndex("seqno");
            int columnIndex2 = P.getColumnIndex("cid");
            int columnIndex3 = P.getColumnIndex("name");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                TreeMap treeMap = new TreeMap();
                while (P.moveToNext()) {
                    if (P.getInt(columnIndex2) >= 0) {
                        treeMap.put(Integer.valueOf(P.getInt(columnIndex)), P.getString(columnIndex3));
                    }
                }
                ArrayList arrayList = new ArrayList(treeMap.size());
                arrayList.addAll(treeMap.values());
                Index index = new Index(str, z, arrayList);
                P.close();
                return index;
            }
            P.close();
            return null;
        } catch (Throwable th) {
            P.close();
            throw th;
        }
    }

    public final boolean equals(Object obj) {
        Set set;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TableInfo tableInfo = (TableInfo) obj;
        Set set2 = tableInfo.f1638c;
        Map map = tableInfo.b;
        String str = tableInfo.f1637a;
        String str2 = this.f1637a;
        if (str2 == null ? str != null : !str2.equals(str)) {
            return false;
        }
        Map map2 = this.b;
        if (map2 == null ? map != null : !map2.equals(map)) {
            return false;
        }
        Set set3 = this.f1638c;
        if (set3 == null ? set2 != null : !set3.equals(set2)) {
            return false;
        }
        Set set4 = this.d;
        if (set4 == null || (set = tableInfo.d) == null) {
            return true;
        }
        return set4.equals(set);
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3 = 0;
        String str = this.f1637a;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i4 = i * 31;
        Map map = this.b;
        if (map != null) {
            i2 = map.hashCode();
        } else {
            i2 = 0;
        }
        int i5 = (i4 + i2) * 31;
        Set set = this.f1638c;
        if (set != null) {
            i3 = set.hashCode();
        }
        return i5 + i3;
    }

    public final String toString() {
        return "TableInfo{name='" + this.f1637a + "', columns=" + this.b + ", foreignKeys=" + this.f1638c + ", indices=" + this.d + '}';
    }
}
