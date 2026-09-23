.class final Lcom/google/android/gms/internal/consent_sdk/zzrh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzsb;


# static fields
.field public static final b:Lcom/google/android/gms/internal/consent_sdk/zzrf;


# instance fields
.field public final a:Lcom/google/android/gms/internal/consent_sdk/zzrg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzrf;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzrh;->b:Lcom/google/android/gms/internal/consent_sdk/zzrf;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzrg;

    .line 2
    .line 3
    sget v1, Lcom/google/android/gms/internal/consent_sdk/zzpc;->a:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [Lcom/google/android/gms/internal/consent_sdk/zzro;

    .line 7
    .line 8
    sget-object v2, Lcom/google/android/gms/internal/consent_sdk/zzqi;->a:Lcom/google/android/gms/internal/consent_sdk/zzqi;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 12
    .line 13
    sget-object v2, Lcom/google/android/gms/internal/consent_sdk/zzrh;->b:Lcom/google/android/gms/internal/consent_sdk/zzrf;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    aput-object v2, v1, v3

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzrg;-><init>([Lcom/google/android/gms/internal/consent_sdk/zzro;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzqs;->a:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzrh;->a:Lcom/google/android/gms/internal/consent_sdk/zzrg;

    .line 27
    .line 28
    return-void
.end method
