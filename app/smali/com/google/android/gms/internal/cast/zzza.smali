.class final Lcom/google/android/gms/internal/cast/zzza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzzt;


# static fields
.field public static final b:Lcom/google/android/gms/internal/cast/zzyy;


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/zzyz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzyy;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/zzza;->b:Lcom/google/android/gms/internal/cast/zzyy;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzyz;

    .line 2
    .line 3
    sget v1, Lcom/google/android/gms/internal/cast/zzxb;->a:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [Lcom/google/android/gms/internal/cast/zzzg;

    .line 7
    .line 8
    sget-object v2, Lcom/google/android/gms/internal/cast/zzxz;->a:Lcom/google/android/gms/internal/cast/zzxz;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 12
    .line 13
    sget-object v2, Lcom/google/android/gms/internal/cast/zzza;->b:Lcom/google/android/gms/internal/cast/zzyy;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    aput-object v2, v1, v3

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzyz;-><init>([Lcom/google/android/gms/internal/cast/zzzg;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/google/android/gms/internal/cast/zzym;->a:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzza;->a:Lcom/google/android/gms/internal/cast/zzyz;

    .line 27
    .line 28
    return-void
.end method
