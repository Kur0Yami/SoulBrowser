package androidx.work.impl.model;

import android.support.v4.media.a;
import androidx.annotation.RestrictTo;
import androidx.arch.core.util.Function;
import androidx.room.Entity;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import java.util.List;

@Entity
@RestrictTo
/* loaded from: classes.dex */
public final class WorkSpec {
    public static final Function s = null;

    /* renamed from: a, reason: collision with root package name */
    public String f1936a;
    public WorkInfo.State b = WorkInfo.State.f1849c;

    /* renamed from: c, reason: collision with root package name */
    public String f1937c;
    public String d;
    public Data e;
    public Data f;
    public long g;
    public long h;
    public long i;
    public Constraints j;
    public int k;
    public BackoffPolicy l;
    public long m;
    public long n;
    public long o;
    public long p;
    public boolean q;
    public OutOfQuotaPolicy r;

    /* renamed from: androidx.work.impl.model.WorkSpec$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Function<List<WorkInfoPojo>, List<WorkInfo>> {
        @Override // androidx.arch.core.util.Function
        public final Object apply() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static class IdAndState {

        /* renamed from: a, reason: collision with root package name */
        public String f1938a;
        public WorkInfo.State b;

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IdAndState)) {
                return false;
            }
            IdAndState idAndState = (IdAndState) obj;
            if (this.b != idAndState.b) {
                return false;
            }
            return this.f1938a.equals(idAndState.f1938a);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.f1938a.hashCode() * 31);
        }
    }

    /* loaded from: classes.dex */
    public static class WorkInfoPojo {
        public final boolean equals(Object obj) {
            if (this != obj && !(obj instanceof WorkInfoPojo)) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return (0 * 31) + 0;
        }
    }

    static {
        Logger.e("WorkSpec");
    }

    public WorkSpec(String str, String str2) {
        Data data = Data.f1833c;
        this.e = data;
        this.f = data;
        this.j = Constraints.i;
        this.l = BackoffPolicy.f1824c;
        this.m = 30000L;
        this.p = -1L;
        this.r = OutOfQuotaPolicy.f1848c;
        this.f1936a = str;
        this.f1937c = str2;
    }

    public final long a() {
        int i;
        long scalb;
        if (this.b == WorkInfo.State.f1849c && (i = this.k) > 0) {
            if (this.l == BackoffPolicy.f) {
                scalb = this.m * i;
            } else {
                scalb = Math.scalb((float) this.m, i - 1);
            }
            return Math.min(18000000L, scalb) + this.n;
        }
        long j = 0;
        if (c()) {
            long currentTimeMillis = System.currentTimeMillis();
            long j2 = this.n;
            if (j2 == 0) {
                j2 = this.g + currentTimeMillis;
            }
            long j3 = this.i;
            long j4 = this.h;
            if (j3 != j4) {
                if (j2 == 0) {
                    j = j3 * (-1);
                }
                return j2 + j4 + j;
            }
            if (j2 != 0) {
                j = j4;
            }
            return j2 + j;
        }
        long j5 = this.n;
        if (j5 == 0) {
            j5 = System.currentTimeMillis();
        }
        return j5 + this.g;
    }

    public final boolean b() {
        return !Constraints.i.equals(this.j);
    }

    public final boolean c() {
        if (this.h != 0) {
            return true;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && WorkSpec.class == obj.getClass()) {
            WorkSpec workSpec = (WorkSpec) obj;
            if (this.g != workSpec.g || this.h != workSpec.h || this.i != workSpec.i || this.k != workSpec.k || this.m != workSpec.m || this.n != workSpec.n || this.o != workSpec.o || this.p != workSpec.p || this.q != workSpec.q || !this.f1936a.equals(workSpec.f1936a) || this.b != workSpec.b || !this.f1937c.equals(workSpec.f1937c)) {
                return false;
            }
            String str = this.d;
            if (str == null ? workSpec.d != null : !str.equals(workSpec.d)) {
                return false;
            }
            if (this.e.equals(workSpec.e) && this.f.equals(workSpec.f) && this.j.equals(workSpec.j) && this.l == workSpec.l && this.r == workSpec.r) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = (this.f1937c.hashCode() + ((this.b.hashCode() + (this.f1936a.hashCode() * 31)) * 31)) * 31;
        String str = this.d;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int hashCode2 = (this.f.hashCode() + ((this.e.hashCode() + ((hashCode + i) * 31)) * 31)) * 31;
        long j = this.g;
        int i2 = (hashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.h;
        int i3 = (i2 + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.i;
        int hashCode3 = (this.l.hashCode() + ((((this.j.hashCode() + ((i3 + ((int) (j3 ^ (j3 >>> 32)))) * 31)) * 31) + this.k) * 31)) * 31;
        long j4 = this.m;
        int i4 = (hashCode3 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
        long j5 = this.n;
        int i5 = (i4 + ((int) (j5 ^ (j5 >>> 32)))) * 31;
        long j6 = this.o;
        int i6 = (i5 + ((int) (j6 ^ (j6 >>> 32)))) * 31;
        long j7 = this.p;
        return this.r.hashCode() + ((((i6 + ((int) (j7 ^ (j7 >>> 32)))) * 31) + (this.q ? 1 : 0)) * 31);
    }

    public final String toString() {
        return a.p(new StringBuilder("{WorkSpec: "), this.f1936a, "}");
    }
}
