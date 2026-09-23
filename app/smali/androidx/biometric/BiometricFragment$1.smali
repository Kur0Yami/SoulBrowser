.class Landroidx/biometric/BiometricFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Landroidx/biometric/BiometricPrompt$AuthenticationResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/biometric/BiometricFragment;


# direct methods
.method public constructor <init>(Landroidx/biometric/BiometricFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/biometric/BiometricFragment$1;->a:Landroidx/biometric/BiometricFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/biometric/BiometricFragment$1;->a:Landroidx/biometric/BiometricFragment;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricFragment;->m(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, v0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 11
    .line 12
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    :cond_0
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v0}, Landroidx/biometric/BiometricViewModel;->h(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method
