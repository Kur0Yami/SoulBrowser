.class Landroidx/core/app/ActivityRecreator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/app/ActivityRecreator$1;->c:Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/core/app/ActivityRecreator$1;->f:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$1;->c:Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/app/ActivityRecreator$1;->f:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object v1, v0, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;->c:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method
