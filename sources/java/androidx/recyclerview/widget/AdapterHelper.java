package androidx.recyclerview.widget;

import android.support.v4.media.a;
import androidx.core.util.Pools;
import androidx.recyclerview.widget.OpReorderer;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AdapterHelper implements OpReorderer.Callback {
    public final RecyclerView.AnonymousClass6 d;

    /* renamed from: a, reason: collision with root package name */
    public final Pools.SimplePool f1490a = new Pools.SimplePool(30);
    public final ArrayList b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f1491c = new ArrayList();
    public int f = 0;
    public final OpReorderer e = new OpReorderer(this);

    /* loaded from: classes.dex */
    public interface Callback {
    }

    /* loaded from: classes.dex */
    public static final class UpdateOp {

        /* renamed from: a, reason: collision with root package name */
        public int f1492a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f1493c;

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof UpdateOp) {
                    UpdateOp updateOp = (UpdateOp) obj;
                    int i = this.f1492a;
                    if (i == updateOp.f1492a) {
                        if (i != 8 || Math.abs(this.f1493c - this.b) != 1 || this.f1493c != updateOp.b || this.b != updateOp.f1493c) {
                            if (this.f1493c == updateOp.f1493c && this.b == updateOp.b) {
                                return true;
                            }
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
            return (((this.f1492a * 31) + this.b) * 31) + this.f1493c;
        }

        public final String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append("[");
            int i = this.f1492a;
            if (i != 1) {
                if (i != 2) {
                    if (i != 4) {
                        if (i != 8) {
                            str = "??";
                        } else {
                            str = "mv";
                        }
                    } else {
                        str = "up";
                    }
                } else {
                    str = "rm";
                }
            } else {
                str = "add";
            }
            sb.append(str);
            sb.append(",s:");
            sb.append(this.b);
            sb.append("c:");
            return a.g(this.f1493c, ",p:null]", sb);
        }
    }

    public AdapterHelper(RecyclerView.AnonymousClass6 anonymousClass6) {
        this.d = anonymousClass6;
    }

    public final boolean a(int i) {
        ArrayList arrayList = this.f1491c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(i2);
            int i3 = updateOp.f1492a;
            if (i3 == 8) {
                if (f(updateOp.f1493c, i2 + 1) == i) {
                    return true;
                }
            } else {
                if (i3 == 1) {
                    int i4 = updateOp.b;
                    int i5 = updateOp.f1493c + i4;
                    while (i4 < i5) {
                        if (f(i4, i2 + 1) == i) {
                            return true;
                        }
                        i4++;
                    }
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    public final void b() {
        ArrayList arrayList = this.f1491c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.d.a((UpdateOp) arrayList.get(i));
        }
        k(arrayList);
        this.f = 0;
    }

    public final void c() {
        b();
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(i);
            int i2 = updateOp.f1492a;
            RecyclerView.AnonymousClass6 anonymousClass6 = this.d;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 4) {
                        if (i2 == 8) {
                            anonymousClass6.a(updateOp);
                            anonymousClass6.e(updateOp.b, updateOp.f1493c);
                        }
                    } else {
                        anonymousClass6.a(updateOp);
                        anonymousClass6.c(updateOp.b, updateOp.f1493c);
                    }
                } else {
                    anonymousClass6.a(updateOp);
                    anonymousClass6.f(updateOp.b, updateOp.f1493c);
                }
            } else {
                anonymousClass6.a(updateOp);
                anonymousClass6.d(updateOp.b, updateOp.f1493c);
            }
        }
        k(arrayList);
        this.f = 0;
    }

    public final void d(UpdateOp updateOp) {
        int i;
        Pools.SimplePool simplePool;
        int i2 = updateOp.f1492a;
        if (i2 != 1 && i2 != 8) {
            int l = l(updateOp.b, i2);
            int i3 = updateOp.b;
            int i4 = updateOp.f1492a;
            if (i4 != 2) {
                if (i4 == 4) {
                    i = 1;
                } else {
                    throw new IllegalArgumentException("op should be remove or update." + updateOp);
                }
            } else {
                i = 0;
            }
            int i5 = 1;
            int i6 = 1;
            while (true) {
                int i7 = updateOp.f1493c;
                simplePool = this.f1490a;
                if (i5 >= i7) {
                    break;
                }
                int l2 = l((i * i5) + updateOp.b, updateOp.f1492a);
                int i8 = updateOp.f1492a;
                if (i8 == 2 ? l2 == l : !(i8 != 4 || l2 != l + 1)) {
                    i6++;
                } else {
                    UpdateOp h = h(i8, l, i6);
                    e(h, i3);
                    simplePool.a(h);
                    if (updateOp.f1492a == 4) {
                        i3 += i6;
                    }
                    i6 = 1;
                    l = l2;
                }
                i5++;
            }
            simplePool.a(updateOp);
            if (i6 > 0) {
                UpdateOp h2 = h(updateOp.f1492a, l, i6);
                e(h2, i3);
                simplePool.a(h2);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("should not dispatch add or move for pre layout");
    }

    public final void e(UpdateOp updateOp, int i) {
        RecyclerView.AnonymousClass6 anonymousClass6 = this.d;
        anonymousClass6.a(updateOp);
        int i2 = updateOp.f1492a;
        if (i2 != 2) {
            if (i2 == 4) {
                anonymousClass6.c(i, updateOp.f1493c);
                return;
            }
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
        anonymousClass6.f(i, updateOp.f1493c);
    }

    public final int f(int i, int i2) {
        ArrayList arrayList = this.f1491c;
        int size = arrayList.size();
        while (i2 < size) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(i2);
            int i3 = updateOp.f1492a;
            if (i3 == 8) {
                int i4 = updateOp.b;
                if (i4 == i) {
                    i = updateOp.f1493c;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (updateOp.f1493c <= i) {
                        i++;
                    }
                }
            } else {
                int i5 = updateOp.b;
                if (i5 > i) {
                    continue;
                } else if (i3 == 2) {
                    int i6 = updateOp.f1493c;
                    if (i < i5 + i6) {
                        return -1;
                    }
                    i -= i6;
                } else if (i3 == 1) {
                    i += updateOp.f1493c;
                }
            }
            i2++;
        }
        return i;
    }

    public final boolean g() {
        if (this.b.size() > 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.recyclerview.widget.AdapterHelper$UpdateOp, java.lang.Object] */
    public final UpdateOp h(int i, int i2, int i3) {
        UpdateOp updateOp = (UpdateOp) this.f1490a.b();
        if (updateOp == null) {
            ?? obj = new Object();
            obj.f1492a = i;
            obj.b = i2;
            obj.f1493c = i3;
            return obj;
        }
        updateOp.f1492a = i;
        updateOp.b = i2;
        updateOp.f1493c = i3;
        return updateOp;
    }

    public final void i(UpdateOp updateOp) {
        this.f1491c.add(updateOp);
        int i = updateOp.f1492a;
        RecyclerView.AnonymousClass6 anonymousClass6 = this.d;
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i == 8) {
                        anonymousClass6.e(updateOp.b, updateOp.f1493c);
                        return;
                    } else {
                        throw new IllegalArgumentException("Unknown update op type for " + updateOp);
                    }
                }
                anonymousClass6.c(updateOp.b, updateOp.f1493c);
                return;
            }
            int i2 = updateOp.b;
            int i3 = updateOp.f1493c;
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.T(i2, i3, false);
            recyclerView.p0 = true;
            return;
        }
        anonymousClass6.d(updateOp.b, updateOp.f1493c);
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0098 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0007 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0111 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0106 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j() {
        /*
            Method dump skipped, instructions count: 642
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.AdapterHelper.j():void");
    }

    public final void k(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(i);
            updateOp.getClass();
            this.f1490a.a(updateOp);
        }
        arrayList.clear();
    }

    public final int l(int i, int i2) {
        int i3;
        int i4;
        ArrayList arrayList = this.f1491c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(size);
            int i5 = updateOp.f1492a;
            if (i5 == 8) {
                int i6 = updateOp.b;
                int i7 = updateOp.f1493c;
                if (i6 < i7) {
                    i4 = i6;
                    i3 = i7;
                } else {
                    i3 = i6;
                    i4 = i7;
                }
                if (i >= i4 && i <= i3) {
                    if (i4 == i6) {
                        if (i2 == 1) {
                            updateOp.f1493c = i7 + 1;
                        } else if (i2 == 2) {
                            updateOp.f1493c = i7 - 1;
                        }
                        i++;
                    } else {
                        if (i2 == 1) {
                            updateOp.b = i6 + 1;
                        } else if (i2 == 2) {
                            updateOp.b = i6 - 1;
                        }
                        i--;
                    }
                } else if (i < i6) {
                    if (i2 == 1) {
                        updateOp.b = i6 + 1;
                        updateOp.f1493c = i7 + 1;
                    } else if (i2 == 2) {
                        updateOp.b = i6 - 1;
                        updateOp.f1493c = i7 - 1;
                    }
                }
            } else {
                int i8 = updateOp.b;
                if (i8 <= i) {
                    if (i5 == 1) {
                        i -= updateOp.f1493c;
                    } else if (i5 == 2) {
                        i += updateOp.f1493c;
                    }
                } else if (i2 == 1) {
                    updateOp.b = i8 + 1;
                } else if (i2 == 2) {
                    updateOp.b = i8 - 1;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            UpdateOp updateOp2 = (UpdateOp) arrayList.get(size2);
            int i9 = updateOp2.f1492a;
            Pools.SimplePool simplePool = this.f1490a;
            if (i9 == 8) {
                int i10 = updateOp2.f1493c;
                if (i10 == updateOp2.b || i10 < 0) {
                    arrayList.remove(size2);
                    simplePool.a(updateOp2);
                }
            } else if (updateOp2.f1493c <= 0) {
                arrayList.remove(size2);
                simplePool.a(updateOp2);
            }
        }
        return i;
    }
}
