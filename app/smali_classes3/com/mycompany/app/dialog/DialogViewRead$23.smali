.class Lcom/mycompany/app/dialog/DialogViewRead$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$23;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$23;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->d0:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 8
    .line 9
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->G0()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->x:Lcom/mycompany/app/view/MyRoundItem;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->S:Lcom/mycompany/app/view/MyCoverView;

    .line 26
    .line 27
    if-eqz v0, :cond_7

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->h()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->S0:Z

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    if-eqz v0, :cond_7

    .line 41
    .line 42
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->g0:Lcom/mycompany/app/web/WebReadTask;

    .line 43
    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->C0()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->g0:Lcom/mycompany/app/web/WebReadTask;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebReadTask;->w()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_4
    if-nez v0, :cond_7

    .line 57
    .line 58
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->j:Lcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;

    .line 59
    .line 60
    if-nez v0, :cond_5

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;->a()Lcom/mycompany/app/web/WebNestView;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez v0, :cond_6

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_6
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->C0()V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$53;

    .line 74
    .line 75
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogViewRead$53;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 76
    .line 77
    .line 78
    const-string p1, "document.documentElement.lang"

    .line 79
    .line 80
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/web/WebNestView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 81
    .line 82
    .line 83
    :cond_7
    :goto_0
    return-void
.end method
