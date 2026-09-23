.class public abstract Lcom/google/android/datatransport/Event;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static d(ILcom/google/android/gms/internal/cast/zzqr;)Lcom/google/android/datatransport/Event;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/datatransport/AutoValue_Event;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v1, Lcom/google/android/datatransport/Priority;->c:Lcom/google/android/datatransport/Priority;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/datatransport/AutoValue_Event;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/google/android/datatransport/Priority;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Lcom/google/android/datatransport/Event;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/datatransport/AutoValue_Event;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/google/android/datatransport/Priority;->c:Lcom/google/android/datatransport/Priority;

    .line 5
    .line 6
    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/datatransport/AutoValue_Event;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/google/android/datatransport/Priority;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static f(ILcom/google/android/gms/internal/cast/zzqr;)Lcom/google/android/datatransport/Event;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/datatransport/AutoValue_Event;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v1, Lcom/google/android/datatransport/Priority;->f:Lcom/google/android/datatransport/Priority;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/datatransport/AutoValue_Event;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/google/android/datatransport/Priority;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static g(Ljava/lang/Object;)Lcom/google/android/datatransport/Event;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/datatransport/AutoValue_Event;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/google/android/datatransport/Priority;->f:Lcom/google/android/datatransport/Priority;

    .line 5
    .line 6
    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/datatransport/AutoValue_Event;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/google/android/datatransport/Priority;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Integer;
.end method

.method public abstract b()Ljava/lang/Object;
.end method

.method public abstract c()Lcom/google/android/datatransport/Priority;
.end method
