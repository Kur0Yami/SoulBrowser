.class public final Lcom/google/android/gms/internal/drive/zzif;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/internal/drive/zzig;

.field public static final b:Lcom/google/android/gms/internal/drive/zzih;

.field public static final c:Lcom/google/android/gms/internal/drive/zzij;

.field public static final d:Lcom/google/android/gms/internal/drive/zzii;

.field public static final e:Lcom/google/android/gms/internal/drive/zzil;

.field public static final f:Lcom/google/android/gms/internal/drive/zzik;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzig;

    .line 2
    .line 3
    const-string v1, "created"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/drive/zzif;->a:Lcom/google/android/gms/internal/drive/zzig;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/drive/zzih;

    .line 11
    .line 12
    const-string v1, "lastOpenedTime"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/gms/internal/drive/zzif;->b:Lcom/google/android/gms/internal/drive/zzih;

    .line 18
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/drive/zzij;

    .line 20
    .line 21
    const-string v1, "modified"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/google/android/gms/internal/drive/zzif;->c:Lcom/google/android/gms/internal/drive/zzij;

    .line 27
    .line 28
    new-instance v0, Lcom/google/android/gms/internal/drive/zzii;

    .line 29
    .line 30
    const-string v1, "modifiedByMe"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/google/android/gms/internal/drive/zzif;->d:Lcom/google/android/gms/internal/drive/zzii;

    .line 36
    .line 37
    new-instance v0, Lcom/google/android/gms/internal/drive/zzil;

    .line 38
    .line 39
    const-string v1, "sharedWithMe"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/google/android/gms/internal/drive/zzif;->e:Lcom/google/android/gms/internal/drive/zzil;

    .line 45
    .line 46
    new-instance v0, Lcom/google/android/gms/internal/drive/zzik;

    .line 47
    .line 48
    const-string v1, "recency"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/google/android/gms/internal/drive/zzif;->f:Lcom/google/android/gms/internal/drive/zzik;

    .line 54
    .line 55
    return-void
.end method
