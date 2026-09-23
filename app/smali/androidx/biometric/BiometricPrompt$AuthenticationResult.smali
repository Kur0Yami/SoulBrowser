.class public Landroidx/biometric/BiometricPrompt$AuthenticationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field public final a:Landroidx/biometric/BiometricPrompt$CryptoObject;

.field public final b:I


# direct methods
.method public constructor <init>(Landroidx/biometric/BiometricPrompt$CryptoObject;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$AuthenticationResult;->a:Landroidx/biometric/BiometricPrompt$CryptoObject;

    .line 5
    .line 6
    iput p2, p0, Landroidx/biometric/BiometricPrompt$AuthenticationResult;->b:I

    .line 7
    .line 8
    return-void
.end method
