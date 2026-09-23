package androidx.profileinstaller;

import java.util.TreeMap;

/* loaded from: classes.dex */
class DexProfileData {

    /* renamed from: a, reason: collision with root package name */
    public final String f1474a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final long f1475c;
    public long d = 0;
    public int e;
    public final int f;
    public final int g;
    public int[] h;
    public final TreeMap i;

    public DexProfileData(String str, String str2, long j, int i, int i2, int i3, int[] iArr, TreeMap treeMap) {
        this.f1474a = str;
        this.b = str2;
        this.f1475c = j;
        this.e = i;
        this.f = i2;
        this.g = i3;
        this.h = iArr;
        this.i = treeMap;
    }
}
