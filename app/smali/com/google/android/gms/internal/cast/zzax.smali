.class public final Lcom/google/android/gms/internal/cast/zzax;
.super Lcom/google/android/gms/cast/framework/zzab;
.source "SourceFile"


# static fields
.field public static final g:Lcom/google/android/gms/cast/internal/Logger;

.field public static final h:I


# instance fields
.field public final c:Ljava/util/Set;

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "AppVisibilityProxy"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/zzax;->g:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    sput v0, Lcom/google/android/gms/internal/cast/zzax;->h:I

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.cast.framework.IAppVisibilityListener"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzb;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzax;->c:Ljava/util/Set;

    .line 16
    .line 17
    sget v0, Lcom/google/android/gms/internal/cast/zzax;->h:I

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzax;->f:I

    .line 20
    .line 21
    return-void
.end method
