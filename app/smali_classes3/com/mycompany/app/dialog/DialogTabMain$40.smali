.class Lcom/mycompany/app/dialog/DialogTabMain$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$40;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$40;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 2
    .line 3
    iget v4, v0, Lcom/mycompany/app/dialog/DialogTabMain;->W0:I

    .line 4
    .line 5
    iget v5, v0, Lcom/mycompany/app/dialog/DialogTabMain;->X0:I

    .line 6
    .line 7
    iget v7, v0, Lcom/mycompany/app/dialog/DialogTabMain;->Y0:I

    .line 8
    .line 9
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogTabMain;->Z0:Ljava/util/List;

    .line 10
    .line 11
    iget-wide v9, v0, Lcom/mycompany/app/dialog/DialogTabMain;->a1:J

    .line 12
    .line 13
    iget v11, v0, Lcom/mycompany/app/dialog/DialogTabMain;->b1:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->Z0:Ljava/util/List;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->s0:Lcom/mycompany/app/quick/TabSubView;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v1, Lcom/mycompany/app/quick/TabSubView;

    .line 28
    .line 29
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 30
    .line 31
    invoke-direct {v1, v2}, Lcom/mycompany/app/quick/TabSubView;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->s0:Lcom/mycompany/app/quick/TabSubView;

    .line 35
    .line 36
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 37
    .line 38
    iget v6, v0, Lcom/mycompany/app/dialog/DialogTabMain;->h0:I

    .line 39
    .line 40
    iget-boolean v12, v0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 41
    .line 42
    new-instance v13, Lcom/mycompany/app/dialog/DialogTabMain$41;

    .line 43
    .line 44
    invoke-direct {v13, v0}, Lcom/mycompany/app/dialog/DialogTabMain$41;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual/range {v1 .. v13}, Lcom/mycompany/app/quick/TabSubView;->h(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/web/WebNestFrame;IIIILjava/util/List;JIZLcom/mycompany/app/quick/TabSubView$TabSubListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->s0:Lcom/mycompany/app/quick/TabSubView;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/mycompany/app/quick/TabSubView;->i()V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$42;

    .line 62
    .line 63
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMain$42;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_0
    return-void
.end method
