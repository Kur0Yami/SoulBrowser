.class final synthetic Lcom/google/android/gms/internal/cast/zzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/Transformer;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/cast/zzf;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzf;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/zzf;->a:Lcom/google/android/gms/internal/cast/zzf;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/cast/zzwz;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/cast/zzyd;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzyd;->zzE()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    new-array v2, v1, [B

    .line 14
    .line 15
    sget-object v3, Lcom/google/android/gms/internal/cast/zzxp;->b:Ljava/util/logging/Logger;

    .line 16
    .line 17
    new-instance v3, Lcom/google/android/gms/internal/cast/zzxn;

    .line 18
    .line 19
    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/cast/zzxn;-><init>([BI)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/cast/zzyd;->f(Lcom/google/android/gms/internal/cast/zzxp;)V

    .line 23
    .line 24
    .line 25
    iget v0, v3, Lcom/google/android/gms/internal/cast/zzxn;->f:I

    .line 26
    .line 27
    sub-int/2addr v1, v0

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v1, "Did not write as much data as expected."

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x48

    .line 57
    .line 58
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 59
    .line 60
    .line 61
    const-string v2, "Serializing "

    .line 62
    .line 63
    const-string v4, " to a byte array threw an IOException (should never happen)."

    .line 64
    .line 65
    invoke-static {v3, v2, p1, v4}, Landroid/support/v4/media/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw v1
.end method
