package androidx.work.impl;

import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.WorkContinuation;
import androidx.work.WorkRequest;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

@RestrictTo
/* loaded from: classes.dex */
public class WorkContinuationImpl extends WorkContinuation {
    public static final String g = Logger.e("WorkContinuationImpl");

    /* renamed from: a, reason: collision with root package name */
    public final WorkManagerImpl f1866a;
    public final List b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f1867c;
    public final ArrayList d = new ArrayList();
    public boolean e;
    public OperationImpl f;

    public WorkContinuationImpl(WorkManagerImpl workManagerImpl, List list) {
        this.f1866a = workManagerImpl;
        this.b = list;
        this.f1867c = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            String uuid = ((WorkRequest) list.get(i)).f1851a.toString();
            this.f1867c.add(uuid);
            this.d.add(uuid);
        }
    }

    public static HashSet a(WorkContinuationImpl workContinuationImpl) {
        HashSet hashSet = new HashSet();
        workContinuationImpl.getClass();
        return hashSet;
    }
}
