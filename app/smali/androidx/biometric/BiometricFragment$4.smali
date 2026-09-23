.class Landroidx/biometric/BiometricFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Boolean;",
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
    iput-object p1, p0, Landroidx/biometric/BiometricFragment$4;->a:Landroidx/biometric/BiometricFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/biometric/BiometricFragment$4;->a:Landroidx/biometric/BiometricFragment;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/biometric/BiometricFragment;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget v0, Landroidx/biometric/R$string;->fingerprint_not_recognized:I

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Landroidx/biometric/BiometricFragment;->o(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p1, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 27
    .line 28
    iget-boolean v1, v0, Landroidx/biometric/BiometricViewModel;->n:Z

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    const-string v0, "BiometricFragment"

    .line 33
    .line 34
    const-string v1, "Failure not sent to client. Client is not awaiting a result."

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget-object v0, v0, Landroidx/biometric/BiometricViewModel;->d:Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    new-instance v0, Landroidx/biometric/BiometricViewModel$DefaultExecutor;

    .line 46
    .line 47
    invoke-direct {v0}, Landroidx/biometric/BiometricViewModel$DefaultExecutor;-><init>()V

    .line 48
    .line 49
    .line 50
    :goto_0
    new-instance v1, Landroidx/biometric/BiometricFragment$11;

    .line 51
    .line 52
    invoke-direct {v1, p1}, Landroidx/biometric/BiometricFragment$11;-><init>(Landroidx/biometric/BiometricFragment;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    iget-object p1, p1, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 59
    .line 60
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 65
    .line 66
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    :cond_3
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 72
    .line 73
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-static {p1, v0}, Landroidx/biometric/BiometricViewModel;->h(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    return-void
.end method
