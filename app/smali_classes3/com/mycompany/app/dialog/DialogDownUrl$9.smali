.class Lcom/mycompany/app/dialog/DialogDownUrl$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$9;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$9;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->P1:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->Q1:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_2
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownSize;->dismiss()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->P1:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 25
    .line 26
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownSize;

    .line 27
    .line 28
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 29
    .line 30
    iget-object v3, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v4, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->U0:Ljava/lang/String;

    .line 33
    .line 34
    iget-wide v5, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->n1:J

    .line 35
    .line 36
    new-instance v7, Lcom/mycompany/app/dialog/DialogDownUrl$50;

    .line 37
    .line 38
    invoke-direct {v7, p1}, Lcom/mycompany/app/dialog/DialogDownUrl$50;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 39
    .line 40
    .line 41
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/dialog/DialogDownSize;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JLcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->P1:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 45
    .line 46
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownUrl$51;

    .line 47
    .line 48
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogDownUrl$51;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
