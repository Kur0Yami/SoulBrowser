.class public Lcom/google/android/gms/internal/drive/zzkk$zza;
.super Lcom/google/android/gms/internal/drive/zziu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/drive/zzkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/drive/zzkk<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/drive/zzkk$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/drive/zziu<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/android/gms/internal/drive/zzkk;

.field public f:Lcom/google/android/gms/internal/drive/zzkk;

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/drive/zzkk;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->c:Lcom/google/android/gms/internal/drive/zzkk;

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzkk;->i(ILcom/google/android/gms/internal/drive/zzkk;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->f:Lcom/google/android/gms/internal/drive/zzkk;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->g:Z

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final G()Lcom/google/android/gms/internal/drive/zzkk;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->i()Lcom/google/android/gms/internal/drive/zzkk;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk;->isInitialized()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/drive/zzmw;

    .line 13
    .line 14
    const-string v1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public final synthetic b()Lcom/google/android/gms/internal/drive/zzlq;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->c:Lcom/google/android/gms/internal/drive/zzkk;

    .line 4
    .line 5
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/drive/zzkk;->i(ILcom/google/android/gms/internal/drive/zzkk;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk$zza;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->i()Lcom/google/android/gms/internal/drive/zzkk;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->h()V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lcom/google/android/gms/internal/drive/zzkk$zza;->f:Lcom/google/android/gms/internal/drive/zzkk;

    .line 19
    .line 20
    sget-object v3, Lcom/google/android/gms/internal/drive/zzmd;->c:Lcom/google/android/gms/internal/drive/zzmd;

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/drive/zzmd;->b(Lcom/google/android/gms/internal/drive/zzkk;)Lcom/google/android/gms/internal/drive/zzmf;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/internal/drive/zzmf;->e(Lcom/google/android/gms/internal/drive/zzkk;Lcom/google/android/gms/internal/drive/zzkk;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public final synthetic f()Lcom/google/android/gms/internal/drive/zzkk$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk$zza;

    .line 6
    .line 7
    return-object v0
.end method

.method public final g(Lcom/google/android/gms/internal/drive/zzit;)Lcom/google/android/gms/internal/drive/zzkk$zza;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->h()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->f:Lcom/google/android/gms/internal/drive/zzkk;

    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/internal/drive/zzmd;->c:Lcom/google/android/gms/internal/drive/zzmd;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/drive/zzmd;->b(Lcom/google/android/gms/internal/drive/zzkk;)Lcom/google/android/gms/internal/drive/zzmf;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/drive/zzmf;->e(Lcom/google/android/gms/internal/drive/zzkk;Lcom/google/android/gms/internal/drive/zzkk;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->f:Lcom/google/android/gms/internal/drive/zzkk;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzkk;->i(ILcom/google/android/gms/internal/drive/zzkk;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->f:Lcom/google/android/gms/internal/drive/zzkk;

    .line 16
    .line 17
    sget-object v2, Lcom/google/android/gms/internal/drive/zzmd;->c:Lcom/google/android/gms/internal/drive/zzmd;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/drive/zzmd;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzmf;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/drive/zzmf;->e(Lcom/google/android/gms/internal/drive/zzkk;Lcom/google/android/gms/internal/drive/zzkk;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->f:Lcom/google/android/gms/internal/drive/zzkk;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->g:Z

    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final i()Lcom/google/android/gms/internal/drive/zzkk;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->f:Lcom/google/android/gms/internal/drive/zzkk;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->f:Lcom/google/android/gms/internal/drive/zzkk;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/google/android/gms/internal/drive/zzmd;->c:Lcom/google/android/gms/internal/drive/zzmd;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/drive/zzmd;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzmf;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/drive/zzmf;->a(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->g:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->f:Lcom/google/android/gms/internal/drive/zzkk;

    .line 33
    .line 34
    return-object v0
.end method
