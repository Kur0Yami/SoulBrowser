.class public Landroidx/biometric/BiometricManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricManager$Api29Impl;,
        Landroidx/biometric/BiometricManager$Api30Impl;,
        Landroidx/biometric/BiometricManager$DefaultInjector;,
        Landroidx/biometric/BiometricManager$Injector;,
        Landroidx/biometric/BiometricManager$Authenticators;
    }
.end annotation


# instance fields
.field public final a:Landroidx/biometric/BiometricManager$DefaultInjector;

.field public final b:Landroid/hardware/biometrics/BiometricManager;

.field public final c:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;


# direct methods
.method public constructor <init>(Landroidx/biometric/BiometricManager$DefaultInjector;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/biometric/BiometricManager$DefaultInjector;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/biometric/BiometricManager;->a:Landroidx/biometric/BiometricManager$DefaultInjector;

    .line 7
    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/16 v2, 0x1d

    .line 12
    .line 13
    if-lt p1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/biometric/BiometricManager$Api29Impl;->b(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricManager;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v3, v1

    .line 21
    :goto_0
    iput-object v3, p0, Landroidx/biometric/BiometricManager;->b:Landroid/hardware/biometrics/BiometricManager;

    .line 22
    .line 23
    if-gt p1, v2, :cond_1

    .line 24
    .line 25
    new-instance v1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iput-object v1, p0, Landroidx/biometric/BiometricManager;->c:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    .line 31
    .line 32
    return-void
.end method

.method public static c(Landroid/content/Context;)Landroidx/biometric/BiometricManager;
    .locals 2

    .line 1
    new-instance v0, Landroidx/biometric/BiometricManager;

    .line 2
    .line 3
    new-instance v1, Landroidx/biometric/BiometricManager$DefaultInjector;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/biometric/BiometricManager$DefaultInjector;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/biometric/BiometricManager;-><init>(Landroidx/biometric/BiometricManager$DefaultInjector;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "Failure in canAuthenticate(). BiometricManager was null."

    .line 7
    .line 8
    const/16 v4, 0xff

    .line 9
    .line 10
    const-string v5, "BiometricManager"

    .line 11
    .line 12
    if-lt v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/biometric/BiometricManager;->b:Landroid/hardware/biometrics/BiometricManager;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    invoke-static {v0, v4}, Landroidx/biometric/BiometricManager$Api30Impl;->a(Landroid/hardware/biometrics/BiometricManager;I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1
    iget-object v1, p0, Landroidx/biometric/BiometricManager;->a:Landroidx/biometric/BiometricManager$DefaultInjector;

    .line 28
    .line 29
    iget-object v6, v1, Landroidx/biometric/BiometricManager$DefaultInjector;->a:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v4}, Landroidx/biometric/AuthenticatorUtils;->b(I)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-nez v7, :cond_2

    .line 36
    .line 37
    const/4 v0, -0x2

    .line 38
    return v0

    .line 39
    :cond_2
    invoke-static {v6}, Landroidx/biometric/KeyguardUtils$Api23Impl;->a(Landroid/content/Context;)Landroid/app/KeyguardManager;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const/16 v8, 0xc

    .line 44
    .line 45
    if-eqz v7, :cond_b

    .line 46
    .line 47
    invoke-static {v4}, Landroidx/biometric/AuthenticatorUtils;->a(I)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/4 v7, 0x0

    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/biometric/BiometricManager$DefaultInjector;->a()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    return v7

    .line 61
    :cond_3
    const/16 v0, 0xb

    .line 62
    .line 63
    return v0

    .line 64
    :cond_4
    const/16 v4, 0x1d

    .line 65
    .line 66
    if-ne v0, v4, :cond_6

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/biometric/BiometricManager;->b:Landroid/hardware/biometrics/BiometricManager;

    .line 69
    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return v2

    .line 76
    :cond_5
    invoke-static {v0}, Landroidx/biometric/BiometricManager$Api29Impl;->a(Landroid/hardware/biometrics/BiometricManager;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    return v0

    .line 81
    :cond_6
    const/16 v2, 0x1c

    .line 82
    .line 83
    if-ne v0, v2, :cond_a

    .line 84
    .line 85
    if-eqz v6, :cond_9

    .line 86
    .line 87
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_9

    .line 92
    .line 93
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Landroidx/biometric/PackageUtils$Api23Impl;->a(Landroid/content/pm/PackageManager;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_9

    .line 102
    .line 103
    invoke-virtual {v1}, Landroidx/biometric/BiometricManager$DefaultInjector;->a()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_7

    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/biometric/BiometricManager;->b()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    return v0

    .line 114
    :cond_7
    invoke-virtual {p0}, Landroidx/biometric/BiometricManager;->b()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_8

    .line 119
    .line 120
    return v7

    .line 121
    :cond_8
    const/4 v0, -0x1

    .line 122
    return v0

    .line 123
    :cond_9
    return v8

    .line 124
    :cond_a
    invoke-virtual {p0}, Landroidx/biometric/BiometricManager;->b()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    return v0

    .line 129
    :cond_b
    return v8
.end method

.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricManager;->c:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "BiometricManager"

    .line 6
    .line 7
    const-string v1, "Failure in canAuthenticate(). FingerprintManager was null."

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->a:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->b(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-static {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->b(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    return v0

    .line 42
    :cond_1
    const/16 v0, 0xb

    .line 43
    .line 44
    return v0

    .line 45
    :cond_2
    const/16 v0, 0xc

    .line 46
    .line 47
    return v0
.end method
