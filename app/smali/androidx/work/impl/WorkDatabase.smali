.class public abstract Landroidx/work/impl/WorkDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation build Landroidx/room/Database;
.end annotation

.annotation build Landroidx/room/TypeConverters;
.end annotation


# static fields
.field public static final k:J

.field public static final synthetic l:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Landroidx/work/impl/WorkDatabase;->k:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract i()Landroidx/work/impl/model/DependencyDao;
.end method

.method public abstract j()Landroidx/work/impl/model/PreferenceDao;
.end method

.method public abstract k()Landroidx/work/impl/model/SystemIdInfoDao;
.end method

.method public abstract l()Landroidx/work/impl/model/WorkNameDao;
.end method

.method public abstract m()Landroidx/work/impl/model/WorkProgressDao;
.end method

.method public abstract n()Landroidx/work/impl/model/WorkSpecDao;
.end method

.method public abstract o()Landroidx/work/impl/model/WorkTagDao;
.end method
