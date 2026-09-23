package androidx.recyclerview.widget;

import androidx.collection.LongSparseArray;
import androidx.collection.LongSparseArrayKt;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ViewInfoStore {

    /* renamed from: a, reason: collision with root package name */
    public final SimpleArrayMap f1605a = new SimpleArrayMap(0);
    public final LongSparseArray b = new LongSparseArray();

    /* loaded from: classes.dex */
    public static class InfoRecord {
        public static final Pools.SimplePool d = new Pools.SimplePool(20);

        /* renamed from: a, reason: collision with root package name */
        public int f1606a;
        public RecyclerView.ItemAnimator.ItemHolderInfo b;

        /* renamed from: c, reason: collision with root package name */
        public RecyclerView.ItemAnimator.ItemHolderInfo f1607c;

        /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, androidx.recyclerview.widget.ViewInfoStore$InfoRecord] */
        public static InfoRecord a() {
            InfoRecord infoRecord = (InfoRecord) d.b();
            if (infoRecord == null) {
                return new Object();
            }
            return infoRecord;
        }
    }

    /* loaded from: classes.dex */
    public interface ProcessCallback {
    }

    public final void a(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        SimpleArrayMap simpleArrayMap = this.f1605a;
        InfoRecord infoRecord = (InfoRecord) simpleArrayMap.get(viewHolder);
        if (infoRecord == null) {
            infoRecord = InfoRecord.a();
            simpleArrayMap.put(viewHolder, infoRecord);
        }
        infoRecord.f1607c = itemHolderInfo;
        infoRecord.f1606a |= 8;
    }

    public final RecyclerView.ItemAnimator.ItemHolderInfo b(RecyclerView.ViewHolder viewHolder, int i) {
        InfoRecord infoRecord;
        RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo;
        SimpleArrayMap simpleArrayMap = this.f1605a;
        int d = simpleArrayMap.d(viewHolder);
        if (d >= 0 && (infoRecord = (InfoRecord) simpleArrayMap.j(d)) != null) {
            int i2 = infoRecord.f1606a;
            if ((i2 & i) != 0) {
                int i3 = i2 & (~i);
                infoRecord.f1606a = i3;
                if (i == 4) {
                    itemHolderInfo = infoRecord.b;
                } else if (i == 8) {
                    itemHolderInfo = infoRecord.f1607c;
                } else {
                    throw new IllegalArgumentException("Must provide flag PRE or POST");
                }
                if ((i3 & 12) == 0) {
                    simpleArrayMap.h(d);
                    infoRecord.f1606a = 0;
                    infoRecord.b = null;
                    infoRecord.f1607c = null;
                    InfoRecord.d.a(infoRecord);
                }
                return itemHolderInfo;
            }
        }
        return null;
    }

    public final void c(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = (InfoRecord) this.f1605a.get(viewHolder);
        if (infoRecord == null) {
            return;
        }
        infoRecord.f1606a &= -2;
    }

    public final void d(RecyclerView.ViewHolder viewHolder) {
        LongSparseArray longSparseArray = this.b;
        int h = longSparseArray.h() - 1;
        while (true) {
            if (h < 0) {
                break;
            }
            if (viewHolder == longSparseArray.i(h)) {
                Object[] objArr = longSparseArray.g;
                Object obj = objArr[h];
                Object obj2 = LongSparseArrayKt.f446a;
                if (obj != obj2) {
                    objArr[h] = obj2;
                    longSparseArray.f445c = true;
                }
            } else {
                h--;
            }
        }
        InfoRecord infoRecord = (InfoRecord) this.f1605a.remove(viewHolder);
        if (infoRecord != null) {
            infoRecord.f1606a = 0;
            infoRecord.b = null;
            infoRecord.f1607c = null;
            InfoRecord.d.a(infoRecord);
        }
    }
}
