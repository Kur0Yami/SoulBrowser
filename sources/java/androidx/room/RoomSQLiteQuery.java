package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.sqlite.db.SupportSQLiteProgram;
import androidx.sqlite.db.SupportSQLiteQuery;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

@RestrictTo
/* loaded from: classes.dex */
public class RoomSQLiteQuery implements SupportSQLiteQuery, SupportSQLiteProgram {
    public static final TreeMap m = new TreeMap();

    /* renamed from: c, reason: collision with root package name */
    public volatile String f1631c;
    public final long[] f;
    public final double[] g;
    public final String[] h;
    public final byte[][] i;
    public final int[] j;
    public final int k;
    public int l;

    /* renamed from: androidx.room.RoomSQLiteQuery$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements SupportSQLiteProgram {
        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public final void I(int i, long j) {
            throw null;
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public final void R(byte[] bArr, int i) {
            throw null;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public final void d0(double d, int i) {
            throw null;
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public final void g0(int i) {
            throw null;
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public final void t(int i, String str) {
            throw null;
        }
    }

    public RoomSQLiteQuery(int i) {
        this.k = i;
        int i2 = i + 1;
        this.j = new int[i2];
        this.f = new long[i2];
        this.g = new double[i2];
        this.h = new String[i2];
        this.i = new byte[i2];
    }

    public static RoomSQLiteQuery d(int i, String str) {
        TreeMap treeMap = m;
        synchronized (treeMap) {
            try {
                Map.Entry ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(i));
                if (ceilingEntry != null) {
                    treeMap.remove(ceilingEntry.getKey());
                    RoomSQLiteQuery roomSQLiteQuery = (RoomSQLiteQuery) ceilingEntry.getValue();
                    roomSQLiteQuery.f1631c = str;
                    roomSQLiteQuery.l = i;
                    return roomSQLiteQuery;
                }
                RoomSQLiteQuery roomSQLiteQuery2 = new RoomSQLiteQuery(i);
                roomSQLiteQuery2.f1631c = str;
                roomSQLiteQuery2.l = i;
                return roomSQLiteQuery2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void I(int i, long j) {
        this.j[i] = 2;
        this.f[i] = j;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void R(byte[] bArr, int i) {
        this.j[i] = 5;
        this.i[i] = bArr;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public final String a() {
        return this.f1631c;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public final void b(SupportSQLiteProgram supportSQLiteProgram) {
        for (int i = 1; i <= this.l; i++) {
            int i2 = this.j[i];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 == 5) {
                                supportSQLiteProgram.R(this.i[i], i);
                            }
                        } else {
                            supportSQLiteProgram.t(i, this.h[i]);
                        }
                    } else {
                        supportSQLiteProgram.d0(this.g[i], i);
                    }
                } else {
                    supportSQLiteProgram.I(i, this.f[i]);
                }
            } else {
                supportSQLiteProgram.g0(i);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void d0(double d, int i) {
        this.j[i] = 3;
        this.g[i] = d;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void g0(int i) {
        this.j[i] = 1;
    }

    public final void release() {
        TreeMap treeMap = m;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.k), this);
            if (treeMap.size() > 15) {
                int size = treeMap.size() - 10;
                Iterator it = treeMap.descendingKeySet().iterator();
                while (true) {
                    int i = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    it.next();
                    it.remove();
                    size = i;
                }
            }
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void t(int i, String str) {
        this.j[i] = 4;
        this.h[i] = str;
    }
}
