package androidx.room;

import android.content.Context;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class DatabaseConfiguration {

    /* renamed from: a, reason: collision with root package name */
    public final SupportSQLiteOpenHelper.Factory f1608a;
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1609c;
    public final RoomDatabase.MigrationContainer d;
    public final List e;
    public final Executor f;
    public final Executor g;
    public final boolean h;
    public final boolean i;

    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, ArrayList arrayList, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, boolean z2, boolean z3) {
        this.f1608a = factory;
        this.b = context;
        this.f1609c = str;
        this.d = migrationContainer;
        this.e = arrayList;
        this.f = executor;
        this.g = executor2;
        this.h = z2;
        this.i = z3;
    }
}
