.class public final Lcom/google/android/gms/internal/consent_sdk/zzap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzth;


# instance fields
.field public final a:Lcom/google/android/gms/internal/consent_sdk/zzti;

.field public final b:Lcom/google/android/gms/internal/consent_sdk/zztg;

.field public final c:Lcom/google/android/gms/internal/consent_sdk/zztg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zzti;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzap;->a:Lcom/google/android/gms/internal/consent_sdk/zzti;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzap;->b:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzap;->c:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/consent_sdk/zzao;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzap;->a:Lcom/google/android/gms/internal/consent_sdk/zzti;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzti;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/app/Application;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzap;->b:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zztg;->zzb()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/zzaq;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzap;->c:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zztg;->zzb()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzl;

    .line 22
    .line 23
    sget-object v3, Lcom/google/android/gms/internal/consent_sdk/zzcz;->b:Ljava/util/concurrent/Executor;

    .line 24
    .line 25
    invoke-static {v3}, Lcom/google/android/gms/internal/consent_sdk/zztj;->a(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v4, Lcom/google/android/gms/internal/consent_sdk/zzao;

    .line 29
    .line 30
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/consent_sdk/zzao;-><init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/zzaq;Lcom/google/android/gms/internal/consent_sdk/zzl;Ljava/util/concurrent/Executor;)V

    .line 31
    .line 32
    .line 33
    return-object v4
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzap;->a()Lcom/google/android/gms/internal/consent_sdk/zzao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
