package androidx.appcompat.widget;

import android.content.ComponentName;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
class ActivityChooserModel extends DataSetObservable {
    public static final Object h = new Object();
    public static final HashMap i = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Object f208a = new Object();
    public final ArrayList b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f209c = new ArrayList();
    public final ActivitySorter d;
    public final int e;
    public boolean f;
    public boolean g;

    /* loaded from: classes.dex */
    public interface ActivityChooserModelClient {
    }

    /* loaded from: classes.dex */
    public static final class ActivityResolveInfo implements Comparable<ActivityResolveInfo> {
        @Override // java.lang.Comparable
        public final int compareTo(ActivityResolveInfo activityResolveInfo) {
            activityResolveInfo.getClass();
            return Float.floatToIntBits(0.0f) - Float.floatToIntBits(0.0f);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj != null && ActivityResolveInfo.class == obj.getClass()) {
                    if (Float.floatToIntBits(0.0f) != Float.floatToIntBits(0.0f)) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return Float.floatToIntBits(0.0f) + 31;
        }

        public final String toString() {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public interface ActivitySorter {
    }

    /* loaded from: classes.dex */
    public static final class DefaultSorter implements ActivitySorter {
    }

    /* loaded from: classes.dex */
    public static final class HistoricalRecord {

        /* renamed from: a, reason: collision with root package name */
        public final ComponentName f210a;
        public final long b;

        /* renamed from: c, reason: collision with root package name */
        public final float f211c;

        public HistoricalRecord(ComponentName componentName, long j, float f) {
            this.f210a = componentName;
            this.b = j;
            this.f211c = f;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || HistoricalRecord.class != obj.getClass()) {
                return false;
            }
            HistoricalRecord historicalRecord = (HistoricalRecord) obj;
            ComponentName componentName = historicalRecord.f210a;
            ComponentName componentName2 = this.f210a;
            if (componentName2 == null) {
                if (componentName != null) {
                    return false;
                }
            } else if (!componentName2.equals(componentName)) {
                return false;
            }
            if (this.b == historicalRecord.b && Float.floatToIntBits(this.f211c) == Float.floatToIntBits(historicalRecord.f211c)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            ComponentName componentName = this.f210a;
            if (componentName == null) {
                hashCode = 0;
            } else {
                hashCode = componentName.hashCode();
            }
            long j = this.b;
            return Float.floatToIntBits(this.f211c) + ((((hashCode + 31) * 31) + ((int) (j ^ (j >>> 32)))) * 31);
        }

        public final String toString() {
            return "[; activity:" + this.f210a + "; time:" + this.b + "; weight:" + new BigDecimal(this.f211c) + "]";
        }
    }

    /* loaded from: classes.dex */
    public interface OnChooseActivityListener {
    }

    /* loaded from: classes.dex */
    public final class PersistHistoryAsyncTask extends AsyncTask<Object, Void, Void> {
        @Override // android.os.AsyncTask
        public final Void doInBackground(Object[] objArr) {
            throw null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.appcompat.widget.ActivityChooserModel$ActivitySorter, java.lang.Object] */
    public ActivityChooserModel() {
        ?? obj = new Object();
        new HashMap();
        this.d = obj;
        this.e = 50;
        this.f = true;
        this.g = true;
        throw null;
    }

    public static ActivityChooserModel c() {
        ActivityChooserModel activityChooserModel;
        synchronized (h) {
            try {
                activityChooserModel = (ActivityChooserModel) i.get(null);
                if (activityChooserModel == null) {
                    new ActivityChooserModel();
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return activityChooserModel;
    }

    public final void a() {
        synchronized (this.f208a) {
        }
    }

    public final void b() {
        if (this.f && this.g && !TextUtils.isEmpty(null)) {
            this.f = false;
            throw null;
        }
        ArrayList arrayList = this.f209c;
        int size = arrayList.size() - this.e;
        if (size > 0) {
            this.g = true;
            for (int i2 = 0; i2 < size; i2++) {
            }
        }
    }

    public final ResolveInfo d() {
        synchronized (this.f208a) {
            try {
                b();
                if (!this.b.isEmpty()) {
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return null;
    }
}
