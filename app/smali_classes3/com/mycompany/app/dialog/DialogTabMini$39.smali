.class Lcom/mycompany/app/dialog/DialogTabMini$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabMini;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$39;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$39;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 2
    .line 3
    iget v4, v0, Lcom/mycompany/app/dialog/DialogTabMini;->s1:I

    .line 4
    .line 5
    iget v5, v0, Lcom/mycompany/app/dialog/DialogTabMini;->t1:I

    .line 6
    .line 7
    iget v7, v0, Lcom/mycompany/app/dialog/DialogTabMini;->u1:I

    .line 8
    .line 9
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogTabMini;->v1:Ljava/util/List;

    .line 10
    .line 11
    iget-wide v9, v0, Lcom/mycompany/app/dialog/DialogTabMini;->w1:J

    .line 12
    .line 13
    iget v11, v0, Lcom/mycompany/app/dialog/DialogTabMini;->x1:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->v1:Ljava/util/List;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->N0:Lcom/mycompany/app/quick/TabSubView;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lcom/mycompany/app/quick/TabSubView;

    .line 24
    .line 25
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 26
    .line 27
    invoke-direct {v1, v2}, Lcom/mycompany/app/quick/TabSubView;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->N0:Lcom/mycompany/app/quick/TabSubView;

    .line 31
    .line 32
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/mycompany/app/quick/TabSubView;->setFilterColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->N0:Lcom/mycompany/app/quick/TabSubView;

    .line 40
    .line 41
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 42
    .line 43
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMini;->d0:Lcom/mycompany/app/web/WebNestFrame;

    .line 44
    .line 45
    iget v6, v0, Lcom/mycompany/app/dialog/DialogTabMini;->C0:I

    .line 46
    .line 47
    iget-boolean v12, v0, Lcom/mycompany/app/dialog/DialogTabMini;->h0:Z

    .line 48
    .line 49
    new-instance v13, Lcom/mycompany/app/dialog/DialogTabMini$40;

    .line 50
    .line 51
    invoke-direct {v13, v0}, Lcom/mycompany/app/dialog/DialogTabMini$40;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {v1 .. v13}, Lcom/mycompany/app/quick/TabSubView;->h(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/web/WebNestFrame;IIIILjava/util/List;JIZLcom/mycompany/app/quick/TabSubView$TabSubListener;)V

    .line 55
    .line 56
    .line 57
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->f0:Z

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->N0:Lcom/mycompany/app/quick/TabSubView;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/mycompany/app/quick/TabSubView;->i()V

    .line 68
    .line 69
    .line 70
    new-instance v1, Landroid/widget/PopupWindow;

    .line 71
    .line 72
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini;->N0:Lcom/mycompany/app/quick/TabSubView;

    .line 73
    .line 74
    const/4 v3, -0x1

    .line 75
    invoke-direct {v1, v2, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 76
    .line 77
    .line 78
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->O0:Landroid/widget/PopupWindow;

    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 81
    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    :goto_0
    return-void

    .line 85
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMini$41;

    .line 86
    .line 87
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMini$41;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    .line 92
    .line 93
    return-void
.end method
