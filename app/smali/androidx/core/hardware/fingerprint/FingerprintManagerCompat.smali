.class public Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$Api23Impl;,
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;,
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;,
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 4
    .line 5
    const/16 v2, 0x17

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    if-le v0, v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "android.hardware.fingerprint"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;Landroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroidx/core/os/CancellationSignal;->b()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Landroid/os/CancellationSignal;

    .line 9
    .line 10
    move-object v3, p2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v3, v0

    .line 13
    :goto_0
    iget-object p2, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {p2}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->b(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_5

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object p2, p1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->c:Ljavax/crypto/Mac;

    .line 25
    .line 26
    iget-object v2, p1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->a:Ljava/security/Signature;

    .line 27
    .line 28
    iget-object p1, p1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->b:Ljavax/crypto/Cipher;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_1
    move-object v2, v0

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    if-eqz v2, :cond_4

    .line 40
    .line 41
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 42
    .line 43
    invoke-direct {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljava/security/Signature;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    if-eqz p2, :cond_2

    .line 48
    .line 49
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 50
    .line 51
    invoke-direct {v0, p2}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :goto_2
    new-instance v5, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;

    .line 56
    .line 57
    invoke-direct {v5, p3}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;-><init>(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V

    .line 58
    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 63
    .line 64
    .line 65
    :cond_5
    return-void
.end method
