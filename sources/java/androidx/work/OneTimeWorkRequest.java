package androidx.work;

import androidx.work.WorkRequest;
import androidx.work.impl.model.WorkSpec;
import java.util.HashSet;
import java.util.UUID;

/* loaded from: classes.dex */
public final class OneTimeWorkRequest extends WorkRequest {

    /* loaded from: classes.dex */
    public static final class Builder extends WorkRequest.Builder<Builder, OneTimeWorkRequest> {
        public Builder(Class cls) {
            HashSet hashSet = new HashSet();
            this.f1854c = hashSet;
            this.f1853a = UUID.randomUUID();
            this.b = new WorkSpec(this.f1853a.toString(), cls.getName());
            hashSet.add(cls.getName());
            this.b.d = OverwritingInputMerger.class.getName();
        }

        @Override // androidx.work.WorkRequest.Builder
        public final WorkRequest b() {
            return new WorkRequest(this.f1853a, this.b, this.f1854c);
        }
    }
}
