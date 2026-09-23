.class public Landroidx/room/DatabaseConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Landroidx/room/RoomDatabase$MigrationContainer;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/ArrayList;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Landroidx/room/DatabaseConfiguration;->a:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/room/DatabaseConfiguration;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/room/DatabaseConfiguration;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/room/DatabaseConfiguration;->d:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/room/DatabaseConfiguration;->e:Ljava/util/List;

    .line 13
    .line 14
    iput-object p8, p0, Landroidx/room/DatabaseConfiguration;->f:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    iput-object p9, p0, Landroidx/room/DatabaseConfiguration;->g:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    iput-boolean p10, p0, Landroidx/room/DatabaseConfiguration;->h:Z

    .line 19
    .line 20
    iput-boolean p11, p0, Landroidx/room/DatabaseConfiguration;->i:Z

    .line 21
    .line 22
    return-void
.end method
