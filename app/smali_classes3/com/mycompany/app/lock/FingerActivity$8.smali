.class Lcom/mycompany/app/lock/FingerActivity$8;
.super Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/lock/FingerActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/FingerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/FingerActivity$8;->a:Lcom/mycompany/app/lock/FingerActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/CharSequence;)V
    .locals 2

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/lock/FingerActivity$8;->a:Lcom/mycompany/app/lock/FingerActivity;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    invoke-static {v1}, Lcom/mycompany/app/lock/FingerActivity;->u0(Lcom/mycompany/app/lock/FingerActivity;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, v1, Lcom/mycompany/app/lock/FingerActivity;->r1:Z

    .line 13
    .line 14
    iget-object p1, v1, Lcom/mycompany/app/lock/FingerActivity;->u1:Landroidx/biometric/BiometricPrompt;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    invoke-static {v1, p2}, Lcom/mycompany/app/main/MainUtil;->f8(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    sget p1, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 30
    .line 31
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-boolean p1, v1, Lcom/mycompany/app/lock/FingerActivity;->q1:Z

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/mycompany/app/lock/FingerActivity;->y0()V

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/lock/FingerActivity$8;->a:Lcom/mycompany/app/lock/FingerActivity;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/lock/FingerActivity;->r1:Z

    .line 5
    .line 6
    iget-boolean v0, v1, Lcom/mycompany/app/lock/FingerActivity;->q1:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/mycompany/app/lock/FingerActivity;->y0()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/FingerActivity$8;->a:Lcom/mycompany/app/lock/FingerActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/lock/FingerActivity;->g1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/mycompany/app/lock/FingerActivity;->r1:Z

    .line 10
    .line 11
    iput-boolean v1, v0, Lcom/mycompany/app/lock/FingerActivity;->s1:Z

    .line 12
    .line 13
    iget v1, v0, Lcom/mycompany/app/lock/FingerActivity;->l1:I

    .line 14
    .line 15
    const/4 v2, 0x4

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/lock/FingerActivity;->w0()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/lock/FingerActivity;->m1:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->o4(Landroid/content/Context;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "EXTRA_PATH"

    .line 39
    .line 40
    iget-object v3, v0, Lcom/mycompany/app/lock/FingerActivity;->m1:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    const/4 v1, -0x1

    .line 50
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 54
    .line 55
    .line 56
    return-void
.end method
