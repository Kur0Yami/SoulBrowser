package androidx.work.impl.model;

import android.annotation.SuppressLint;
import androidx.room.Dao;
import androidx.work.Data;
import androidx.work.WorkInfo;
import java.util.ArrayList;

@Dao
@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public interface WorkSpecDao {
    ArrayList a();

    int b(WorkInfo.State state, String... strArr);

    ArrayList c();

    ArrayList d();

    void delete(String str);

    int e(long j, String str);

    ArrayList f(long j);

    ArrayList g(int i);

    ArrayList h();

    void i(WorkSpec workSpec);

    void j(long j, String str);

    ArrayList k();

    void l(String str, Data data);

    ArrayList m();

    boolean n();

    WorkInfo.State o(String str);

    WorkSpec p(String str);

    int q(String str);

    ArrayList r(String str);

    int s(String str);

    int t();
}
