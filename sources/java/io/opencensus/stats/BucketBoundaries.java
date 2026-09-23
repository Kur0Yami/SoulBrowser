package io.opencensus.stats;

import io.opencensus.internal.Utils;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class BucketBoundaries {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f21078a = Logger.getLogger(BucketBoundaries.class.getName());

    public static final BucketBoundaries a(List list) {
        boolean z;
        Utils.b(list, "bucketBoundaries");
        ArrayList arrayList = new ArrayList(list);
        int i = 0;
        if (arrayList.size() > 1) {
            double doubleValue = ((Double) arrayList.get(0)).doubleValue();
            int i2 = 1;
            while (i2 < arrayList.size()) {
                double doubleValue2 = ((Double) arrayList.get(i2)).doubleValue();
                if (doubleValue < doubleValue2) {
                    z = true;
                } else {
                    z = false;
                }
                Utils.a("Bucket boundaries not sorted.", z);
                i2++;
                doubleValue = doubleValue2;
            }
        }
        int size = arrayList.size();
        int i3 = 0;
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            Double d = (Double) obj;
            if (d.doubleValue() > 0.0d) {
                break;
            }
            if (d.doubleValue() == 0.0d) {
                i3++;
            } else {
                i++;
            }
        }
        if (i > 0) {
            f21078a.log(Level.WARNING, "Dropping " + i + " negative bucket boundaries, the values must be strictly > 0.");
        }
        return new AutoValue_BucketBoundaries(DesugarCollections.unmodifiableList(arrayList.subList(i + i3, arrayList.size())));
    }

    public abstract List b();
}
