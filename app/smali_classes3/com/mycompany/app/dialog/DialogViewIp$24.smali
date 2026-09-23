.class Lcom/mycompany/app/dialog/DialogViewIp$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewIp;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewIp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp$24;->c:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp$24;->c:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->N0:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v2, Lcom/mycompany/app/pref/PrefZone;->u0:I

    .line 11
    .line 12
    if-eq v2, v1, :cond_1

    .line 13
    .line 14
    sput v1, Lcom/mycompany/app/pref/PrefZone;->u0:I

    .line 15
    .line 16
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->b0:Landroid/content/Context;

    .line 17
    .line 18
    const/16 v3, 0xf

    .line 19
    .line 20
    const-string v4, "mTailIp"

    .line 21
    .line 22
    invoke-static {v2, v3, v1, v4}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewIp;->P()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewIp;->H()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->q0:Lcom/mycompany/app/view/MyEditPure;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogViewIp;->N(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogViewIp;->O(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    const/4 v1, 0x0

    .line 45
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->B0:Z

    .line 46
    .line 47
    return-void
.end method
