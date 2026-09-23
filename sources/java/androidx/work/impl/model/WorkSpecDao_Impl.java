package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.WorkInfo;
import androidx.work.impl.WorkDatabase_Impl;
import androidx.work.impl.model.WorkSpec;
import com.google.api.client.http.HttpStatusCodes;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class WorkSpecDao_Impl implements WorkSpecDao {

    /* renamed from: a, reason: collision with root package name */
    public final WorkDatabase_Impl f1939a;
    public final EntityInsertionAdapter b;

    /* renamed from: c, reason: collision with root package name */
    public final SharedSQLiteStatement f1940c;
    public final SharedSQLiteStatement d;
    public final SharedSQLiteStatement e;
    public final SharedSQLiteStatement f;
    public final SharedSQLiteStatement g;
    public final SharedSQLiteStatement h;
    public final SharedSQLiteStatement i;

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends EntityInsertionAdapter<WorkSpec> {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX WARN: Can't wrap try/catch for region: R(6:45|(2:46|47)|(5:49|50|(2:53|51)|54|55)|56|57|58) */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x01aa, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x01ab, code lost:
        
            r0.printStackTrace();
         */
        /* JADX WARN: Removed duplicated region for block: B:90:0x01c2  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x01c8  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:83:0x01a3 -> B:55:0x01a6). Please report as a decompilation issue!!! */
        @Override // androidx.room.EntityInsertionAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void d(androidx.sqlite.db.SupportSQLiteStatement r17, java.lang.Object r18) {
            /*
                Method dump skipped, instructions count: 510
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.WorkSpecDao_Impl.AnonymousClass1.d(androidx.sqlite.db.SupportSQLiteStatement, java.lang.Object):void");
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$10, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass10 implements Callable<List<String>> {
        @Override // java.util.concurrent.Callable
        public final List<String> call() {
            throw null;
        }

        public final void finalize() {
            throw null;
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$11, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass11 implements Callable<List<WorkSpec.WorkInfoPojo>> {
        @Override // java.util.concurrent.Callable
        public final List<WorkSpec.WorkInfoPojo> call() {
            throw null;
        }

        public final void finalize() {
            throw null;
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$12, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass12 implements Callable<List<WorkSpec.WorkInfoPojo>> {
        @Override // java.util.concurrent.Callable
        public final List<WorkSpec.WorkInfoPojo> call() {
            throw null;
        }

        public final void finalize() {
            throw null;
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$13, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass13 implements Callable<List<WorkSpec.WorkInfoPojo>> {
        @Override // java.util.concurrent.Callable
        public final List<WorkSpec.WorkInfoPojo> call() {
            throw null;
        }

        public final void finalize() {
            throw null;
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$14, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass14 implements Callable<Long> {
        @Override // java.util.concurrent.Callable
        public final Long call() {
            throw null;
        }

        public final void finalize() {
            throw null;
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 extends SharedSQLiteStatement {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "DELETE FROM workspec WHERE id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 extends SharedSQLiteStatement {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "UPDATE workspec SET output=? WHERE id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$4, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass4 extends SharedSQLiteStatement {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "UPDATE workspec SET period_start_time=? WHERE id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$5, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass5 extends SharedSQLiteStatement {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$6, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass6 extends SharedSQLiteStatement {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$7, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass7 extends SharedSQLiteStatement {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$8, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass8 extends SharedSQLiteStatement {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$9, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass9 extends SharedSQLiteStatement {
        @Override // androidx.room.SharedSQLiteStatement
        public final String b() {
            return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.room.EntityInsertionAdapter, androidx.room.SharedSQLiteStatement] */
    public WorkSpecDao_Impl(WorkDatabase_Impl workDatabase_Impl) {
        this.f1939a = workDatabase_Impl;
        this.b = new SharedSQLiteStatement(workDatabase_Impl);
        this.f1940c = new SharedSQLiteStatement(workDatabase_Impl);
        this.d = new SharedSQLiteStatement(workDatabase_Impl);
        this.e = new SharedSQLiteStatement(workDatabase_Impl);
        this.f = new SharedSQLiteStatement(workDatabase_Impl);
        this.g = new SharedSQLiteStatement(workDatabase_Impl);
        this.h = new SharedSQLiteStatement(workDatabase_Impl);
        this.i = new SharedSQLiteStatement(workDatabase_Impl);
        new SharedSQLiteStatement(workDatabase_Impl);
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final ArrayList a() {
        RoomSQLiteQuery d = RoomSQLiteQuery.d(1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)");
        d.g0(1);
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        Cursor g = workDatabase_Impl.g(d);
        try {
            ArrayList arrayList = new ArrayList(g.getCount());
            while (g.moveToNext()) {
                arrayList.add(g.getString(0));
            }
            return arrayList;
        } finally {
            g.close();
            d.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int b(WorkInfo.State state, String... strArr) {
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        StringBuilder sb = new StringBuilder();
        sb.append("UPDATE workspec SET state=? WHERE id IN (");
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            sb.append("?");
            if (i < length - 1) {
                sb.append(",");
            }
        }
        sb.append(")");
        String sb2 = sb.toString();
        workDatabase_Impl.a();
        workDatabase_Impl.b();
        SupportSQLiteStatement x = workDatabase_Impl.d.O().x(sb2);
        x.I(1, WorkTypeConverters.f(state));
        int i2 = 2;
        for (String str : strArr) {
            if (str == null) {
                x.g0(i2);
            } else {
                x.t(i2, str);
            }
            i2++;
        }
        workDatabase_Impl.c();
        try {
            int w = x.w();
            workDatabase_Impl.h();
            return w;
        } finally {
            workDatabase_Impl.f();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final ArrayList c() {
        RoomSQLiteQuery roomSQLiteQuery;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        RoomSQLiteQuery d = RoomSQLiteQuery.d(1, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?");
        d.I(1, HttpStatusCodes.STATUS_CODE_OK);
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        Cursor g = workDatabase_Impl.g(d);
        try {
            int a2 = CursorUtil.a(g, "required_network_type");
            int a3 = CursorUtil.a(g, "requires_charging");
            int a4 = CursorUtil.a(g, "requires_device_idle");
            int a5 = CursorUtil.a(g, "requires_battery_not_low");
            int a6 = CursorUtil.a(g, "requires_storage_not_low");
            int a7 = CursorUtil.a(g, "trigger_content_update_delay");
            int a8 = CursorUtil.a(g, "trigger_max_content_delay");
            int a9 = CursorUtil.a(g, "content_uri_triggers");
            int a10 = CursorUtil.a(g, "id");
            int a11 = CursorUtil.a(g, "state");
            int a12 = CursorUtil.a(g, "worker_class_name");
            int a13 = CursorUtil.a(g, "input_merger_class_name");
            int a14 = CursorUtil.a(g, "input");
            roomSQLiteQuery = d;
            try {
                int a15 = CursorUtil.a(g, "output");
                int a16 = CursorUtil.a(g, "initial_delay");
                int a17 = CursorUtil.a(g, "interval_duration");
                int a18 = CursorUtil.a(g, "flex_duration");
                int a19 = CursorUtil.a(g, "run_attempt_count");
                int a20 = CursorUtil.a(g, "backoff_policy");
                int a21 = CursorUtil.a(g, "backoff_delay_duration");
                int a22 = CursorUtil.a(g, "period_start_time");
                int a23 = CursorUtil.a(g, "minimum_retention_duration");
                int a24 = CursorUtil.a(g, "schedule_requested_at");
                int a25 = CursorUtil.a(g, "run_in_foreground");
                int a26 = CursorUtil.a(g, "out_of_quota_policy");
                int i = a15;
                ArrayList arrayList = new ArrayList(g.getCount());
                while (g.moveToNext()) {
                    String string = g.getString(a10);
                    int i2 = a10;
                    String string2 = g.getString(a12);
                    int i3 = a12;
                    Constraints constraints = new Constraints();
                    int i4 = a2;
                    constraints.f1828a = WorkTypeConverters.c(g.getInt(a2));
                    if (g.getInt(a3) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    constraints.b = z;
                    if (g.getInt(a4) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    constraints.f1829c = z2;
                    if (g.getInt(a5) != 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    constraints.d = z3;
                    if (g.getInt(a6) != 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    constraints.e = z4;
                    int i5 = a3;
                    constraints.f = g.getLong(a7);
                    constraints.g = g.getLong(a8);
                    constraints.h = WorkTypeConverters.a(g.getBlob(a9));
                    WorkSpec workSpec = new WorkSpec(string, string2);
                    workSpec.b = WorkTypeConverters.e(g.getInt(a11));
                    workSpec.d = g.getString(a13);
                    workSpec.e = Data.a(g.getBlob(a14));
                    int i6 = i;
                    workSpec.f = Data.a(g.getBlob(i6));
                    int i7 = a14;
                    i = i6;
                    int i8 = a16;
                    workSpec.g = g.getLong(i8);
                    a16 = i8;
                    int i9 = a4;
                    int i10 = a17;
                    workSpec.h = g.getLong(i10);
                    a17 = i10;
                    int i11 = a18;
                    workSpec.i = g.getLong(i11);
                    int i12 = a19;
                    workSpec.k = g.getInt(i12);
                    int i13 = a20;
                    a19 = i12;
                    workSpec.l = WorkTypeConverters.b(g.getInt(i13));
                    a18 = i11;
                    int i14 = a21;
                    workSpec.m = g.getLong(i14);
                    a21 = i14;
                    int i15 = a22;
                    workSpec.n = g.getLong(i15);
                    a22 = i15;
                    int i16 = a23;
                    workSpec.o = g.getLong(i16);
                    a23 = i16;
                    int i17 = a24;
                    workSpec.p = g.getLong(i17);
                    int i18 = a25;
                    if (g.getInt(i18) != 0) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    workSpec.q = z5;
                    int i19 = a26;
                    a25 = i18;
                    workSpec.r = WorkTypeConverters.d(g.getInt(i19));
                    workSpec.j = constraints;
                    arrayList.add(workSpec);
                    a20 = i13;
                    a4 = i9;
                    a26 = i19;
                    a24 = i17;
                    a14 = i7;
                    a10 = i2;
                    a12 = i3;
                    a2 = i4;
                    a3 = i5;
                }
                g.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                g.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = d;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final ArrayList d() {
        RoomSQLiteQuery d = RoomSQLiteQuery.d(1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)");
        d.t(1, "offline_ping_sender_work");
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        Cursor g = workDatabase_Impl.g(d);
        try {
            ArrayList arrayList = new ArrayList(g.getCount());
            while (g.moveToNext()) {
                arrayList.add(g.getString(0));
            }
            return arrayList;
        } finally {
            g.close();
            d.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void delete(String str) {
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        SharedSQLiteStatement sharedSQLiteStatement = this.f1940c;
        SupportSQLiteStatement a2 = sharedSQLiteStatement.a();
        if (str == null) {
            a2.g0(1);
        } else {
            a2.t(1, str);
        }
        workDatabase_Impl.c();
        try {
            a2.w();
            workDatabase_Impl.h();
        } finally {
            workDatabase_Impl.f();
            sharedSQLiteStatement.c(a2);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int e(long j, String str) {
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        SharedSQLiteStatement sharedSQLiteStatement = this.h;
        SupportSQLiteStatement a2 = sharedSQLiteStatement.a();
        a2.I(1, j);
        if (str == null) {
            a2.g0(2);
        } else {
            a2.t(2, str);
        }
        workDatabase_Impl.c();
        try {
            int w = a2.w();
            workDatabase_Impl.h();
            return w;
        } finally {
            workDatabase_Impl.f();
            sharedSQLiteStatement.c(a2);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final ArrayList f(long j) {
        RoomSQLiteQuery roomSQLiteQuery;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        RoomSQLiteQuery d = RoomSQLiteQuery.d(1, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC");
        d.I(1, j);
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        Cursor g = workDatabase_Impl.g(d);
        try {
            int a2 = CursorUtil.a(g, "required_network_type");
            int a3 = CursorUtil.a(g, "requires_charging");
            int a4 = CursorUtil.a(g, "requires_device_idle");
            int a5 = CursorUtil.a(g, "requires_battery_not_low");
            int a6 = CursorUtil.a(g, "requires_storage_not_low");
            int a7 = CursorUtil.a(g, "trigger_content_update_delay");
            int a8 = CursorUtil.a(g, "trigger_max_content_delay");
            int a9 = CursorUtil.a(g, "content_uri_triggers");
            int a10 = CursorUtil.a(g, "id");
            int a11 = CursorUtil.a(g, "state");
            int a12 = CursorUtil.a(g, "worker_class_name");
            int a13 = CursorUtil.a(g, "input_merger_class_name");
            int a14 = CursorUtil.a(g, "input");
            roomSQLiteQuery = d;
            try {
                int a15 = CursorUtil.a(g, "output");
                int a16 = CursorUtil.a(g, "initial_delay");
                int a17 = CursorUtil.a(g, "interval_duration");
                int a18 = CursorUtil.a(g, "flex_duration");
                int a19 = CursorUtil.a(g, "run_attempt_count");
                int a20 = CursorUtil.a(g, "backoff_policy");
                int a21 = CursorUtil.a(g, "backoff_delay_duration");
                int a22 = CursorUtil.a(g, "period_start_time");
                int a23 = CursorUtil.a(g, "minimum_retention_duration");
                int a24 = CursorUtil.a(g, "schedule_requested_at");
                int a25 = CursorUtil.a(g, "run_in_foreground");
                int a26 = CursorUtil.a(g, "out_of_quota_policy");
                int i = a15;
                ArrayList arrayList = new ArrayList(g.getCount());
                while (g.moveToNext()) {
                    String string = g.getString(a10);
                    int i2 = a10;
                    String string2 = g.getString(a12);
                    int i3 = a12;
                    Constraints constraints = new Constraints();
                    int i4 = a2;
                    constraints.f1828a = WorkTypeConverters.c(g.getInt(a2));
                    if (g.getInt(a3) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    constraints.b = z;
                    if (g.getInt(a4) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    constraints.f1829c = z2;
                    if (g.getInt(a5) != 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    constraints.d = z3;
                    if (g.getInt(a6) != 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    constraints.e = z4;
                    int i5 = a3;
                    constraints.f = g.getLong(a7);
                    constraints.g = g.getLong(a8);
                    constraints.h = WorkTypeConverters.a(g.getBlob(a9));
                    WorkSpec workSpec = new WorkSpec(string, string2);
                    workSpec.b = WorkTypeConverters.e(g.getInt(a11));
                    workSpec.d = g.getString(a13);
                    workSpec.e = Data.a(g.getBlob(a14));
                    int i6 = i;
                    workSpec.f = Data.a(g.getBlob(i6));
                    int i7 = a16;
                    int i8 = a14;
                    i = i6;
                    workSpec.g = g.getLong(i7);
                    int i9 = a17;
                    int i10 = a4;
                    workSpec.h = g.getLong(i9);
                    int i11 = a18;
                    workSpec.i = g.getLong(i11);
                    int i12 = a19;
                    workSpec.k = g.getInt(i12);
                    int i13 = a20;
                    a19 = i12;
                    workSpec.l = WorkTypeConverters.b(g.getInt(i13));
                    a18 = i11;
                    int i14 = a21;
                    workSpec.m = g.getLong(i14);
                    a21 = i14;
                    int i15 = a22;
                    workSpec.n = g.getLong(i15);
                    a22 = i15;
                    int i16 = a23;
                    workSpec.o = g.getLong(i16);
                    a23 = i16;
                    int i17 = a24;
                    workSpec.p = g.getLong(i17);
                    int i18 = a25;
                    if (g.getInt(i18) != 0) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    workSpec.q = z5;
                    int i19 = a26;
                    a25 = i18;
                    workSpec.r = WorkTypeConverters.d(g.getInt(i19));
                    workSpec.j = constraints;
                    arrayList.add(workSpec);
                    a4 = i10;
                    a17 = i9;
                    a20 = i13;
                    a14 = i8;
                    a26 = i19;
                    a24 = i17;
                    a16 = i7;
                    a10 = i2;
                    a12 = i3;
                    a2 = i4;
                    a3 = i5;
                }
                g.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                g.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = d;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final ArrayList g(int i) {
        RoomSQLiteQuery roomSQLiteQuery;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        RoomSQLiteQuery d = RoomSQLiteQuery.d(1, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))");
        d.I(1, i);
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        Cursor g = workDatabase_Impl.g(d);
        try {
            int a2 = CursorUtil.a(g, "required_network_type");
            int a3 = CursorUtil.a(g, "requires_charging");
            int a4 = CursorUtil.a(g, "requires_device_idle");
            int a5 = CursorUtil.a(g, "requires_battery_not_low");
            int a6 = CursorUtil.a(g, "requires_storage_not_low");
            int a7 = CursorUtil.a(g, "trigger_content_update_delay");
            int a8 = CursorUtil.a(g, "trigger_max_content_delay");
            int a9 = CursorUtil.a(g, "content_uri_triggers");
            int a10 = CursorUtil.a(g, "id");
            int a11 = CursorUtil.a(g, "state");
            int a12 = CursorUtil.a(g, "worker_class_name");
            int a13 = CursorUtil.a(g, "input_merger_class_name");
            int a14 = CursorUtil.a(g, "input");
            roomSQLiteQuery = d;
            try {
                int a15 = CursorUtil.a(g, "output");
                int a16 = CursorUtil.a(g, "initial_delay");
                int a17 = CursorUtil.a(g, "interval_duration");
                int a18 = CursorUtil.a(g, "flex_duration");
                int a19 = CursorUtil.a(g, "run_attempt_count");
                int a20 = CursorUtil.a(g, "backoff_policy");
                int a21 = CursorUtil.a(g, "backoff_delay_duration");
                int a22 = CursorUtil.a(g, "period_start_time");
                int a23 = CursorUtil.a(g, "minimum_retention_duration");
                int a24 = CursorUtil.a(g, "schedule_requested_at");
                int a25 = CursorUtil.a(g, "run_in_foreground");
                int a26 = CursorUtil.a(g, "out_of_quota_policy");
                int i2 = a15;
                ArrayList arrayList = new ArrayList(g.getCount());
                while (g.moveToNext()) {
                    String string = g.getString(a10);
                    int i3 = a10;
                    String string2 = g.getString(a12);
                    int i4 = a12;
                    Constraints constraints = new Constraints();
                    int i5 = a2;
                    constraints.f1828a = WorkTypeConverters.c(g.getInt(a2));
                    if (g.getInt(a3) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    constraints.b = z;
                    if (g.getInt(a4) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    constraints.f1829c = z2;
                    if (g.getInt(a5) != 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    constraints.d = z3;
                    if (g.getInt(a6) != 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    constraints.e = z4;
                    int i6 = a3;
                    constraints.f = g.getLong(a7);
                    constraints.g = g.getLong(a8);
                    constraints.h = WorkTypeConverters.a(g.getBlob(a9));
                    WorkSpec workSpec = new WorkSpec(string, string2);
                    workSpec.b = WorkTypeConverters.e(g.getInt(a11));
                    workSpec.d = g.getString(a13);
                    workSpec.e = Data.a(g.getBlob(a14));
                    int i7 = i2;
                    workSpec.f = Data.a(g.getBlob(i7));
                    int i8 = a16;
                    int i9 = a14;
                    i2 = i7;
                    workSpec.g = g.getLong(i8);
                    int i10 = a4;
                    int i11 = a17;
                    workSpec.h = g.getLong(i11);
                    a17 = i11;
                    int i12 = a18;
                    workSpec.i = g.getLong(i12);
                    int i13 = a19;
                    workSpec.k = g.getInt(i13);
                    int i14 = a20;
                    a19 = i13;
                    workSpec.l = WorkTypeConverters.b(g.getInt(i14));
                    a18 = i12;
                    int i15 = a21;
                    workSpec.m = g.getLong(i15);
                    a21 = i15;
                    int i16 = a22;
                    workSpec.n = g.getLong(i16);
                    a22 = i16;
                    int i17 = a23;
                    workSpec.o = g.getLong(i17);
                    a23 = i17;
                    int i18 = a24;
                    workSpec.p = g.getLong(i18);
                    int i19 = a25;
                    if (g.getInt(i19) != 0) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    workSpec.q = z5;
                    int i20 = a26;
                    a25 = i19;
                    workSpec.r = WorkTypeConverters.d(g.getInt(i20));
                    workSpec.j = constraints;
                    arrayList.add(workSpec);
                    a20 = i14;
                    a4 = i10;
                    a14 = i9;
                    a26 = i20;
                    a24 = i18;
                    a16 = i8;
                    a10 = i3;
                    a12 = i4;
                    a2 = i5;
                    a3 = i6;
                }
                g.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                g.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = d;
        }
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, androidx.work.impl.model.WorkSpec$IdAndState] */
    @Override // androidx.work.impl.model.WorkSpecDao
    public final ArrayList h() {
        RoomSQLiteQuery d = RoomSQLiteQuery.d(1, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)");
        d.g0(1);
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        Cursor g = workDatabase_Impl.g(d);
        try {
            int a2 = CursorUtil.a(g, "id");
            int a3 = CursorUtil.a(g, "state");
            ArrayList arrayList = new ArrayList(g.getCount());
            while (g.moveToNext()) {
                ?? obj = new Object();
                obj.f1938a = g.getString(a2);
                obj.b = WorkTypeConverters.e(g.getInt(a3));
                arrayList.add(obj);
            }
            return arrayList;
        } finally {
            g.close();
            d.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void i(WorkSpec workSpec) {
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        workDatabase_Impl.c();
        try {
            this.b.e(workSpec);
            workDatabase_Impl.h();
        } finally {
            workDatabase_Impl.f();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void j(long j, String str) {
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        SharedSQLiteStatement sharedSQLiteStatement = this.e;
        SupportSQLiteStatement a2 = sharedSQLiteStatement.a();
        a2.I(1, j);
        if (str == null) {
            a2.g0(2);
        } else {
            a2.t(2, str);
        }
        workDatabase_Impl.c();
        try {
            a2.w();
            workDatabase_Impl.h();
        } finally {
            workDatabase_Impl.f();
            sharedSQLiteStatement.c(a2);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final ArrayList k() {
        RoomSQLiteQuery roomSQLiteQuery;
        int a2;
        int a3;
        int a4;
        int a5;
        int a6;
        int a7;
        int a8;
        int a9;
        int a10;
        int a11;
        int a12;
        int a13;
        int a14;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        RoomSQLiteQuery d = RoomSQLiteQuery.d(0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at<>-1");
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        Cursor g = workDatabase_Impl.g(d);
        try {
            a2 = CursorUtil.a(g, "required_network_type");
            a3 = CursorUtil.a(g, "requires_charging");
            a4 = CursorUtil.a(g, "requires_device_idle");
            a5 = CursorUtil.a(g, "requires_battery_not_low");
            a6 = CursorUtil.a(g, "requires_storage_not_low");
            a7 = CursorUtil.a(g, "trigger_content_update_delay");
            a8 = CursorUtil.a(g, "trigger_max_content_delay");
            a9 = CursorUtil.a(g, "content_uri_triggers");
            a10 = CursorUtil.a(g, "id");
            a11 = CursorUtil.a(g, "state");
            a12 = CursorUtil.a(g, "worker_class_name");
            a13 = CursorUtil.a(g, "input_merger_class_name");
            a14 = CursorUtil.a(g, "input");
            roomSQLiteQuery = d;
        } catch (Throwable th) {
            th = th;
            roomSQLiteQuery = d;
        }
        try {
            int a15 = CursorUtil.a(g, "output");
            int a16 = CursorUtil.a(g, "initial_delay");
            int a17 = CursorUtil.a(g, "interval_duration");
            int a18 = CursorUtil.a(g, "flex_duration");
            int a19 = CursorUtil.a(g, "run_attempt_count");
            int a20 = CursorUtil.a(g, "backoff_policy");
            int a21 = CursorUtil.a(g, "backoff_delay_duration");
            int a22 = CursorUtil.a(g, "period_start_time");
            int a23 = CursorUtil.a(g, "minimum_retention_duration");
            int a24 = CursorUtil.a(g, "schedule_requested_at");
            int a25 = CursorUtil.a(g, "run_in_foreground");
            int a26 = CursorUtil.a(g, "out_of_quota_policy");
            int i = a15;
            ArrayList arrayList = new ArrayList(g.getCount());
            while (g.moveToNext()) {
                String string = g.getString(a10);
                int i2 = a10;
                String string2 = g.getString(a12);
                int i3 = a12;
                Constraints constraints = new Constraints();
                int i4 = a2;
                constraints.f1828a = WorkTypeConverters.c(g.getInt(a2));
                if (g.getInt(a3) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                constraints.b = z;
                if (g.getInt(a4) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                constraints.f1829c = z2;
                if (g.getInt(a5) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                constraints.d = z3;
                if (g.getInt(a6) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                constraints.e = z4;
                int i5 = a3;
                constraints.f = g.getLong(a7);
                constraints.g = g.getLong(a8);
                constraints.h = WorkTypeConverters.a(g.getBlob(a9));
                WorkSpec workSpec = new WorkSpec(string, string2);
                workSpec.b = WorkTypeConverters.e(g.getInt(a11));
                workSpec.d = g.getString(a13);
                workSpec.e = Data.a(g.getBlob(a14));
                int i6 = i;
                workSpec.f = Data.a(g.getBlob(i6));
                int i7 = a14;
                i = i6;
                int i8 = a16;
                workSpec.g = g.getLong(i8);
                a16 = i8;
                int i9 = a4;
                int i10 = a17;
                workSpec.h = g.getLong(i10);
                a17 = i10;
                int i11 = a18;
                workSpec.i = g.getLong(i11);
                int i12 = a19;
                workSpec.k = g.getInt(i12);
                int i13 = a20;
                a19 = i12;
                workSpec.l = WorkTypeConverters.b(g.getInt(i13));
                a18 = i11;
                int i14 = a21;
                workSpec.m = g.getLong(i14);
                a21 = i14;
                int i15 = a22;
                workSpec.n = g.getLong(i15);
                a22 = i15;
                int i16 = a23;
                workSpec.o = g.getLong(i16);
                a23 = i16;
                int i17 = a24;
                workSpec.p = g.getLong(i17);
                int i18 = a25;
                if (g.getInt(i18) != 0) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                workSpec.q = z5;
                int i19 = a26;
                a25 = i18;
                workSpec.r = WorkTypeConverters.d(g.getInt(i19));
                workSpec.j = constraints;
                arrayList.add(workSpec);
                a20 = i13;
                a4 = i9;
                a26 = i19;
                a24 = i17;
                a14 = i7;
                a10 = i2;
                a12 = i3;
                a2 = i4;
                a3 = i5;
            }
            g.close();
            roomSQLiteQuery.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            g.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final void l(String str, Data data) {
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        SharedSQLiteStatement sharedSQLiteStatement = this.d;
        SupportSQLiteStatement a2 = sharedSQLiteStatement.a();
        byte[] c2 = Data.c(data);
        if (c2 == null) {
            a2.g0(1);
        } else {
            a2.R(c2, 1);
        }
        if (str == null) {
            a2.g0(2);
        } else {
            a2.t(2, str);
        }
        workDatabase_Impl.c();
        try {
            a2.w();
            workDatabase_Impl.h();
        } finally {
            workDatabase_Impl.f();
            sharedSQLiteStatement.c(a2);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final ArrayList m() {
        RoomSQLiteQuery roomSQLiteQuery;
        int a2;
        int a3;
        int a4;
        int a5;
        int a6;
        int a7;
        int a8;
        int a9;
        int a10;
        int a11;
        int a12;
        int a13;
        int a14;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        RoomSQLiteQuery d = RoomSQLiteQuery.d(0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=1");
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        Cursor g = workDatabase_Impl.g(d);
        try {
            a2 = CursorUtil.a(g, "required_network_type");
            a3 = CursorUtil.a(g, "requires_charging");
            a4 = CursorUtil.a(g, "requires_device_idle");
            a5 = CursorUtil.a(g, "requires_battery_not_low");
            a6 = CursorUtil.a(g, "requires_storage_not_low");
            a7 = CursorUtil.a(g, "trigger_content_update_delay");
            a8 = CursorUtil.a(g, "trigger_max_content_delay");
            a9 = CursorUtil.a(g, "content_uri_triggers");
            a10 = CursorUtil.a(g, "id");
            a11 = CursorUtil.a(g, "state");
            a12 = CursorUtil.a(g, "worker_class_name");
            a13 = CursorUtil.a(g, "input_merger_class_name");
            a14 = CursorUtil.a(g, "input");
            roomSQLiteQuery = d;
        } catch (Throwable th) {
            th = th;
            roomSQLiteQuery = d;
        }
        try {
            int a15 = CursorUtil.a(g, "output");
            int a16 = CursorUtil.a(g, "initial_delay");
            int a17 = CursorUtil.a(g, "interval_duration");
            int a18 = CursorUtil.a(g, "flex_duration");
            int a19 = CursorUtil.a(g, "run_attempt_count");
            int a20 = CursorUtil.a(g, "backoff_policy");
            int a21 = CursorUtil.a(g, "backoff_delay_duration");
            int a22 = CursorUtil.a(g, "period_start_time");
            int a23 = CursorUtil.a(g, "minimum_retention_duration");
            int a24 = CursorUtil.a(g, "schedule_requested_at");
            int a25 = CursorUtil.a(g, "run_in_foreground");
            int a26 = CursorUtil.a(g, "out_of_quota_policy");
            int i = a15;
            ArrayList arrayList = new ArrayList(g.getCount());
            while (g.moveToNext()) {
                String string = g.getString(a10);
                int i2 = a10;
                String string2 = g.getString(a12);
                int i3 = a12;
                Constraints constraints = new Constraints();
                int i4 = a2;
                constraints.f1828a = WorkTypeConverters.c(g.getInt(a2));
                if (g.getInt(a3) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                constraints.b = z;
                if (g.getInt(a4) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                constraints.f1829c = z2;
                if (g.getInt(a5) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                constraints.d = z3;
                if (g.getInt(a6) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                constraints.e = z4;
                int i5 = a3;
                constraints.f = g.getLong(a7);
                constraints.g = g.getLong(a8);
                constraints.h = WorkTypeConverters.a(g.getBlob(a9));
                WorkSpec workSpec = new WorkSpec(string, string2);
                workSpec.b = WorkTypeConverters.e(g.getInt(a11));
                workSpec.d = g.getString(a13);
                workSpec.e = Data.a(g.getBlob(a14));
                int i6 = i;
                workSpec.f = Data.a(g.getBlob(i6));
                int i7 = a14;
                i = i6;
                int i8 = a16;
                workSpec.g = g.getLong(i8);
                a16 = i8;
                int i9 = a4;
                int i10 = a17;
                workSpec.h = g.getLong(i10);
                a17 = i10;
                int i11 = a18;
                workSpec.i = g.getLong(i11);
                int i12 = a19;
                workSpec.k = g.getInt(i12);
                int i13 = a20;
                a19 = i12;
                workSpec.l = WorkTypeConverters.b(g.getInt(i13));
                a18 = i11;
                int i14 = a21;
                workSpec.m = g.getLong(i14);
                a21 = i14;
                int i15 = a22;
                workSpec.n = g.getLong(i15);
                a22 = i15;
                int i16 = a23;
                workSpec.o = g.getLong(i16);
                a23 = i16;
                int i17 = a24;
                workSpec.p = g.getLong(i17);
                int i18 = a25;
                if (g.getInt(i18) != 0) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                workSpec.q = z5;
                int i19 = a26;
                a25 = i18;
                workSpec.r = WorkTypeConverters.d(g.getInt(i19));
                workSpec.j = constraints;
                arrayList.add(workSpec);
                a20 = i13;
                a4 = i9;
                a26 = i19;
                a24 = i17;
                a14 = i7;
                a10 = i2;
                a12 = i3;
                a2 = i4;
                a3 = i5;
            }
            g.close();
            roomSQLiteQuery.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            g.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final boolean n() {
        boolean z = false;
        RoomSQLiteQuery d = RoomSQLiteQuery.d(0, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1");
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        Cursor g = workDatabase_Impl.g(d);
        try {
            if (g.moveToFirst()) {
                if (g.getInt(0) != 0) {
                    z = true;
                }
            }
            return z;
        } finally {
            g.close();
            d.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final WorkInfo.State o(String str) {
        WorkInfo.State state;
        RoomSQLiteQuery d = RoomSQLiteQuery.d(1, "SELECT state FROM workspec WHERE id=?");
        if (str == null) {
            d.g0(1);
        } else {
            d.t(1, str);
        }
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        Cursor g = workDatabase_Impl.g(d);
        try {
            if (g.moveToFirst()) {
                state = WorkTypeConverters.e(g.getInt(0));
            } else {
                state = null;
            }
            return state;
        } finally {
            g.close();
            d.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final WorkSpec p(String str) {
        RoomSQLiteQuery roomSQLiteQuery;
        int a2;
        int a3;
        int a4;
        int a5;
        int a6;
        int a7;
        int a8;
        int a9;
        int a10;
        int a11;
        int a12;
        int a13;
        int a14;
        WorkSpec workSpec;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        RoomSQLiteQuery d = RoomSQLiteQuery.d(1, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE id=?");
        if (str == null) {
            d.g0(1);
        } else {
            d.t(1, str);
        }
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        Cursor g = workDatabase_Impl.g(d);
        try {
            a2 = CursorUtil.a(g, "required_network_type");
            a3 = CursorUtil.a(g, "requires_charging");
            a4 = CursorUtil.a(g, "requires_device_idle");
            a5 = CursorUtil.a(g, "requires_battery_not_low");
            a6 = CursorUtil.a(g, "requires_storage_not_low");
            a7 = CursorUtil.a(g, "trigger_content_update_delay");
            a8 = CursorUtil.a(g, "trigger_max_content_delay");
            a9 = CursorUtil.a(g, "content_uri_triggers");
            a10 = CursorUtil.a(g, "id");
            a11 = CursorUtil.a(g, "state");
            a12 = CursorUtil.a(g, "worker_class_name");
            a13 = CursorUtil.a(g, "input_merger_class_name");
            a14 = CursorUtil.a(g, "input");
            roomSQLiteQuery = d;
        } catch (Throwable th) {
            th = th;
            roomSQLiteQuery = d;
        }
        try {
            int a15 = CursorUtil.a(g, "output");
            int a16 = CursorUtil.a(g, "initial_delay");
            int a17 = CursorUtil.a(g, "interval_duration");
            int a18 = CursorUtil.a(g, "flex_duration");
            int a19 = CursorUtil.a(g, "run_attempt_count");
            int a20 = CursorUtil.a(g, "backoff_policy");
            int a21 = CursorUtil.a(g, "backoff_delay_duration");
            int a22 = CursorUtil.a(g, "period_start_time");
            int a23 = CursorUtil.a(g, "minimum_retention_duration");
            int a24 = CursorUtil.a(g, "schedule_requested_at");
            int a25 = CursorUtil.a(g, "run_in_foreground");
            int a26 = CursorUtil.a(g, "out_of_quota_policy");
            if (g.moveToFirst()) {
                String string = g.getString(a10);
                String string2 = g.getString(a12);
                Constraints constraints = new Constraints();
                constraints.f1828a = WorkTypeConverters.c(g.getInt(a2));
                if (g.getInt(a3) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                constraints.b = z;
                if (g.getInt(a4) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                constraints.f1829c = z2;
                if (g.getInt(a5) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                constraints.d = z3;
                if (g.getInt(a6) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                constraints.e = z4;
                constraints.f = g.getLong(a7);
                constraints.g = g.getLong(a8);
                constraints.h = WorkTypeConverters.a(g.getBlob(a9));
                workSpec = new WorkSpec(string, string2);
                workSpec.b = WorkTypeConverters.e(g.getInt(a11));
                workSpec.d = g.getString(a13);
                workSpec.e = Data.a(g.getBlob(a14));
                workSpec.f = Data.a(g.getBlob(a15));
                workSpec.g = g.getLong(a16);
                workSpec.h = g.getLong(a17);
                workSpec.i = g.getLong(a18);
                workSpec.k = g.getInt(a19);
                workSpec.l = WorkTypeConverters.b(g.getInt(a20));
                workSpec.m = g.getLong(a21);
                workSpec.n = g.getLong(a22);
                workSpec.o = g.getLong(a23);
                workSpec.p = g.getLong(a24);
                if (g.getInt(a25) != 0) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                workSpec.q = z5;
                workSpec.r = WorkTypeConverters.d(g.getInt(a26));
                workSpec.j = constraints;
            } else {
                workSpec = null;
            }
            g.close();
            roomSQLiteQuery.release();
            return workSpec;
        } catch (Throwable th2) {
            th = th2;
            g.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int q(String str) {
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        SharedSQLiteStatement sharedSQLiteStatement = this.g;
        SupportSQLiteStatement a2 = sharedSQLiteStatement.a();
        if (str == null) {
            a2.g0(1);
        } else {
            a2.t(1, str);
        }
        workDatabase_Impl.c();
        try {
            int w = a2.w();
            workDatabase_Impl.h();
            return w;
        } finally {
            workDatabase_Impl.f();
            sharedSQLiteStatement.c(a2);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final ArrayList r(String str) {
        RoomSQLiteQuery d = RoomSQLiteQuery.d(1, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)");
        if (str == null) {
            d.g0(1);
        } else {
            d.t(1, str);
        }
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        Cursor g = workDatabase_Impl.g(d);
        try {
            ArrayList arrayList = new ArrayList(g.getCount());
            while (g.moveToNext()) {
                arrayList.add(Data.a(g.getBlob(0)));
            }
            return arrayList;
        } finally {
            g.close();
            d.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int s(String str) {
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        SharedSQLiteStatement sharedSQLiteStatement = this.f;
        SupportSQLiteStatement a2 = sharedSQLiteStatement.a();
        if (str == null) {
            a2.g0(1);
        } else {
            a2.t(1, str);
        }
        workDatabase_Impl.c();
        try {
            int w = a2.w();
            workDatabase_Impl.h();
            return w;
        } finally {
            workDatabase_Impl.f();
            sharedSQLiteStatement.c(a2);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public final int t() {
        WorkDatabase_Impl workDatabase_Impl = this.f1939a;
        workDatabase_Impl.b();
        SharedSQLiteStatement sharedSQLiteStatement = this.i;
        SupportSQLiteStatement a2 = sharedSQLiteStatement.a();
        workDatabase_Impl.c();
        try {
            int w = a2.w();
            workDatabase_Impl.h();
            return w;
        } finally {
            workDatabase_Impl.f();
            sharedSQLiteStatement.c(a2);
        }
    }
}
