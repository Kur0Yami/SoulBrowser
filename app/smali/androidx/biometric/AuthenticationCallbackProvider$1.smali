.class Landroidx/biometric/AuthenticationCallbackProvider$1;
.super Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/biometric/AuthenticationCallbackProvider;


# direct methods
.method public constructor <init>(Landroidx/biometric/AuthenticationCallbackProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/biometric/AuthenticationCallbackProvider$1;->a:Landroidx/biometric/AuthenticationCallbackProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider$1;->a:Landroidx/biometric/AuthenticationCallbackProvider;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/biometric/AuthenticationCallbackProvider;->c:Landroidx/biometric/BiometricViewModel$CallbackListener;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/biometric/BiometricViewModel$CallbackListener;->a(ILjava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider$1;->a:Landroidx/biometric/AuthenticationCallbackProvider;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/biometric/AuthenticationCallbackProvider;->c:Landroidx/biometric/BiometricViewModel$CallbackListener;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel$CallbackListener;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider$1;->a:Landroidx/biometric/AuthenticationCallbackProvider;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/biometric/AuthenticationCallbackProvider;->c:Landroidx/biometric/BiometricViewModel$CallbackListener;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/biometric/BiometricViewModel$CallbackListener;->a:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/biometric/BiometricViewModel;

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/biometric/BiometricViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-direct {v1}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Landroidx/biometric/BiometricViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    :cond_0
    iget-object v0, v0, Landroidx/biometric/BiometricViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    invoke-static {v0, p1}, Landroidx/biometric/BiometricViewModel;->h(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final d(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 2

    .line 1
    iget-object p1, p1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;->a:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->b:Ljavax/crypto/Cipher;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    new-instance v0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->a:Ljava/security/Signature;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    new-instance v0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object p1, p1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->c:Ljavax/crypto/Mac;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    new-instance v0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    .line 34
    .line 35
    .line 36
    :cond_3
    :goto_0
    new-instance p1, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-direct {p1, v0, v1}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;-><init>(Landroidx/biometric/BiometricPrompt$CryptoObject;I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider$1;->a:Landroidx/biometric/AuthenticationCallbackProvider;

    .line 43
    .line 44
    iget-object v0, v0, Landroidx/biometric/AuthenticationCallbackProvider;->c:Landroidx/biometric/BiometricViewModel$CallbackListener;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricViewModel$CallbackListener;->c(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
