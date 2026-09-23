package androidx.work.impl.workers;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

@RestrictTo
/* loaded from: classes.dex */
public class DiagnosticsWorker extends Worker {
    public static final String k = Logger.e("DiagnosticsWrkr");

    public DiagnosticsWorker(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public static String a(WorkNameDao workNameDao, WorkTagDao workTagDao, SystemIdInfoDao systemIdInfoDao, List list) {
        Integer num;
        StringBuilder sb = new StringBuilder("\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            WorkSpec workSpec = (WorkSpec) it.next();
            SystemIdInfo c2 = systemIdInfoDao.c(workSpec.f1936a);
            if (c2 != null) {
                num = Integer.valueOf(c2.b);
            } else {
                num = null;
            }
            ArrayList b = workNameDao.b(workSpec.f1936a);
            ArrayList b2 = workTagDao.b(workSpec.f1936a);
            String join = TextUtils.join(",", b);
            String join2 = TextUtils.join(",", b2);
            String str = workSpec.f1936a;
            String str2 = workSpec.f1937c;
            String name = workSpec.b.name();
            StringBuilder u = a.u("\n", str, "\t ", str2, "\t ");
            u.append(num);
            u.append("\t ");
            u.append(name);
            u.append("\t ");
            sb.append(android.support.v4.media.a.r(u, join, "\t ", join2, "\t"));
        }
        return sb.toString();
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.Result doWork() {
        WorkDatabase workDatabase = WorkManagerImpl.c(getApplicationContext()).f1876c;
        WorkSpecDao n = workDatabase.n();
        WorkNameDao l = workDatabase.l();
        WorkTagDao o = workDatabase.o();
        SystemIdInfoDao k2 = workDatabase.k();
        ArrayList f = n.f(System.currentTimeMillis() - TimeUnit.DAYS.toMillis(1L));
        ArrayList m = n.m();
        ArrayList c2 = n.c();
        boolean isEmpty = f.isEmpty();
        String str = k;
        if (!isEmpty) {
            Logger.c().d(str, "Recently completed work:\n\n", new Throwable[0]);
            Logger.c().d(str, a(l, o, k2, f), new Throwable[0]);
        }
        if (!m.isEmpty()) {
            Logger.c().d(str, "Running work:\n\n", new Throwable[0]);
            Logger.c().d(str, a(l, o, k2, m), new Throwable[0]);
        }
        if (!c2.isEmpty()) {
            Logger.c().d(str, "Enqueued work:\n\n", new Throwable[0]);
            Logger.c().d(str, a(l, o, k2, c2), new Throwable[0]);
        }
        return new ListenableWorker.Result.Success(Data.f1833c);
    }
}
