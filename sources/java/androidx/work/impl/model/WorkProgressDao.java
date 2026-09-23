package androidx.work.impl.model;

import androidx.annotation.RestrictTo;
import androidx.room.Dao;

@Dao
@RestrictTo
/* loaded from: classes.dex */
public interface WorkProgressDao {
    void a();

    void b(WorkProgress workProgress);

    void delete(String str);
}
