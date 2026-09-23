.class final Landroidx/biometric/BiometricViewModel$CallbackListener;
.super Landroidx/biometric/AuthenticationCallbackProvider$Listener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallbackListener"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/biometric/BiometricViewModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/biometric/BiometricViewModel$CallbackListener;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel$CallbackListener;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/biometric/BiometricViewModel;

    .line 14
    .line 15
    iget-boolean v1, v1, Landroidx/biometric/BiometricViewModel;->o:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/biometric/BiometricViewModel;

    .line 24
    .line 25
    iget-boolean v1, v1, Landroidx/biometric/BiometricViewModel;->n:Z

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroidx/biometric/BiometricViewModel;

    .line 34
    .line 35
    new-instance v1, Landroidx/biometric/BiometricErrorData;

    .line 36
    .line 37
    invoke-direct {v1, p1, p2}, Landroidx/biometric/BiometricErrorData;-><init>(ILjava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->d(Landroidx/biometric/BiometricErrorData;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel$CallbackListener;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/biometric/BiometricViewModel;

    .line 14
    .line 15
    iget-boolean v1, v1, Landroidx/biometric/BiometricViewModel;->n:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/biometric/BiometricViewModel;

    .line 24
    .line 25
    iget-object v1, v0, Landroidx/biometric/BiometricViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    invoke-direct {v1}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Landroidx/biometric/BiometricViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    :cond_0
    iget-object v0, v0, Landroidx/biometric/BiometricViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-static {v0, v1}, Landroidx/biometric/BiometricViewModel;->h(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final c(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel$CallbackListener;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/biometric/BiometricViewModel;

    .line 14
    .line 15
    iget-boolean v1, v1, Landroidx/biometric/BiometricViewModel;->n:Z

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    iget v1, p1, Landroidx/biometric/BiometricPrompt$AuthenticationResult;->b:I

    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    new-instance v1, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    .line 25
    .line 26
    iget-object p1, p1, Landroidx/biometric/BiometricPrompt$AuthenticationResult;->a:Landroidx/biometric/BiometricPrompt$CryptoObject;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroidx/biometric/BiometricViewModel;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroidx/biometric/BiometricViewModel;->c()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    and-int/lit16 v4, v3, 0x7fff

    .line 39
    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-static {v3}, Landroidx/biometric/AuthenticatorUtils;->a(I)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    :cond_0
    invoke-direct {v1, p1, v2}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;-><init>(Landroidx/biometric/BiometricPrompt$CryptoObject;I)V

    .line 50
    .line 51
    .line 52
    move-object p1, v1

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroidx/biometric/BiometricViewModel;

    .line 58
    .line 59
    iget-object v1, v0, Landroidx/biometric/BiometricViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 60
    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    invoke-direct {v1}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v1, v0, Landroidx/biometric/BiometricViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 69
    .line 70
    :cond_2
    iget-object v0, v0, Landroidx/biometric/BiometricViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 71
    .line 72
    invoke-static {v0, p1}, Landroidx/biometric/BiometricViewModel;->h(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    return-void
.end method
