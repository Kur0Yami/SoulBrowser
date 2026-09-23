.class Lcom/mycompany/app/dialog/DialogNewsLocale$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsLocale;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$6;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$6;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->t0:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->y0:Lcom/mycompany/app/main/MainTransLocale;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 24
    .line 25
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/mycompany/app/data/DataTrans;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataTrans;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/mycompany/app/data/DataTrans;->b()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 44
    .line 45
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 46
    .line 47
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->D0:Z

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->D0:Z

    .line 58
    .line 59
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 60
    .line 61
    new-instance v0, Lcom/mycompany/app/dialog/DialogNewsLocale$6$1;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogNewsLocale$6$1;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale$6;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    :cond_5
    :goto_0
    return-void
.end method
