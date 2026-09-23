package androidx.work;

import android.os.Build;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

/* loaded from: classes.dex */
public abstract class WorkRequest {

    /* renamed from: a, reason: collision with root package name */
    public final UUID f1851a;
    public final WorkSpec b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f1852c;

    /* loaded from: classes.dex */
    public static abstract class Builder<B extends Builder<?, ?>, W extends WorkRequest> {

        /* renamed from: a, reason: collision with root package name */
        public UUID f1853a;
        public WorkSpec b;

        /* renamed from: c, reason: collision with root package name */
        public HashSet f1854c;

        /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object, androidx.work.impl.model.WorkSpec] */
        /* JADX WARN: Type inference failed for: r5v10, types: [androidx.work.Constraints, java.lang.Object] */
        public final WorkRequest a() {
            boolean z;
            WorkRequest b = b();
            Constraints constraints = this.b.j;
            if ((Build.VERSION.SDK_INT < 24 || constraints.h.f1831a.size() <= 0) && !constraints.d && !constraints.b && !constraints.f1829c) {
                z = false;
            } else {
                z = true;
            }
            if (this.b.q && z) {
                throw new IllegalArgumentException("Expedited jobs only support network and storage constraints");
            }
            this.f1853a = UUID.randomUUID();
            WorkSpec workSpec = this.b;
            ?? obj = new Object();
            obj.b = WorkInfo.State.f1849c;
            Data data = Data.f1833c;
            obj.e = data;
            obj.f = data;
            obj.j = Constraints.i;
            obj.l = BackoffPolicy.f1824c;
            obj.m = 30000L;
            obj.p = -1L;
            obj.r = OutOfQuotaPolicy.f1848c;
            obj.f1936a = workSpec.f1936a;
            obj.f1937c = workSpec.f1937c;
            obj.b = workSpec.b;
            obj.d = workSpec.d;
            obj.e = new Data(workSpec.e);
            obj.f = new Data(workSpec.f);
            obj.g = workSpec.g;
            obj.h = workSpec.h;
            obj.i = workSpec.i;
            Constraints constraints2 = workSpec.j;
            ?? obj2 = new Object();
            obj2.f1828a = NetworkType.f1845c;
            obj2.f = -1L;
            obj2.g = -1L;
            obj2.h = new ContentUriTriggers();
            obj2.b = constraints2.b;
            obj2.f1829c = constraints2.f1829c;
            obj2.f1828a = constraints2.f1828a;
            obj2.d = constraints2.d;
            obj2.e = constraints2.e;
            obj2.h = constraints2.h;
            obj.j = obj2;
            obj.k = workSpec.k;
            obj.l = workSpec.l;
            obj.m = workSpec.m;
            obj.n = workSpec.n;
            obj.o = workSpec.o;
            obj.p = workSpec.p;
            obj.q = workSpec.q;
            obj.r = workSpec.r;
            this.b = obj;
            obj.f1936a = this.f1853a.toString();
            return b;
        }

        public abstract WorkRequest b();
    }

    public WorkRequest(UUID uuid, WorkSpec workSpec, HashSet hashSet) {
        this.f1851a = uuid;
        this.b = workSpec;
        this.f1852c = hashSet;
    }
}
