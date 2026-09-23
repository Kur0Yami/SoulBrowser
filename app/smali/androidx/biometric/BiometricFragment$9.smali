.class Landroidx/biometric/BiometricFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroidx/biometric/BiometricFragment;


# direct methods
.method public constructor <init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/biometric/BiometricFragment$9;->c:Landroidx/biometric/BiometricFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment$9;->c:Landroidx/biometric/BiometricFragment;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/biometric/BiometricViewModel;->e:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroidx/biometric/BiometricViewModel$1;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Landroidx/biometric/BiometricViewModel;->e:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    .line 15
    .line 16
    :cond_0
    iget-object v0, v0, Landroidx/biometric/BiometricViewModel;->e:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->c()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
