.class public final Lcom/google/android/gms/internal/fido/zzhc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "US-ASCII"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    const-string v0, "UTF-8"

    .line 7
    .line 8
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 9
    .line 10
    .line 11
    const-string v0, "ISO-8859-1"

    .line 12
    .line 13
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    new-array v1, v0, [B

    .line 18
    .line 19
    sput-object v1, Lcom/google/android/gms/internal/fido/zzhc;->a:[B

    .line 20
    .line 21
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/google/android/gms/internal/fido/zzgz;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    :try_start_0
    iget v2, v1, Lcom/google/android/gms/internal/fido/zzgz;->a:I

    .line 30
    .line 31
    if-lez v2, :cond_0

    .line 32
    .line 33
    iput v2, v1, Lcom/google/android/gms/internal/fido/zzgz;->a:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iput v0, v1, Lcom/google/android/gms/internal/fido/zzgz;->a:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/fido/zzhd; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v1
.end method
