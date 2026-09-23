.class public Landroidx/work/impl/constraints/trackers/Trackers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field public static e:Landroidx/work/impl/constraints/trackers/Trackers;


# instance fields
.field public a:Landroidx/work/impl/constraints/trackers/BatteryChargingTracker;

.field public b:Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

.field public c:Landroidx/work/impl/constraints/trackers/NetworkStateTracker;

.field public d:Landroidx/work/impl/constraints/trackers/StorageNotLowTracker;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)Landroidx/work/impl/constraints/trackers/Trackers;
    .locals 3

    .line 1
    const-class v0, Landroidx/work/impl/constraints/trackers/Trackers;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroidx/work/impl/constraints/trackers/Trackers;->e:Landroidx/work/impl/constraints/trackers/Trackers;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroidx/work/impl/constraints/trackers/Trackers;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v2, Landroidx/work/impl/constraints/trackers/BatteryChargingTracker;

    .line 18
    .line 19
    invoke-direct {v2, p0, p1}, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 20
    .line 21
    .line 22
    iput-object v2, v1, Landroidx/work/impl/constraints/trackers/Trackers;->a:Landroidx/work/impl/constraints/trackers/BatteryChargingTracker;

    .line 23
    .line 24
    new-instance v2, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    .line 25
    .line 26
    invoke-direct {v2, p0, p1}, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 27
    .line 28
    .line 29
    iput-object v2, v1, Landroidx/work/impl/constraints/trackers/Trackers;->b:Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    .line 30
    .line 31
    new-instance v2, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;

    .line 32
    .line 33
    invoke-direct {v2, p0, p1}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, v1, Landroidx/work/impl/constraints/trackers/Trackers;->c:Landroidx/work/impl/constraints/trackers/NetworkStateTracker;

    .line 37
    .line 38
    new-instance v2, Landroidx/work/impl/constraints/trackers/StorageNotLowTracker;

    .line 39
    .line 40
    invoke-direct {v2, p0, p1}, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 41
    .line 42
    .line 43
    iput-object v2, v1, Landroidx/work/impl/constraints/trackers/Trackers;->d:Landroidx/work/impl/constraints/trackers/StorageNotLowTracker;

    .line 44
    .line 45
    sput-object v1, Landroidx/work/impl/constraints/trackers/Trackers;->e:Landroidx/work/impl/constraints/trackers/Trackers;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    sget-object p0, Landroidx/work/impl/constraints/trackers/Trackers;->e:Landroidx/work/impl/constraints/trackers/Trackers;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-object p0

    .line 54
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p0
.end method
