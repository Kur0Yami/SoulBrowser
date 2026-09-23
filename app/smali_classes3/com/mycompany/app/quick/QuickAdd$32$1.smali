.class Lcom/mycompany/app/quick/QuickAdd$32$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickAdd$32;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickAdd$32;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdd$32$1;->c:Lcom/mycompany/app/quick/QuickAdd$32;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd$32$1;->c:Lcom/mycompany/app/quick/QuickAdd$32;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickAdd$32;->c:Lcom/mycompany/app/quick/QuickAdd;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->U2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickAdd;->V2:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickAdd;->U2:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickAdd;->V2:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, v0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-boolean v4, v0, Lcom/mycompany/app/quick/QuickAdd;->W2:Z

    .line 20
    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    sget v1, Lnet/kaki87/soul2/testing/R$string;->already_added:I

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickAdd;->L2:Z

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .line 41
    .line 42
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v4, "EXTRA_PATH"

    .line 46
    .line 47
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    const-string v1, "EXTRA_NAME"

    .line 51
    .line 52
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    const-string v1, "EXTRA_ICON"

    .line 56
    .line 57
    iget v2, v0, Lcom/mycompany/app/quick/QuickAdd;->Q2:I

    .line 58
    .line 59
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    const-string v1, "EXTRA_INDEX"

    .line 63
    .line 64
    iget v2, v0, Lcom/mycompany/app/quick/QuickAdd;->R2:I

    .line 65
    .line 66
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    const/4 v1, -0x1

    .line 70
    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 74
    .line 75
    .line 76
    return-void
.end method
