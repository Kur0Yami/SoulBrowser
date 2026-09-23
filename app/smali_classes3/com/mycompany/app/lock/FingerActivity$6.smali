.class Lcom/mycompany/app/lock/FingerActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/FingerActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/FingerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/FingerActivity$6;->c:Lcom/mycompany/app/lock/FingerActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/lock/FingerActivity$6;->c:Lcom/mycompany/app/lock/FingerActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/lock/FingerActivity;->u1:Landroidx/biometric/BiometricPrompt;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v2, p1, Lcom/mycompany/app/lock/FingerActivity;->v1:Landroidx/biometric/BiometricPrompt$PromptInfo;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0, v2}, Landroidx/biometric/BiometricPrompt;->a(Landroidx/biometric/BiometricPrompt$PromptInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    iget-object p1, p1, Lcom/mycompany/app/lock/FingerActivity;->f1:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->e(Landroid/content/Context;Z)Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p1, p1, Lcom/mycompany/app/lock/FingerActivity;->f1:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->e(Landroid/content/Context;Z)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method
