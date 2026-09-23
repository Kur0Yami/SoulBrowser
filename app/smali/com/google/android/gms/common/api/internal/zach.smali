.class public final Lcom/google/android/gms/common/api/internal/zach;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zaa:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/base/zan;->b:Lcom/google/android/gms/internal/base/zal;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;

    .line 4
    .line 5
    const-string v2, "GAC_Transform"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/base/zal;->a(Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/android/gms/common/api/internal/zach;->zaa:Ljava/util/concurrent/ExecutorService;

    .line 15
    .line 16
    return-void
.end method

.method public static zaa()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/zach;->zaa:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
