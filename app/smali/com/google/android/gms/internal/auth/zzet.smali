.class public Lcom/google/android/gms/internal/auth/zzet;
.super Lcom/google/android/gms/internal/auth/zzdp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/auth/zzev<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/auth/zzet<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/auth/zzdp<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/android/gms/internal/auth/zzev;

.field public f:Lcom/google/android/gms/internal/auth/zzev;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/zzhs;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzet;->c:Lcom/google/android/gms/internal/auth/zzev;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzev;->g()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzev;->b()Lcom/google/android/gms/internal/auth/zzev;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzet;->f:Lcom/google/android/gms/internal/auth/zzev;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "Default instance must be immutable."

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/auth/zzet;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzet;->c:Lcom/google/android/gms/internal/auth/zzev;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzev;->h(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/auth/zzet;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzet;->f:Lcom/google/android/gms/internal/auth/zzev;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzev;->g()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzet;->f:Lcom/google/android/gms/internal/auth/zzev;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzet;->f:Lcom/google/android/gms/internal/auth/zzev;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-object v2, Lcom/google/android/gms/internal/auth/zzgf;->c:Lcom/google/android/gms/internal/auth/zzgf;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/auth/zzgf;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgi;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/auth/zzgi;->f(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzev;->d()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzet;->f:Lcom/google/android/gms/internal/auth/zzev;

    .line 43
    .line 44
    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/auth/zzet;->f:Lcom/google/android/gms/internal/auth/zzev;

    .line 45
    .line 46
    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzet;->c:Lcom/google/android/gms/internal/auth/zzev;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzev;->h(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/auth/zzet;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzet;->f:Lcom/google/android/gms/internal/auth/zzev;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzev;->g()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzet;->f:Lcom/google/android/gms/internal/auth/zzev;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzet;->f:Lcom/google/android/gms/internal/auth/zzev;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-object v2, Lcom/google/android/gms/internal/auth/zzgf;->c:Lcom/google/android/gms/internal/auth/zzgf;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/auth/zzgf;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgi;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/auth/zzgi;->f(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzev;->d()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzet;->f:Lcom/google/android/gms/internal/auth/zzev;

    .line 43
    .line 44
    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/auth/zzet;->f:Lcom/google/android/gms/internal/auth/zzev;

    .line 45
    .line 46
    return-object v0
.end method
