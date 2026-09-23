package androidx.work.impl.model;

import androidx.annotation.RestrictTo;
import androidx.room.Entity;
import androidx.work.Data;

@Entity
@RestrictTo
/* loaded from: classes.dex */
public class WorkProgress {

    /* renamed from: a, reason: collision with root package name */
    public final String f1933a;
    public final Data b;

    public WorkProgress(String str, Data data) {
        this.f1933a = str;
        this.b = data;
    }
}
