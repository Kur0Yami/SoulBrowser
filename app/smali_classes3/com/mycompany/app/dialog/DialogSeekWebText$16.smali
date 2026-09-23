.class Lcom/mycompany/app/dialog/DialogSeekWebText$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekWebText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText$16;->c:Lcom/mycompany/app/dialog/DialogSeekWebText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText$16;->c:Lcom/mycompany/app/dialog/DialogSeekWebText;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->F0:Lcom/mycompany/app/wview/WebFltView;

    .line 4
    .line 5
    if-nez v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->E0:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    new-instance v1, Lcom/mycompany/app/wview/WebFltView;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/wview/WebFltView;-><init>(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->F0:Lcom/mycompany/app/wview/WebFltView;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setPreview(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->F0:Lcom/mycompany/app/wview/WebFltView;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/mycompany/app/wview/WebFltView;->q()V

    .line 29
    .line 30
    .line 31
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtri;->p0:Z

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->F0:Lcom/mycompany/app/wview/WebFltView;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setNoti(Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->G0:Z

    .line 41
    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->F0:Lcom/mycompany/app/wview/WebFltView;

    .line 45
    .line 46
    const/16 v2, 0x8

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->F0:Lcom/mycompany/app/wview/WebFltView;

    .line 52
    .line 53
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWebText$18;

    .line 54
    .line 55
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWebText$18;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setFltListener(Lcom/mycompany/app/wview/WebFltView$FltViewListener;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->F0:Lcom/mycompany/app/wview/WebFltView;

    .line 62
    .line 63
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWebText$19;

    .line 64
    .line 65
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWebText$19;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setTouchListener(Lcom/mycompany/app/wview/WebFltView$FltTouchListener;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->E0:Landroid/widget/FrameLayout;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->F0:Lcom/mycompany/app/wview/WebFltView;

    .line 74
    .line 75
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 76
    .line 77
    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    :catch_0
    :cond_3
    :goto_0
    return-void
.end method
