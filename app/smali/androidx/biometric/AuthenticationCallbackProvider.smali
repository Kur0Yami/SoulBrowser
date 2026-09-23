.class Landroidx/biometric/AuthenticationCallbackProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl;,
        Landroidx/biometric/AuthenticationCallbackProvider$Api30Impl;,
        Landroidx/biometric/AuthenticationCallbackProvider$Listener;
    }
.end annotation


# instance fields
.field public a:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field public b:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

.field public final c:Landroidx/biometric/BiometricViewModel$CallbackListener;


# direct methods
.method public constructor <init>(Landroidx/biometric/BiometricViewModel$CallbackListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/biometric/AuthenticationCallbackProvider;->c:Landroidx/biometric/BiometricViewModel$CallbackListener;

    .line 5
    .line 6
    return-void
.end method
