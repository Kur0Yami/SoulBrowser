.class Landroidx/biometric/BiometricFragment$6;
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
    iput-object p1, p0, Landroidx/biometric/BiometricFragment$6;->a:Landroidx/biometric/BiometricFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

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
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iget-object v0, p0, Landroidx/biometric/BiometricFragment$6;->a:Landroidx/biometric/BiometricFragment;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricFragment;->f(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    .line 16
    .line 17
    .line 18
    iget-object p1, v0, Landroidx/biometric/BiometricFragment;->f:Landroidx/biometric/BiometricViewModel;

    .line 19
    .line 20
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 25
    .line 26
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    :cond_0
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-static {p1, v0}, Landroidx/biometric/BiometricViewModel;->h(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method
