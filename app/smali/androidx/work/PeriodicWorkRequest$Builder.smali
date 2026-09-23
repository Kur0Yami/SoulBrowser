.class public final Landroidx/work/PeriodicWorkRequest$Builder;
.super Landroidx/work/WorkRequest$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/PeriodicWorkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/WorkRequest$Builder<",
        "Landroidx/work/PeriodicWorkRequest$Builder;",
        "Landroidx/work/PeriodicWorkRequest;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b()Landroidx/work/WorkRequest;
    .locals 4

    .line 1
    new-instance v0, Landroidx/work/PeriodicWorkRequest;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/WorkRequest$Builder;->a:Ljava/util/UUID;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/WorkRequest$Builder;->b:Landroidx/work/impl/model/WorkSpec;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/work/WorkRequest$Builder;->c:Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Landroidx/work/WorkRequest;-><init>(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/HashSet;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
