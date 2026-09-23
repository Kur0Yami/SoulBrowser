.class final synthetic Lcom/google/android/gms/internal/cast/zzgr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/cast/zzgt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzgt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzgr;->c:Lcom/google/android/gms/internal/cast/zzgt;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzgr;->c:Lcom/google/android/gms/internal/cast/zzgt;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzgt;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
