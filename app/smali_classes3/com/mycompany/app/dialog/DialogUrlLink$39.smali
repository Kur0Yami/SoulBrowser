.class Lcom/mycompany/app/dialog/DialogUrlLink$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$39;->b:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogUrlLink$39;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogUrlLink;->c1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$39;->b:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->S0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->S0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$39;->b:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->u0:Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;

    .line 4
    .line 5
    const/4 v7, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v7

    .line 9
    :cond_0
    const/4 v1, 0x4

    .line 10
    iget v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink$39;->a:I

    .line 11
    .line 12
    if-ne v2, v1, :cond_2

    .line 13
    .line 14
    if-ne p2, v7, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;->d()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v4, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->i0:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v5, 0x1

    .line 24
    move v3, p2

    .line 25
    invoke-interface/range {v0 .. v6}, Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;->c(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return v7

    .line 29
    :cond_1
    invoke-virtual {p1, v7}, Lcom/mycompany/app/dialog/DialogUrlLink;->G(Z)V

    .line 30
    .line 31
    .line 32
    return v7

    .line 33
    :cond_2
    move v3, p2

    .line 34
    const/4 p2, 0x6

    .line 35
    if-ne v2, p2, :cond_3

    .line 36
    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    iput-boolean v7, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->T0:Z

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogUrlLink;->Q()V

    .line 42
    .line 43
    .line 44
    return v7

    .line 45
    :cond_3
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 46
    .line 47
    iget-boolean v5, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->n0:Z

    .line 48
    .line 49
    iget-object v4, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->i0:Ljava/lang/String;

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    invoke-interface/range {v0 .. v6}, Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;->c(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v7
.end method
