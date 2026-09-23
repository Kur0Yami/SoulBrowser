.class Lcom/mycompany/app/dialog/DialogUrlLink$37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/dialog/DialogUrlLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$37;->b:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogUrlLink$37;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$37;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$37;->b:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->G0:Lcom/mycompany/app/view/MyLinkView;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogUrlLink;->I(Z)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyLinkView;->setItems(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogUrlLink;->I(Z)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyLinkView;->setItems(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-boolean v0, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->p0:Z

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget v0, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->s0:I

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget v0, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->r0:I

    .line 42
    .line 43
    :goto_1
    iget v2, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->b1:I

    .line 44
    .line 45
    if-ne v2, v0, :cond_4

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_4
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 49
    .line 50
    if-nez v0, :cond_5

    .line 51
    .line 52
    :goto_2
    return-void

    .line 53
    :cond_5
    new-instance v1, Lcom/mycompany/app/dialog/DialogUrlLink$37$1;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$37$1;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink$37;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method
